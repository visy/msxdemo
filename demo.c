#include "conio.h"
#include "dos.h"
#include "types.h"
#include "mem.h"
#include "heap.h"
#include "vdp.h"
#include "interrupt.h"
#include "msxlib.h"
#include "ArkosTrackerPlayer_MSX.h"

extern void bitbuster(unsigned char*, uint16_t);

uint8_t packbuffer[5000] = {0};
uint8_t packbuffer2[5000] = {0};

uint8_t scratch[128];
uint8_t cur_palette[32];
uint8_t block_palette[32];

volatile int vbicount=0;
volatile int tick=0;

// irq ---------------------------------------------------------------------------------------------------------------------------
// irq ---------------------------------------------------------------------------------------------------------------------------
// irq ---------------------------------------------------------------------------------------------------------------------------

void my_isr(void) interrupt
{
        DI;
        READ_VDP_STATUS;

        PLY_Play();
        PLY_SendRegisters();

        vbicount++;
        tick++;

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


uint8_t pack_load(char *file_name, int size, char* buffer) {
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

uint8_t yo = 0;
uint8_t cc = 0;
static int flipper = 0;
static int ymmmf = 0;

void do_ymmm() {
	vdp_copy_command cmd;
	uint8_t xo;
	const int step = 3;

	if (tick > 16) { tick = 0; flipper++;}
	if (flipper > 4) { flipper = 0;}


	for (yo = 0; yo<212-step;yo+=step) {
		xo = ((sintab[(vbicount+yo) & 255]+64)>>3);

		if (yo < 164) {
		if (flipper == 3)  vdp_register(VDP_VOFFSET,((sintab[vbicount+yo]&255)*xo)/128);
		else if (flipper == 1) vdp_register(VDP_VOFFSET,((sintab[((vbicount>>1)+yo>>1)&255])/4));
		else if (flipper == 2) vdp_register(VDP_VOFFSET,((sintab[((vbicount)+yo)&255])/3));
		}
		msx2_palette(1,xo>>1,xo>>1,xo>>2);
		cmd.source_x = 80;
		cmd.source_y = 256+yo;
		cmd.dest_x = 80+xo;
		cmd.dest_y = yo;
		cmd.size_x = 64+32;
		cmd.size_y = 2;
		cmd.data = 0;
		cmd.argument = 0;
		cmd.command = 0xD0;


		vdp_copier(&cmd);

	}
	vdp_register(VDP_VOFFSET,0);

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

		uninstall_isr();
		PLY_Stop();
		PLY_PSGReg8 = 0;
		PLY_PSGReg9 = 0;
		PLY_PSGReg10 = 0;
		for(i=0;i<16;i++) btab[i] = i*16;
		bitbuster(packbuffer2,0x8000); // to page 2
		vdp_load_palette(block_palette);

		block_init = 1;

	    install_isr(my_isr);
	} else {
		if (flof == 0) { ys = 0; ye = 8; }
		if (flof == 1) { ys = 8; ye = 16; }

		for(bty=3;bty<11;bty++) {
			for(btx=ys;btx<ye;btx++) {
				bsx = (PLY_PSGReg8 & PLY_PSGReg9 | PLY_PSGReg10)>>1;
				bsy = PLY_PSGReg10;
				cmd.source_x = btab[bsx];
				cmd.source_y = 256+btab[bsy];
				cmd.dest_x = btab[btx];
				cmd.dest_y = btab[bty];
				cmd.size_x = 16;
				cmd.size_y = 16;
				cmd.data = 0;
				cmd.argument = 0;
				cmd.command = 0xD0;
				vdp_copier(&cmd);
			}
		}

		flof++;
		if (flof == 2) flof = 0;
	
	}

}

// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------

void main() {
	unsigned char quit=0;
	vdp_copy_command cmd;

	spindown();

	puts("demo init\r\n\r\n");

	puts("music init...");

	PLY_SongPtr = (char *)0x0103;
	PLY_Init();
	puts("done.\n\n");

	if(isvdp2())
	{
		msx2_sethz(50);
//		msx2_palette(6,4,0,0); // Bloodier red for VDP2
	}

	puts("demo start\r\n");

	scratch_clear();
	vdp_load_palette(scratch);

	vdp_set_screen5();

    vdp_register(VDP_VOFFSET,0);

	pal_load("STDBLCK PL5", 32);
	memcpy(block_palette,cur_palette,32);

	pal_load("KETTU16 PL5", 32);

	memset((uint8_t *) &packbuffer, 0, 5000);
	pack_load("KETTU16 PCK", 4502, packbuffer);
	bitbuster(packbuffer,0x8000); // to page 1

	memset((uint8_t *) &packbuffer2, 0, 5000);
	pack_load("STDBLCK PCK", 4884, packbuffer2);

	scratch_clear();

	cmd.source_x = 0;
	cmd.source_y = 256;
	cmd.dest_x = 0;
	cmd.dest_y = 0;
	cmd.size_x = 256;
	cmd.size_y = 212;
	cmd.data = 0;
	cmd.argument = 0;
	cmd.command = 0xD0;

	vdp_copier(&cmd);


    install_isr(my_isr);

	while (!quit) {
		waitVB();

		if (vbicount < 192) { 
			fadein(); 
		} else if (vbicount >= 192 && vbicount < 500) {
			do_ymmm();
		} else {
			do_blocks();
		}

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
