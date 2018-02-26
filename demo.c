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

const uint8_t tri_center[192] = {
8,10,18,16,0,2,8,10,11,9,3,1,17,19,11,9,
10,18,16,0,2,8,10,18,19,11,9,3,1,17,19,11,
18,16,0,2,8,10,18,16,17,19,11,9,3,1,17,19,
16,0,2,8,10,18,16,0,1,17,19,11,9,3,1,17,
0,2,8,10,18,16,0,2,3,1,17,19,11,9,3,1,
2,8,10,18,16,0,2,8,9,3,1,17,19,11,9,3,
1,11,9,17,19,3,1,11,10,0,2,18,16,8,10,0,
3,1,11,9,17,19,3,1,0,2,18,16,8,10,0,2,
19,3,1,11,9,17,19,3,2,18,16,8,10,0,2,18,
17,19,3,1,11,9,17,19,18,16,8,10,0,2,18,16,
9,17,19,3,1,11,9,17,16,8,10,0,2,18,16,8,
11,9,17,19,3,1,11,9,8,10,0,2,18,16,8,10
};

const uint8_t tri_up[192] = {
10,18,16,0,2,8,10,18,19,11,9,3,1,17,19,11,
18,16,0,2,8,10,18,16,17,19,11,9,3,1,17,19,
16,0,2,8,10,18,16,0,1,17,19,11,9,3,1,17,
0,2,8,10,18,16,0,2,3,1,17,19,11,9,3,1,
2,8,10,18,16,0,2,8,9,3,1,17,19,11,9,3,
8,10,18,16,0,2,8,10,11,9,3,1,17,19,11,9,
10,18,16,0,2,8,10,18,19,11,9,3,1,17,19,11,
18,16,0,2,8,10,18,16,17,19,11,9,3,1,17,19,
16,0,2,8,10,18,16,0,1,17,19,11,9,3,1,17,
0,2,8,10,18,16,0,2,3,1,17,19,11,9,3,1,
2,8,10,18,16,0,2,8,9,3,1,17,19,11,9,3,
8,10,18,16,0,2,8,10,11,9,3,1,17,19,11,9
};

uint8_t tri_lookup_x[16*2] = { 0 };
int tri_lookup_y[16*2] = { 0 };

uint8_t packbuffer[12000] = {0};

uint8_t tf1[12000] = {0};
uint8_t tf2[12000] = {0};

uint8_t scratch[128];
uint8_t cur_palette[32];
uint8_t block_palette[32];
uint8_t twister_palette[32];
uint8_t tf_palette[32];
uint8_t boxes_palette[32];

volatile int vbicount=0;
volatile int tick=0;

vdp_copy_command cmd;

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

        vbicount+=1;
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

uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml, int debugprint) {
	fcb f;
	uint8_t i;

	if(debugprint == 1) {
		puts("loading ge5file: ");
		puts(file_name);
		puts("\r\n");
	}

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

uint8_t pal_load(char *file_name, uint8_t ss, int debugprint) {
	fcb f;

	if(debugprint == 1) {
		puts("loading palfile: ");
		puts(file_name);
		puts("\r\n");
	}

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


uint8_t raw_load(char *file_name, int size, char* buffer, int debugprint) {
	fcb f;
	int total = 0;
	int incr = 128;

	if(debugprint == 1) {
		puts("loading rawfile: ");
		puts(file_name);
		puts("\r\n");
	}

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

void pck_load(char *file_name, int size, uint16_t address, int vram_offset, int debugprint) {
	if(debugprint == 1) {
		puts("loading pckfile: ");
		puts(file_name);
		puts("\r\n");
	}
	memset((uint8_t *) &packbuffer, 0, size);
	raw_load(file_name, size, packbuffer,0);
	bitbuster(packbuffer,address,vram_offset);
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




//////


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
	int cidx = cc - 65;
	cmd.source_x = 127+font_x[cidx];
	cmd.source_y = 512+font_y[cidx];
	cmd.dest_x = lx;
	cmd.dest_y = ly;
	cmd.size_x = font_w[cidx];
	cmd.size_y = 8;
	cmd.argument = 0x00;
	cmd.command = 0x90; // logical vram to vram
	vdp_copier(&cmd);
	lx+=font_w[cidx]-1;
}


void do_letter_tall(char cc) {
	int cidx = cc - 65;
	cmd.source_x = 127+font_x[cidx];
	cmd.source_y = 512+font_y[cidx]-1;
	cmd.dest_x = lx;
	cmd.dest_y = ly;
	cmd.size_x = font_w[cidx];
	cmd.size_y = 10;
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

void drawsine(char* str, uint8_t x, uint8_t y) {
	char* c = str;
	lx = x;

	while (*c) {
		char ltr = *c++; 
		ly = y+(sintabx[(lx+vbicount>>1) & 255]>>4);
		if (ltr == ' ') lx+=4;
		else do_letter_tall(ltr);
	}
}

void font() {

	drawstr("DIGITAL SOUNDS SYSTEM__ IN THE HOUSE__  ON MSX__   AT REVISION__    OLDSKOOL_     DEMO_      COMPO",74,60);

}



int ff = 0;
int twinited = 0;

void twister() {
	int y;


	if (twinited == 0) {
		cmd.size_x = 256;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x04; // from 70xY to left
		cmd.command = 0xe0; // vram to vram, y only
		cmd.source_x = 256;
		cmd.dest_x = 256;

		for (y = 0; y < 212; y+=1) {
			waitVB();
			cmd.source_y = 0;
			cmd.dest_y = y;
			vdp_copier(&cmd);
		}


		twinited = 1;
		vdp_register(8,0x2); // no sprites
		vdp_load_palette(twister_palette);
		font();
	}

	cmd.size_x = 70;
	cmd.size_y = 2;
	cmd.data = 0;
	cmd.argument = 0x04; // from 70xY to left
	cmd.command = 0xe0; // vram to vram, y only
	cmd.source_x = 70;
	cmd.dest_x = 70;

	for (y = 0; y < 212; y+=2) {
		cmd.source_y = ((sintab[(ff+(y>>1)) & 255])>>1)+512+64;
		cmd.dest_y = y;
		vdp_copier(&cmd);
	}

	//msx2_palette(9,vbicount>>2,vbicount>>2,vbicount>>2);
	msx2_palette(4,ff>>2,ff>>3,ff>>2);

	ff+=4;
}


int bulbflipper = 1;

int ff1,ff2 = 0;
int ender = 212;
int enderdir = -1;

void bulbs() {
	int enderend;
	int y;

	ender+=enderdir;
	if (ender < 2) enderdir = -enderdir;
	if (ender >= 212) enderdir = -enderdir;

	enderend = ender + 92;

	if (enderend > 212) enderend = 212;

	if(bulbflipper == 1) {
		cmd.size_x = 72;
		cmd.size_y = 16;
		cmd.data = 0;
		cmd.argument = 0x04; // from 72xY to left
		cmd.command = 0xe0; // vram to vram, y only
		cmd.source_x = 72;
		cmd.dest_x = 72;

		for (y = ender; y < enderend; y+=16) {
			cmd.source_y = ((sintab[(ff1+(y)) & 255])>>1)+320;
			cmd.dest_y = y;
			vdp_copier(&cmd);
		}
		ff1+=4;

	} else {

		cmd.size_x = 72;
		cmd.size_y = 16;
		cmd.data = 0;
		cmd.argument = 0x00; // from 182xY to right
		cmd.command = 0xe0; // vram to vram, y only
		cmd.source_x = 182;
		cmd.dest_x = 182;

		for (y = ender; y < enderend; y+=16) {
			cmd.source_y = ((sintab[(ff2+(y)) & 255])>>1)+320;
			cmd.dest_y = y;
			vdp_copier(&cmd);
		}
		ff2+=4;
	}

	bulbflipper = -bulbflipper;

}




static int xo = 0;
static int yo = 0;
static int po = 0;
static int fffaaa = 0;

int anim_init = 0;

void animplay() {
	uint8_t y = 0;
	uint8_t xx = 0;
	uint8_t dx = 0;

	if (anim_init == 0) {

		vdp_register(0,0);
		vdp_register(1,0);

		bitbuster(tf1,0x8000,VRAM_0);
		bitbuster(tf2,0x0000,VRAM_1);

		vdp_set_screen5();
		vdp_register(1,0x60);
		vdp_register(9,2); // 192 lines


		anim_init = 1;
		vdp_load_palette(tf_palette);
	}

	for (y = 0; y < 96; y+=1) {
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

	xo+=128;
	if (xo >= 256) {
		xo = 0;
		yo+=48;
		if (yo >= 192) { yo = 0; po+=256; }
		if (po >= 768) {
			po = 0;
		}		
	}


//	msx2_palette(15,3+sintab[fffaaa & 255]>>5,3,4);
//	msx2_palette(3,2+sintab[fffaaa & 255]>>5,0,0);
	fffaaa++;
}


uint8_t boxes_init = 0;
int buffer = 1;
int dbly = 0;
int prevx = -1;
int prevy;
int prevbx;
int prevby;

void drawbox(int box_x, int box_y, uint8_t x, uint8_t y) {
	dbly = 0;

	cmd.source_x = box_x * 42;
	cmd.source_y = 768+box_y * 42;
	cmd.dest_x = x;
	cmd.dest_y = dbly+y;
	cmd.size_x = 42;
	cmd.size_y = 42;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0x98; // TIMP sprite
	vdp_copier(&cmd);

	prevx = x;
	prevy = y;
	prevbx = box_x;
	prevby = box_y;
}

int bx = 256-42;
int by = 84;
int bt = 0;
int bxx = 0;
int byy = 0;
int bo = 0;

int bonc = 0;
int pbx = 0;
int pbt = 0;

void boxes() {
	int x;


	if (bonc == 1) {
	// draw saved
	cmd.source_x = 0;
	cmd.source_y = 256;
	cmd.dest_x = pbx;
	cmd.dest_y = pbt;
	cmd.size_x = 42;
	cmd.size_y = 42;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xD0; // HMMM
	vdp_copier(&cmd);

	}

	if (boxes_init == 0) {
		boxes_init = 1;

		cmd.size_x = 8;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 248;
		cmd.source_y = 0;
		cmd.dest_y = 0;

		for (x = 248; x >= 0; x-=8) {
			waitVB();
			cmd.dest_x = x;
			cmd.dest_y = 0;
			vdp_copier(&cmd);
			cmd.dest_y = 256;
			vdp_copier(&cmd);
		}

		drawsine("LET US STOP   WE ARE BUILDING WALLS BETWEEN",8,180);

    	vdp_load_palette(boxes_palette);
	}

	if (bt >= 80) bt+=6;
	if (bt < 80 && bt >= 60) bt+=5;
	if (bt < 60 && bt >= 40) bt+=4;
	if (bt < 40 && bt >= 10) bt+=3;
	if (bt < 10 ) bt+=2;


	// save rect
	cmd.source_x = bx;
	cmd.source_y = bt;
	cmd.dest_x = 0;
	cmd.dest_y = 256;
	cmd.size_x = 42;
	cmd.size_y = 42;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xD0; // HMMM
	vdp_copier(&cmd);

	pbx = bx;
	pbt = bt;

	waitVB();

	drawbox(bxx,byy,bx,bt);

	waitVB();

	bonc = 1;
	if (bt > by) {

		bt = 0;
		if (by > 0) {
			bonc = 0;
			by-=16;
			bxx++;
			if (bxx >= 4) { bxx = 0; byy++; }
			if (byy >= 2) { byy = 0; }
		} else {
			bx-=21;
			bo+=11;
			if (bo > 192) bo = 0;
			by=84+bo;
			if (bx <= 0) {
				bx = 256;
				bo = 0;
				by = 84;
			}
 		}
	}

	//buffer = -buffer;

}

uint8_t tri_inited = 0;

void drawtritile(uint8_t tx, int ty, uint8_t x, uint8_t y) {
	cmd.source_x = tx;
	cmd.source_y = ty-1;
	cmd.dest_x = x;
	cmd.dest_y = y;
	cmd.size_x = 16;
	cmd.size_y = 16;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; // HMMM
	vdp_copier(&cmd);
}

void drawtilescreen(char* tripic) {
	int x = 0;
	int y = 0;
	int i = 0;
	while(i < 256) {
		drawtritile(tri_lookup_x[tripic[i]],tri_lookup_y[tripic[i]],x,y);
		x+=16;
		if (x >= 256) {x = 0; y+=16;}
		i++;
	}

}

char tripal[9] = {
	2,2,1,
	1,2,3,
	0,4,2
};

uint8_t tripaltick = 0;

int triframes = 0;

void tritiles() {
	int x = 0;
	int i = 0;
	char r;
	char g;
	char b;

	if (tri_inited == 0) {
		tri_inited = 1;

		cmd.size_x = 256;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 0;
		cmd.source_y = 255;
		cmd.dest_y = 0;

		for (x = 0; x < 212; x++) {
			waitVB();
			cmd.dest_x = 0;
			cmd.dest_y = x;
			vdp_copier(&cmd);
		}
		vdp_register(9,2); // 192 lines

    	vdp_load_palette(boxes_palette);
    	msx2_palette(15,0,0,0);

		drawtilescreen(tri_center);

	}


	triframes++;
	if (triframes == 300) {
		drawtilescreen(tri_up);
	}

	msx2_palette(3,tripal[0],tripal[1],tripal[2]);
	msx2_palette(13,tripal[3],tripal[4],tripal[5]);
	msx2_palette(5,tripal[6],tripal[7],tripal[8]);


	tripaltick++;
	if (tripaltick > 6) {
		// rotate pal
		r = tripal[0];
		g = tripal[1];
		b = tripal[2];

		for (x = 0; x < 6; x++) {
			tripal[x] = tripal[x+3];
		} 

		tripal[6] = r;
		tripal[7] = g;
		tripal[8] = b;
		tripaltick = 0;
	}

}

// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------

void do_quit() {
    waitVB();
    uninstall_isr();
    PLY_Stop();
    PLY_SendRegisters();

	screen(0);

	puts("demo quit\r\n\r\n");

	exit(0);	
}

void main() {
	unsigned char quit=0;
	int modes = 128; // interlace bit on
	int loops = 0;
	int i = 0;
	int x = 0;
	int y = 0;

	spindown();

	puts("demo init\r\n\r\n");

	for (y = 0; y < 2; y++) {
		for (x = 0; x < 16; x++) {
			tri_lookup_x[(y*16)+x] = x * 16;
			tri_lookup_y[(y*16)+x] = (768+129)+(y * 16);
		}
	}
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
	puts("done.\r\n");

	puts("detecting vdp type...");
	if(isvdp2())
	{
		puts(" vdp2 found!\r\n\r\n");
		modes+=2; // pal
//		msx2_palette(6,4,0,0); // Bloodier red for VDP2
	} else {
		puts(" vdp1 found.\r\nSorry, this demo requires a VDP2 with 128k for VRAM.\r\n\r\n");
		do_quit();
	}

    pal_load("TWISTER PL5",32,1);
    memcpy(twister_palette, cur_palette, 32);
    pal_load("TF1     PL5",32,1);
    memcpy(tf_palette, cur_palette, 32);
    pal_load("BOXES   PL5",32,1);
    memcpy(boxes_palette, cur_palette, 32);


    pal_load("BULBS   PL5",32,1);

   	pck_load("BULBS   PCK",2431,0x8000,VRAM_0,1);

   	pck_load("TWISTER PCK",4032,0x0000,VRAM_1,1);
   	pck_load("BOXES   PCK",4500,0x8000,VRAM_1,1);



	vdp_set_screen5();

    vdp_register(VDP_MODE3,modes); // interlace on, screen mode pal or ntsc


	puts("demo start\r\n");

	scratch_clear();
	vdp_load_palette(scratch);

    pck_load("DSSLOGO PCK",2154,0x0000,VRAM_0,0);
    pal_load("DSSLOGO PL5",32,1);
    vdp_load_palette(cur_palette);

    vdp_register(VDP_VOFFSET,0);

/*
	memset((uint8_t *) &tf1, 0, 10981);
	raw_load("TF1     PCK", 10981, tf1);

	memset((uint8_t *) &tf2, 0, 11406);
	raw_load("TF2     PCK", 11406, tf2);

   	pck_load("TF3     PCK",11248,0x8000,VRAM_1);
*/

	install_isr(my_isr);

	while (!quit) {
//		animplay();

		if (vbicount < 64) { 
			waitVB();
			fadein(); 
		}
		if (vbicount >= 192 && vbicount < 800) {
			waitVB();
			bulbs();
		}

		if (vbicount >= 800 && vbicount < 1500) {
			waitVB();
			twister();
		}

		if (vbicount >= 1500 && vbicount < 2200) {
			boxes();
		}


		if (vbicount >= 2200 && vbicount < 5800) {
	    	waitVB();
			tritiles();
		}


		if(space())
			quit=1;
	}

	do_quit();
}
