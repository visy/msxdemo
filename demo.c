#include "conio.h"
#include "dos.h"
#include "types.h"
#include "mem.h"
#include "heap.h"
#include "vdp.h"
#include "interrupt.h"
#include "msxlib.h"
#include "ArkosTrackerPlayer_MSX.h"

#define VRAM_0 1
#define VRAM_1 0

extern void bitbuster(unsigned char*, uint16_t, unsigned char);
extern void play_sample(unsigned char*, uint16_t);

const unsigned short sintabx[256] = {
 120, 122, 125, 128, 131, 134, 137, 140, 143, 146, 149, 152, 154, 157, 160, 163,
 165, 168, 171, 173, 176, 179, 181, 184, 186, 189, 191, 193, 196, 198, 200, 202,
 204, 206, 208, 210, 212, 214, 216, 218, 219, 221, 222, 224, 225, 227, 228, 229,
 230, 231, 232, 233, 234, 235, 236, 237, 237, 238, 238, 239, 239, 239, 239, 239,
 240, 239, 239, 239, 239, 239, 238, 238, 237, 237, 236, 235, 234, 233, 232, 231,
 230, 229, 228, 227, 225, 224, 222, 221, 219, 218, 216, 214, 212, 210, 208, 206,
 204, 202, 200, 198, 196, 193, 191, 189, 186, 184, 181, 179, 176, 173, 171, 168,
 165, 163, 160, 157, 154, 152, 149, 146, 143, 140, 137, 134, 131, 128, 125, 122,
 120, 117, 114, 111, 108, 105, 102,  99,  96,  93,  90,  87,  85,  82,  79,  76,
  74,  71,  68,  66,  63,  60,  58,  55,  53,  50,  48,  46,  43,  41,  39,  37,
  35,  33,  31,  29,  27,  25,  23,  21,  20,  18,  17,  15,  14,  12,  11,  10,
   9,   8,   7,   6,   5,   4,   3,   2,   2,   1,   1,   0,   0,   0,   0,   0,
   0,   0,   0,   0,   0,   0,   1,   1,   2,   2,   3,   4,   5,   6,   7,   8,
   9,  10,  11,  12,  14,  15,  17,  18,  20,  21,  23,  25,  27,  29,  31,  33,
  35,  37,  39,  41,  43,  46,  48,  50,  53,  55,  58,  60,  63,  66,  68,  71,
  74,  76,  79,  82,  85,  87,  90,  93,  96,  99, 102, 105, 108, 111, 114, 117
};

uint8_t packbuffer[16000] = {0};

uint8_t scratch[128];
uint8_t cur_palette[32];
uint8_t block_palette[32];

volatile int vbicount=0;
volatile int tick=0;


int isNthBitSet (unsigned char c, int n) {
    static unsigned char mask[] = {1, 2, 4, 8, 16, 32, 64, 128};
    return ((c & mask[n]) != 0);
}

// irq ---------------------------------------------------------------------------------------------------------------------------
// irq ---------------------------------------------------------------------------------------------------------------------------
// irq ---------------------------------------------------------------------------------------------------------------------------

void my_isr(void) interrupt
{
        DI;

        READ_VDP_STATUS;

        PLY_Play();
        PLY_SendRegisters();

        vbicount+=2;
        tick++;

        EI;
}

void color_isr(void) interrupt
{
        DI;

		if(isNthBitSet(vdp2_status(1),0)) {
	        vdp_register(VDP_VOFFSET,sintab[vbicount & 255]);
	        READ_VDP_STATUS;
//	        msx2_palette(0,4,5,6);
		} else {
	        READ_VDP_STATUS;
	        vbicount++;
//	        msx2_palette(0,0,0,0);

	        PLY_Play();
	        PLY_SendRegisters();
		}

        EI;
}

// helpers ---------------------------------------------------------------------------------------------------------------------------
// helpers ---------------------------------------------------------------------------------------------------------------------------
// helpers ---------------------------------------------------------------------------------------------------------------------------

uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
	fcb f;
	uint8_t i;

	memset((uint8_t *) &f, 0, sizeof(fcb));

	f.record_size = 128;
	f.drive = 0;

	memcpy(f.name, file_name, 11);

	if (open(&f) != 0) return 0;
	vdp_set_write_address(vramh, vraml);

	for (i = 0; i < 213; i++) {
		if (block_set_data_ptr(scratch) != 0) return 0;
		if (block_read(&f) != 0) return 0;
		
		if (i == 0) vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
		else vdp_load_screen(scratch, 128);
	}

	close(&f);

	return 1;
}

void scratch_clear() {
	memset((uint8_t *) &scratch, 0, 128);
}

uint8_t pal_load(char *file_name, uint8_t ss) {
	fcb f;

	memset((uint8_t *) &f, 0, sizeof(fcb));
	scratch_clear();

	f.record_size = ss;
	f.drive = 0;

	memcpy(f.name, file_name, 11);

	if (open(&f) != 0) return 0;
	if (block_set_data_ptr(scratch) != 0) return 0;
	if (block_read(&f) != 0) return 0;

	memcpy(cur_palette, scratch+7, ss);

	close(&f);
	return 1;
}


void pause() {
	uint8_t i,j,k = 0;
	for (i = 0; i < 255; i++) {	
		for (j = 0; j < 255; j++) {
			k++;
		}
	}
}


uint8_t raw_load(char *file_name, int size, char* buffer) {
	fcb f;
	int total = 0;
	int incr = 128;

	memset((uint8_t *) &f, 0, sizeof(fcb));
	scratch_clear();

	f.record_size = 128;
	f.drive = 0;

	memcpy(f.name, file_name, 11);

	if (open(&f) != 0) return 0;

	while(total < size) {
		if (block_set_data_ptr(scratch) != 0) return 0;
		if (block_read(&f) != 0) return 0;

		memcpy(buffer+total,scratch,incr);

		total+=incr;
	}

	close(&f);

	return 1;
}

void fadein() {
	uint8_t i;

	if (tick < 4) return;

	tick = 0;

	for(i = 0; i < 32; i+=2) {
		uint8_t r = scratch[i] >> 4;
		uint8_t b = scratch[i] & 0xf;
		uint8_t g = scratch[i+1];

		if (r < (cur_palette[i] >> 4)) r++;
		if (b < (cur_palette[i] & 0xf)) b++;

		scratch[i] = (r << 4) | b;
		if (g < cur_palette[i+1]) scratch[i+1]++;

	}

	vdp_load_palette(scratch);
}

// effut ---------------------------------------------------------------------------------------------------------------------------
// effut ---------------------------------------------------------------------------------------------------------------------------
// effut ---------------------------------------------------------------------------------------------------------------------------

uint8_t yofff = 0;
uint8_t cc = 0;
static int flipper = 0;
static int ymmmf = 0;

void do_ymmm() {
	vdp_copy_command cmd;
	int xo;
	const int step = 2;

	if (tick > 32) { tick = 0; flipper++;}
	if (flipper > 10) { flipper = 0;}

	ymmmf++;
	for (yofff = 0; yofff<212-step;yofff+=step) {
		xo = (sintabx[(yofff+ymmmf) & 255]);

//		msx2_palette(1,xo>>1,xo>>1,xo>>2);
		cmd.source_x = 0;
		cmd.source_y = 0+yofff;
		cmd.dest_x = xo;
		cmd.dest_y = 3+yofff;
		cmd.size_x = 256;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0;
		cmd.command = 0xD0;


		vdp_copier(&cmd);

	}

}

char block_init = 0;

int bsx = 0;
int bsy = 0;
int btx = 0;
int bty = 0;

int btab[16] = {0};

int flof = 0;

void do_blocks() {
	vdp_copy_command cmd;
	int i=0;
	int ys = 0;
	int ye = 0;

	vdp_register(VDP_VOFFSET,0);

	if (block_init == 0) {

		vdp_set_screen5();

		vdp_register(2, 0x5F);

		for(i=0;i<16;i++) btab[i] = i*16;
		vdp_load_palette(block_palette);

		block_init = 1;

	} else {

		if (flof == 0) { ys = 0; ye = 8; }
		if (flof == 1) { ys = 8; ye = 16; }

		for(bty=3;bty<11;bty++) {
			for(btx=ys;btx<ye;btx++) {
				bsx = (PLY_PSGReg8 & PLY_PSGReg9 | PLY_PSGReg10)>>1;
				bsy = PLY_PSGReg10;
				cmd.source_x = btab[bsx];
				cmd.source_y = 768+btab[bsy];
				cmd.dest_x = btab[btx];
				cmd.dest_y = 512+btab[bty];
				cmd.size_x = 16;
				cmd.size_y = 16;
				cmd.data = 0;
				cmd.argument = 0x00;
				cmd.command = 0xD0;
				vdp_copier(&cmd);
			}
		}

		flof++;
		if (flof == 2) flof = 0;
	
	}

}

int linenum = 0;

void raster_effu() {
	vdp_register(VDP_VOFFSET,0);
	waitVB();

	vdp_register(1,0x40); // disable vblank

	for (linenum = 40; linenum < 212; linenum+=4) {
		vdp_register(19,linenum); // interrupt on line
		vdp_register(0,0x16); // mode SC5, IE1 interrupts on

		waitVB();
	}

	vdp_register(VDP_VOFFSET,0);

/*

	vdp_register(19,linenum+30); // interrupt on line

	while(CHECK_BIT(vdp2_status(1),0) == 0) {}

	vdp_load_palette(cur_palette);

	vdp_register(0,0x6); // mode SC5, IE1 interrupts on

*/

	vdp_register(0,0x6); // mode SC5, IE1 interrupts off
	vdp_register(1,0x60); // enable vblank
}

void twister() {
	vdp_copy_command cmd;
	int y,sy;
	waitVB();
	for (y = 0; y < 212; y+=2) {
		cmd.source_x = 70;
		sy = ((sintab[(vbicount+(y>>1)) & 255])>>1)+(256+64);
		cmd.source_y = sy;
		cmd.dest_x = 70;
		cmd.dest_y = y;
		cmd.size_x = 70;
		cmd.size_y = 2;
		cmd.data = 0;
		cmd.argument = 0x04; // from 70xY to left
		cmd.command = 0xe0; // logical vram to vram, y only
		vdp_copier(&cmd);
	}
	//msx2_palette(9,vbicount>>2,vbicount>>2,vbicount>>2);
	msx2_palette(4,vbicount>>2,vbicount>>3,vbicount>>2);

}

const uint8_t font_x[64] = {
	1,9,17,25,33,41,49,57,65,70,78,86,94,1,10,18,26,35,43,51,60,68,76,86,94,103,  // uppercase
	00,00,00,00,00,00, // padding
	1,9,17,24,32,40,47,55,63,69,76,84,90,100,1,9,17,25,33,41,48,56,64,74,82,90
};

const uint8_t font_y[64] = {
	28,28,28,28,28,28,28,28,28,28,28,28,28,37,37,37,37,37,37,37,37,37,37,37,37,37,
	00,00,00,00,00,00,
	55,55,55,55,55,55,55,55,55,55,55,55,55,55,64,64,64,64,64,64,64,64,64,64,64,64
};

const uint8_t font_w[64] = {
	7,7,7,7,7,7,7,7,4,7,7,7,9,8,7,7,8,7,7,8,7,7,9,7,8,7,
	00,00,00,00,00,00,
	7,7,6,7,7,7,7,7,5,6,7,5,9,7,7,7,7,7,7,6,7,7,9,7,7,7
};


uint8_t lx = 0;
uint8_t ly = 0;

void do_letter(char cc) {
	vdp_copy_command cmd;
	int cidx = cc - 65;
	cmd.source_x = 127+font_x[cidx];
	cmd.source_y = 256+font_y[cidx];
	cmd.dest_x = lx;
	cmd.dest_y = ly;
	cmd.size_x = font_w[cidx];
	cmd.size_y = 8;
	cmd.argument = 0x00;
	cmd.command = 0x90; // logical vram to vram
	vdp_copier(&cmd);
	lx+=font_w[cidx]-1;
}

void drawstr(char* str, uint8_t x, uint8_t y) {
	char* c = str;
	lx = x;
	ly = y;
	while (*c) {
		char ltr = *c++; 
		if (ltr == ' ') lx+=4;
		else if (ltr == '_') { ly+=9; lx = x; }
		else do_letter(ltr);
	}
}

void font() {
	drawstr("THE QUICK BROWN FOX",74,40);
	drawstr("JUMPS OVER THE LAZY DOG",74,49);

	drawstr("the quick brown fox",74,60);
	drawstr("jumps over the lazy dog",74,69);

	drawstr("This is a test of the_emergency alert system__This is only a test__Please locate your_nearest exit and proceed_to your gate at once",74,100);

}

static int xo = 0;
static int yo = 0;
static int po = 0;
static int fffaaa = 0;
void do_animplay() {
	uint8_t y = 0;
	uint8_t xx = 0;
	uint8_t dx = 0;
	vdp_copy_command cmd;

	for (y = 0; y < 106; y+=1) {
		cmd.source_x = xo;
		cmd.source_y = 256+po+yo+(y>>1);
		cmd.dest_x = 0;
		cmd.dest_y = (y<<1);
		cmd.size_x = 128;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x00;
		cmd.command = 0xD0;
		vdp_copier(&cmd);
	}

	for (y = 0; y < 106; y+=1) {
		cmd.source_x = xo;
		cmd.source_y = 256+po+yo+(y>>1);
		cmd.dest_x = 128;
		cmd.dest_y = (y<<1);
		cmd.size_x = 128;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x00;
		cmd.command = 0xd2; // logical vram to vram, xor
		vdp_copier(&cmd);
	}


	xo+=128;
	if (xo >= 256) {
		xo = 0;
		yo+=53;
		if (yo >= 212) { yo = 0; po+=256; }
		if (po >= 768) {
			po = 0;
		}		
	}


	msx2_palette(15,3+sintab[fffaaa & 255]>>5,3,4);
	msx2_palette(3,2+sintab[fffaaa & 255]>>5,0,0);
	fffaaa++;

}


// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------

void main() {
	unsigned char quit=0;
	int modes = 128; // interlace bit on
	int loops = 0;
	int i = 0;

	spindown();

	puts("demo init\r\n\r\n");
/*
	puts("loading sample data\r\n");

	raw_load("SAMPLE  RAW", 32000, sample_buf);

	puts("Your PSG works perfectly!\r\n");

	while (loops > 0) {
		play_sample(sample_buf+2,(51872/2)-400);
		loops--;
	}
*/
	puts("music init...");

	PLY_SongPtr = (char *)0x0103;
	PLY_Init();
	puts("done.\n\n");

	if(isvdp2())
	{
		modes+=2; // pal
//		msx2_palette(6,4,0,0); // Bloodier red for VDP2
	}

	vdp_set_screen5();

    vdp_register(VDP_MODE3,modes); // interlace on, screen mode pal or ntsc

	puts("demo start\r\n");

	scratch_clear();
	vdp_load_palette(scratch);

    vdp_register(VDP_VOFFSET,0);
    pal_load("TWISTER PL5",32);
    vdp_load_palette(cur_palette);

	memset((uint8_t *) &packbuffer, 0, 4032);
	raw_load("TWISTER PCK", 4032, packbuffer);
	bitbuster(packbuffer,0x8000,VRAM_0); // to page 1

	// cls
	vdp_set_write_address(0, 0);
	memset((uint8_t *) &scratch, 0, 256);

	for (i = 0; i < 213; i++) {		
		vdp_load_screen(scratch, 128);
	}

/*
    pal_load("LF      PL5",32);
    vdp_load_palette(cur_palette);

	memset((uint8_t *) &packbuffer, 0, 13428);
	raw_load("LF1     PCK", 13428, packbuffer);
	bitbuster(packbuffer,0x8000,VRAM_0); // to page 1

	memset((uint8_t *) &packbuffer, 0, 14505);
	raw_load("LF2     PCK", 14505, packbuffer);
	bitbuster(packbuffer,0x0000,VRAM_1); // to page 2

	memset((uint8_t *) &packbuffer, 0, 14480);
	raw_load("LF3     PCK", 14480, packbuffer);
	bitbuster(packbuffer,0x8000,VRAM_1); // to page 3

*/
/*
    pal_load("KETTU16 PL5",32);
    vdp_load_palette(cur_palette);

	memset((uint8_t *) &packbuffer, 0, 4501);
	raw_load("KETTU16 PCK", 4501, packbuffer);
	bitbuster(packbuffer,0x0000,VRAM_0); // to page 0
*/



	install_isr(my_isr);

/*
	pal_load("STDBLCK PL5", 32);
	memcpy(block_palette,cur_palette,32);

	pal_load("MONOLOG PI6", 8);

	memset((uint8_t *) &packbuffer, 0, 5000);
	raw_load("STDBLCK PCK", 4884, packbuffer);
	bitbuster(packbuffer,0x8000,VRAM_1); // to page 2 (0x10000)

	memset((uint8_t *) &packbuffer, 0, 5000);
	raw_load("MONOLOG PCK", 2042, packbuffer);
	bitbuster(packbuffer,0x0000,VRAM_0); // to page 0 (0x0000)

	scratch_clear();

	vdp_register(8, 0x2); // disable sprites

    install_isr(my_isr);
*/
		twister();
		font();

	while (!quit) {
		//waitVB();

		//do_animplay();
		twister();
		//raster_effu();
/*
		if (vbicount < 192) { 
			fadein(); 
		} else if (vbicount >= 192 && vbicount < 800) {
			do_ymmm();
		} else {
			do_blocks();
		}
*/
		if(space())
			quit=1;
	}

    waitVB();
    uninstall_isr();
    PLY_Stop();
    PLY_SendRegisters();

	screen(0);

	puts("demo exit\r\n\r\n");

	exit(0);
}
