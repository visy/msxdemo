#include "conio.h"
#include "dos.h"
#include "types.h"
#include "mem.h"
#include "heap.h"
#include "vdp.h"
#include "interrupt.h"
#include "msxlib.h"
#include "ArkosTrackerPlayer_MSX.h"

#include "twister.pl5.h"
#include "boxes.pl5.h"
#include "bulbs.pl5.h"
#include "credit1.pl6.h"
#include "dsslogo.pl5.h"

#include "dsslogo.pck.h"
#include "loading.pck.h"

#define VRAM_0 1
#define VRAM_1 0

extern void bitbuster(unsigned char*, uint16_t, unsigned char);

const uint8_t sintabx[256] = {
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

const uint8_t tri_dia[192] = {
5,27,15,29,21,25,5,27,15,29,21,25,5,27,15,29,
29,5,25,15,27,21,29,5,25,15,27,21,29,5,25,15,
15,29,21,25,5,27,15,29,21,25,5,27,15,29,21,25,
25,15,27,21,29,5,25,15,27,21,29,5,25,15,27,21,
21,25,5,27,15,29,21,25,5,27,15,29,21,25,5,27,
27,21,29,5,25,15,27,21,29,5,25,15,27,21,29,5,
5,27,15,29,21,25,5,27,15,29,21,25,5,27,15,29,
29,5,25,15,27,21,29,5,25,15,27,21,29,5,25,15,
15,29,21,25,5,27,15,29,21,25,5,27,15,29,21,25,
25,15,27,21,29,5,25,15,27,21,29,5,25,15,27,21,
21,25,5,27,15,29,21,25,5,27,15,29,21,25,5,27,
27,21,29,5,25,15,27,21,29,5,25,15,27,21,29,5
};

const uint8_t tri_side1[192] = {
10,18,16,0,2,8,10,18,16,0,2,8,10,18,16,0,
18,16,0,2,8,10,18,16,0,2,8,10,18,16,0,2,
16,0,2,8,10,18,16,0,2,8,10,18,16,0,2,8,
0,2,8,10,18,16,0,2,8,10,18,16,0,2,8,10,
2,8,10,18,16,0,2,8,10,18,16,0,2,8,10,18,
8,10,18,16,0,2,8,10,18,16,0,2,8,10,18,16,
10,18,16,0,2,8,10,18,16,0,2,8,10,18,16,0,
18,16,0,2,8,10,18,16,0,2,8,10,18,16,0,2,
16,0,2,8,10,18,16,0,2,8,10,18,16,0,2,8,
0,2,8,10,18,16,0,2,8,10,18,16,0,2,8,10,
2,8,10,18,16,0,2,8,10,18,16,0,2,8,10,18,
8,10,18,16,0,2,8,10,18,16,0,2,8,10,18,16
};



const uint8_t tri_side2[192] = {
0,16,18,10,8,2,0,16,18,10,8,2,0,16,18,10,
2,0,16,18,10,8,2,0,16,18,10,8,2,0,16,18,
8,2,0,16,18,10,8,2,0,16,18,10,8,2,0,16,
10,8,2,0,16,18,10,8,2,0,16,18,10,8,2,0,
18,10,8,2,0,16,18,10,8,2,0,16,18,10,8,2,
16,18,10,8,2,0,16,18,10,8,2,0,16,18,10,8,
0,16,18,10,8,2,0,16,18,10,8,2,0,16,18,10,
2,0,16,18,10,8,2,0,16,18,10,8,2,0,16,18,
8,2,0,16,18,10,8,2,0,16,18,10,8,2,0,16,
10,8,2,0,16,18,10,8,2,0,16,18,10,8,2,0,
18,10,8,2,0,16,18,10,8,2,0,16,18,10,8,2,
16,18,10,8,2,0,16,18,10,8,2,0,16,18,10,8
};


const uint8_t tri_inva1[192] = {
30,31,30,17,19,30,8,10,0,14,16,30,28,30,8,10,
31,31,30,30,21,23,10,0,2,17,19,31,28,8,10,31,
30,31,8,27,26,17,19,28,30,31,25,30,6,4,28,28,
30,8,22,24,27,30,25,29,31,30,25,8,27,30,18,16,
8,22,16,17,23,9,17,15,1,30,20,22,23,21,16,30,
10,24,31,30,25,11,9,17,15,28,5,9,30,11,9,31,
30,25,30,31,25,30,11,27,21,25,29,25,25,19,11,9,
30,21,19,30,12,1,30,31,30,30,28,29,1,17,19,11,
9,26,20,4,14,7,1,30,31,0,2,30,3,1,12,6,
11,27,4,14,25,23,7,29,28,2,31,30,8,7,6,30,
8,4,14,20,9,17,23,7,29,31,30,8,10,30,31,31,
4,14,20,10,11,9,17,23,7,1,8,10,30,31,31,30
};

const uint8_t tri_inva2[192] = {
20,4,14,20,4,14,20,26,27,21,15,5,21,15,5,21,
4,14,20,4,14,20,4,28,29,5,21,15,5,21,15,5,
14,20,4,14,20,4,14,24,25,15,5,21,15,5,21,15,
24,26,28,24,26,28,24,24,25,25,29,27,25,29,27,25,
24,26,28,24,26,28,24,24,13,25,29,27,25,29,27,25,
25,27,29,25,27,29,25,12,14,24,28,26,24,28,26,24,
25,27,29,25,27,29,25,15,13,24,28,26,24,28,26,24,
13,23,7,13,23,7,13,12,14,12,6,22,12,6,22,12,
7,13,23,7,13,23,2,26,26,3,22,12,6,22,12,6,
23,7,13,23,7,16,31,26,26,31,17,6,22,12,6,22,
13,23,7,13,10,31,31,26,26,31,31,11,12,6,22,12,
7,13,23,2,31,31,31,31,31,31,31,31,3,22,12,6
};

const uint8_t tri_inva3[192] = {
26,28,24,26,28,24,26,30,0,28,28,29,28,28,29,28,
26,28,24,26,28,24,26,31,28,24,31,28,29,29,28,29,
4,14,20,4,14,20,10,30,28,13,24,28,28,28,28,28,
28,24,26,28,24,26,30,0,28,29,28,28,29,24,15,28,
28,24,26,28,24,26,31,28,29,2,28,2,29,31,24,28,
28,24,26,28,24,26,31,3,28,29,28,28,28,28,29,28,
14,20,4,14,20,10,30,0,11,10,11,10,11,10,29,28,
20,4,14,20,10,31,30,28,31,30,31,30,31,30,29,28,
26,28,24,26,31,18,24,24,25,25,19,30,31,30,29,28,
27,29,25,27,30,24,24,24,25,25,25,19,31,0,28,28,
27,29,25,27,31,24,24,12,28,28,28,28,28,28,28,28,
23,7,13,23,9,30,31,29,29,29,28,29,28,28,28,28
};


const uint8_t tri_inva4[192] = {
30,0,5,10,30,0,6,22,15,1,31,17,12,1,31,31,
18,15,2,30,18,15,5,21,12,6,9,31,3,6,9,31,
21,16,30,8,21,16,30,31,31,11,22,19,31,11,22,19,
5,30,0,5,10,30,8,21,19,31,17,13,1,31,12,13,
2,30,14,15,30,0,5,21,12,1,31,7,7,31,6,7,
30,30,21,21,30,15,2,30,7,6,31,23,23,30,23,22,
31,31,4,5,31,20,9,17,23,10,30,13,13,30,13,12,
9,31,14,15,31,4,4,31,31,30,8,6,7,30,7,6,
4,31,17,20,31,3,14,20,7,13,23,10,30,18,23,10,
14,31,31,4,1,31,17,23,7,13,16,30,0,13,16,30,
20,9,31,3,14,19,31,31,31,30,30,8,7,2,30,30,
11,4,1,31,17,20,4,14,23,7,13,23,10,30,30,30

};

uint8_t tri_lookup_x[16*2] = { 0 };
int twelvetimes[26] = { 0 };
int eighttimes[26] = { 0 };

int tri_lookup_y[16*2] = { 0 };

uint8_t packbuffer[4724] = {0};

uint8_t scratch[128];
uint8_t cur_palette[32];
uint8_t bulbs_palette[32];
uint8_t block_palette[32];
uint8_t twister_palette[32];
uint8_t tf_palette[32];
uint8_t boxes_palette[32];
uint8_t credits_palette[32];

volatile int vbicount=0;
volatile int tick=0;

vdp_copy_command cmd;


void (*scenepointers[12])() = {
	waiter,
	logoeffu,
	bulbs, 
	twister,
	boxes,
	thewave,
	tritiles,
	points,
	bigtext,
	credits,
	do_quit
};

int scenetimings[24] = {
	0, 170,
	170, 350,
	750, 1300,
	1300, 2300,
	2300, 3600,
	3600, 4100,
	4100, 5550,
	5550, 6100,
	6100, 8405,
	8405, 10100,
	10100, 100000
};



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


// helpers ---------------------------------------------------------------------------------------------------------------------------
// helpers ---------------------------------------------------------------------------------------------------------------------------
// helpers ---------------------------------------------------------------------------------------------------------------------------

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

	if (tick < 8) return;

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
}

char block_init = 0;

int bsx = 0;
int bsy = 0;
int btx = 0;
int bty = 0;

int btab[16] = {0};

int flof = 0;

void do_blocks() {
}

int linenum = 0;

void raster_effu() {
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


void do_2xletter(char cc) {
	int cidx = cc - 65;
	int x,y,col;

	for (y=0;y<8;y++) {
		for (x=0;x<font_w[cidx];x++) {
			cmd.source_x = 127+font_x[cidx]+x;
			cmd.source_y = 512+font_y[cidx]+y;
			cmd.size_x = 1;
			cmd.size_y = 1;
			cmd.argument = 0x00;
			cmd.command = 0x40; // get pixel
			vdp_copier(&cmd);

			col = vdp2_status(7);

			cmd.data = col;
			cmd.dest_x = lx+x*3;
			cmd.dest_y = ly+y*3;
//			cmd.size_x = 4;
//			cmd.size_y = 4;
			cmd.argument = 0x00;
			cmd.command = 0x50; // rect
			vdp_copier(&cmd);
			cmd.dest_x = 1+lx+x*3;
			cmd.dest_y = ly+y*3;
			vdp_copier(&cmd);
			cmd.dest_x = 1+lx+x*3;
			cmd.dest_y = 1+ly+y*3;
			vdp_copier(&cmd);
			cmd.dest_x = lx+x*3;
			cmd.dest_y = 1+ly+y*3;
			vdp_copier(&cmd);
		}
		waitVB();
	}

	lx+=font_w[cidx]-1+(x*4);
}


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

int ltrpointer = 0;
int slowend = 128;

void drawstrslow(char* str, uint8_t x, uint8_t y) {
	char* c = str+ltrpointer;
	if (ltrpointer > slowend) return;
	if (ltrpointer == 0) {
		lx = x;
		ly = y;
	}
	while (*c) {
		char ltr = *c++; 
		if (ltr == ' ') lx+=4;
		else if (ltr == '_') { ly+=9; lx = x; }
		else do_letter(ltr);
		break;
	}

	ltrpointer++;
}

void drawstr2x(char* str, uint8_t x, uint8_t y) {
	char* c = str;
	lx = x;
	ly = y;
	while (*c) {
		char ltr = *c++; 
		if (ltr == ' ') lx+=4*4;
		else if (ltr == '_') { ly+=9*4; lx = x; }
		else do_2xletter(ltr);

	}
}

void drawsine(char* str, uint8_t x, uint8_t y) {
	char* c = str+ltrpointer;
	if (ltrpointer > slowend) return;
	if (ltrpointer == 0) {
		lx = x;
	}
	while (*c) {
		char ltr = *c++; 
		ly = y+(sintabx[(lx+10>>1) & 255]>>4);

		if (ltr == ' ') lx+=4;
		else if (ltr == '_') { ly+=9; lx = x; }
		else do_letter_tall(ltr);
		break;
	}

	ltrpointer++;
}

void font() {
	slowend = 128;
	drawstrslow("DIGITAL SOUNDS SYSTEM__ IN THE HOUSE__  ON MSX__   AT REVISION__    OLDSKOOL_     DEMO_      COMPO__MAKE SOME NOISE PARTY PEOPLE",74,60);
}



int ff = 0;
int twinited = 0;
int twialku = 2;
void twister() {
	int y;


	if (twinited == 0) {
		cmd.size_x = 74;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 0;
		cmd.source_y = 0;

		for (y = 0; y < 106; y+=1) {
			waitVB();
			cmd.dest_x = 0;
			cmd.dest_y = 106+y;
			vdp_copier(&cmd);
			cmd.dest_x = 256-74;
			cmd.dest_y = 106+y;
			vdp_copier(&cmd);

			cmd.dest_x = 0;
			cmd.dest_y = 106-y;
			vdp_copier(&cmd);
			cmd.dest_x = 256-74;
			cmd.dest_y = 106-y;
			vdp_copier(&cmd);

		}

		cmd.dest_x = 72;
		cmd.size_x = 140;
		cmd.size_y = 2;
		for (y = 212-2; y >= 0; y-=2) {
			waitVB();
			cmd.dest_y = y;
			vdp_copier(&cmd);
		}

		twinited = 1;
		vdp_load_palette(twister_palette);
		drawstr2x("DSS",80,15);
	}


	cmd.size_x = 70;
	cmd.size_y = 2;
	cmd.data = 0;
	cmd.argument = 0x04; // from 70xY to left
	cmd.command = 0xe0; // vram to vram, y only
	cmd.source_x = 70;
	cmd.dest_x = 70;

	twialku++;

	if (twialku > 212) twialku = 212;

		cmd.command = 0xd0; // vram to vram, y only
		for (y = 104-(twialku>>1); y < 106+(twialku>>1); y+=2) {
			cmd.source_y = ((sintab[(ff+(y>>1)) & 255])>>1)+512+80;
			cmd.dest_y = y;
			vdp_copier(&cmd);
		}
	//msx2_palette(9,vbicount>>2,vbicount>>2,vbicount>>2);
	msx2_palette(4,PLY_PSGReg8+ff>>2,PLY_PSGReg9+ff>>3,ff>>2);

	font();

	ff+=4;
}


int bulbflipper = 1;

int ff1,ff2 = 0;
int ender = 212;
int enderdir = -1;
	int sy = 16;

void bulbs() {
	int enderend;
	int y;

	ender+=enderdir;
	if (ender < 2) { enderdir = -enderdir; }
	if (ender >= 212) { enderdir = -enderdir;  sy -= 2; }

	enderend = ender + 92;

	if (enderend > 212) enderend = 212;
	if (enderend > 212-16) sy = 16-(212-enderend);

	if(bulbflipper == 1) {
		cmd.size_x = 72;
		cmd.size_y = sy;
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
		cmd.size_y = sy;
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
static int frames = 0;

int anim_init = 0;

void animplay() {
}


uint8_t boxes_init = 0;
int buffer = 1;
int prevx = -1;
int prevy;
uint8_t boxes_x[5] = {0,36,0,36,0};
int boxes_y[5] = {768,768,768+36,768+36,0};
uint8_t boxi = 0;
int bx = 220;
int by = 84;

void drawbox(uint8_t x, uint8_t y) {
	cmd.source_x = boxes_x[boxi];
	cmd.source_y = boxes_y[boxi];
	cmd.dest_x = x;
	cmd.dest_y = y;
	cmd.size_x = 36;
	cmd.size_y = 36;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0x98; // TIMP sprite
	vdp_copier(&cmd);

	prevx = x;
	prevy = y;
}

int bt = 0;
int bo = 0;

int bonc = 0;
int pbx = 0;
int pbt = 0;

int boxes_of[5] = {0,0,6,0,0};
uint8_t prevbox_of = 0;
int boxticks = 0;

void boxes() {
	int y;
	int x;

	if (bx < 0) return;

	if (bonc == 1) {
		// draw saved
		cmd.source_x = 0;
		cmd.source_y = 256;
		cmd.dest_x = pbx;
		cmd.dest_y = pbt;
		cmd.size_x = 36;
		cmd.size_y = 36;
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
			msx2_palette(4,ff>>2,ff>>3,ff>>2);
			ff+=2;
			waitVB();
			cmd.dest_x = x;
			cmd.dest_y = 0;
			vdp_copier(&cmd);
			cmd.dest_y = 256;
			vdp_copier(&cmd);
		}

    	vdp_load_palette(boxes_palette);

		for (x=0;x < 8;x++) {

			for (y=0;y < 9;y++) {
				boxes_x[4] = 0;
				boxes_y[4] = 768+2*36;
				boxi = 4;
				drawbox((x*36),y*18);
				boxi = 0;
			}
		}

		slowend = 43;
		ltrpointer = 0;
	}

	if (bt >= 80) bt+=8;
	if (bt < 80 && bt >= 60) bt+=7;
	if (bt < 60 && bt >= 40) bt+=6;
	if (bt < 40 && bt >= 10) bt+=5;
	if (bt < 10 ) bt+=4;

	// save rect
	cmd.source_x = bx;
	cmd.source_y = bt;
	cmd.dest_x = 0;
	cmd.dest_y = 256;
	cmd.size_x = 36;
	cmd.size_y = 36;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xD0; // HMMM
	vdp_copier(&cmd);

	pbx = bx;
	pbt = bt;

	boxticks++;
	if (boxticks > 8) {
		drawsine("Let us stop   We are building walls between",8,182);
		boxticks  = 0;
	}

	bonc = 1;
	if (bt > by) {
		bt = by;
			drawbox(bx,bt);
		bt = 0;
		if (by > 48) {
			bonc = 0;
			by-=16;
			prevbox_of = boxes_of[boxi];
			by+=prevbox_of;
			boxi++;
			if (boxi >= 4) boxi = 0;
		} 

		if (by <= 48) {
			bx-=16;

			if (bx>128)bo+=8;
			else bo-=8;
			if (bo > 192) bo = 0;
			if (bx>128)by=84+bo;
			else by=36+36+84+bo;
 		}
	} else {
		drawbox(bx,bt);
	}

	//buffer = -buffer;

}

uint8_t initwave = 0;
int buf = -1;
int ffa = 0;

void thewave() {

	uint8_t x;
	uint8_t y;
	int px;
	uint8_t ya = 0;
	int bo = 0;
	int lukema = 0;

	if (initwave == 0) {
		initwave = 1;
		for (y = 0; y < 212; y++) {
			cmd.size_x = 256;
			cmd.size_y = 2;
			cmd.data = 0;
			cmd.argument = 0x00; // from 70xY to left
			cmd.command = 0xd0; // vram to vram, y only

			cmd.source_x = 0;
			cmd.source_y = 0;
			cmd.dest_x = 0;
			cmd.dest_y = 0+y;
			vdp_copier(&cmd);
			cmd.dest_y = 256+y;
			vdp_copier(&cmd);
			waitVB();
		}

		for (y = 9; y < 15; y+=1) {
			for (x = 0; x < 21; x+=1) {
				if (x > 6 && x < 13) continue; 

				if (x <= 6) px=7 + (sintab[(105 + (x<<3) + (y<<3)) & 255]>>4);
				if (x >= 13) px=7 + (sintab[(105 + ((23+x)<<3) + ((19+y)<<3)) & 255]>>4);

				cmd.size_x = 11;
				cmd.size_y = 28-(14-px);
				cmd.data = 0;
				cmd.argument = 0x00; // from 70xY to left
				cmd.command = 0x98; // vram to vram, y only

				cmd.source_x = twelvetimes[px];
				cmd.source_y = 768+183+(15-px);
				cmd.dest_x = 0+twelvetimes[x];
				cmd.dest_y = 0+bo+(eighttimes[y]+4)+(14-px);
				vdp_copier(&cmd);
				cmd.dest_y = 256+bo+(eighttimes[y]+4)+(14-px);
				vdp_copier(&cmd);
			}
		}

	}

	if (buf == -1) { bo = 0; ya = 0; }
	else { bo = 256; ya = 6;}

	cmd.size_x = 72;
	cmd.size_y = 80;
	cmd.data = 0;
	cmd.argument = 0x00; // from 70xY to left
	cmd.command = 0xd0; // vram to vram, y only
	cmd.source_x = 178;
	cmd.source_y = 0;
	cmd.dest_x = 84;
	cmd.dest_y = 72+bo;
	vdp_copier(&cmd);

	lukema = ffa;
	for (y = 0; y < 5; y+=1) {
		for (x = 0; x < 6; x+=1) {

			px=7 + (sintab[(lukema + (x<<3) + (y<<2)) & 255]>>4);
			if (px < 0) px = 0; 
			if (px > 14) px = 14; 

			cmd.size_x = 12;
			cmd.size_y = 11;
			cmd.data = 0;
			cmd.argument = 0x00; // from 70xY to left
			cmd.command = 0x98; // vram to vram, y only

			cmd.source_x = twelvetimes[px];
			cmd.source_y = 768+183+16-px;
			cmd.dest_x = 84+twelvetimes[x];
			cmd.dest_y = 72+bo+(eighttimes[y]+4)+(14-px);
			vdp_copier(&cmd);
		}
	}

	y = 5;
	for (x = 0; x < 6; x+=1) {
		px=7 + (sintab[(lukema + (x<<3) + (y<<2)) & 255]>>4);
		if (px < 0) px = 0; 
		if (px > 14) px = 14; 

		cmd.size_x = 12;
		cmd.size_y = 27-(14-px);
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0x98; // vram to vram, y only

		cmd.source_x = twelvetimes[px];
		cmd.source_y = 768+183+ 16-px;
		cmd.dest_x = 84+twelvetimes[x];
		cmd.dest_y = 72+bo+(eighttimes[y]+4)+(14-px);
		vdp_copier(&cmd);
	}


	if (buf == -1) vdp_register(2, 0x1F);
	else vdp_register(2, 0x3F);


	buf = -buf;

	ffa+=8;
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

	int tilei = 0;
	int tilex = 0;
	int tiley = 0;
	uint8_t tiletick = 0;
void drawtilescreen(char* tripic) {
	uint8_t i = 0;
	if(tilei >= 192) return;

	tiletick++;
	if (tiletick > 6) { tiletick = 0;}
	else return;
	for (i=0;i<20;i++) {
		drawtritile(tri_lookup_x[tripic[tilei]],tri_lookup_y[tripic[tilei]],tilex,tiley);
		tilex+=16;
		tilei++;
		if (tilex >= 256) {tilex = 0; tiley+=16; return; }
	}

}

void drawtilescreen_full(char* tripic) {
	int x = 0;
	int y = 0;
	int i = 0;
	while(i < 192) {
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
uint8_t tripaltick2 = 0;

int triframes = 0;

void tritiles() {
	int x = 0;
	int i = 0;
	char r;
	char g;
	char b;

	if (tri_inited == 0 || tri_inited == 2) {

		cmd.size_x = 2;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 255;
		cmd.source_y = 0;

		for (x = 0; x < 128; x+=2) {
			waitVB();
			cmd.dest_y = 256;
			cmd.dest_x = 128-x;
			vdp_copier(&cmd);
			cmd.dest_y = 0;
			vdp_copier(&cmd);
			cmd.dest_y = 256;
			cmd.dest_x = 128+x;
			vdp_copier(&cmd);
			cmd.dest_y = 0;
			vdp_copier(&cmd);
		}

		scratch_clear();
		vdp_load_palette(scratch);

    	tri_inited++;
		vdp_register(9,2); // 50hz,192

		//if (tri_inited == 1) drawtilescreen_full(tri_center);
		//else drawtilescreen_full(tri_inva2);
		vdp_register(2, 0x1f);
		tick = 0;


    	if (tri_inited == 0) vdp_load_palette(boxes_palette);
    	else if (tri_inited == 2) { 
    		vdp_load_palette(boxes_palette); 
    		triframes = 0; 

    		tripal[0] = 4;
    		tripal[1] = 4;
    		tripal[2] = 3;

    		tripal[3] = 2;
    		tripal[4] = 3;
    		tripal[5] = 4;

    		tripal[6] = 1;
    		tripal[7] = 3;
    		tripal[8] = 1;
    	}

    	msx2_palette(15,0,0,0);
    	triframes = 1350;
	}


	if (tri_inited == 1) triframes++;

	if (triframes == 150) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 150 && triframes < 300) {
		drawtilescreen(tri_up);
	}

	if (triframes == 300) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 300 && triframes < 450) {
		drawtilescreen(tri_dia);
	}

	if (triframes == 450) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 450 && triframes < 600) {
		drawtilescreen(tri_side1);
	}

	if (triframes == 600) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 600 && triframes < 750) {
		drawtilescreen(tri_side2);
	}

	if (triframes == 750) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 750 && triframes < 900) {
		drawtilescreen(tri_inva1);
	}

	if (triframes == 900) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 900 && triframes < 1050) {
		drawtilescreen(tri_inva2);
	}

	if (triframes == 1050) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 1050 && triframes < 1200) {
		drawtilescreen(tri_inva3);
	}

	if (triframes == 1200) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 1200 && triframes < 1350) {
		drawtilescreen(tri_inva4);
	}

	if (triframes == 1350) { tilei = 0; tilex = 0; tiley = 0; }
	if (triframes >= 1350 && triframes < 1500) {
		drawtilescreen(tri_center);
	}

	if (triframes > 1500) triframes = 149;


	msx2_palette(2,0,0,0);
	msx2_palette(11,0,0,0);

	if (PLY_PSGReg10 > 4) {
    vdp_register(VDP_VOFFSET,192-sintabx[(PLY_PSGReg10 + tripaltick) & 255]>>3);

	msx2_palette(3,tripal[0]+PLY_PSGReg10,tripal[1],tripal[2]);
	msx2_palette(14,tripal[3],tripal[4],tripal[5]);
	msx2_palette(6,tripal[6],tripal[7],tripal[8]);
	}
	else {
    vdp_register(VDP_VOFFSET,0);

	msx2_palette(3,tripal[0],tripal[1],tripal[2]);
	msx2_palette(14,tripal[3],tripal[4],tripal[5]);
	msx2_palette(6,tripal[6],tripal[7],tripal[8]);

	}

	if (tick > 28) tick = 0;

	tripaltick++;
	if (tripaltick > 6) {
		tripaltick2++;
		if (tripaltick2 > 6) tripaltick2 = 0;
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

int abs (int n) {
    const int ret[2] = { n, -n };
    return ret [n<0];
}

int powatick = 0;
	int powa = 0;
	uint8_t onceclear = 255;
void logoeffu() {
	int y = 0;
	int v = 0;

	fadein();

	v = abs(sintabx[(vbicount) & 255]>>4);

	for (y = 0; y < 116; y+=2) {
		cmd.size_x = 108;
		cmd.size_y = 2;
		cmd.data = 0;
		cmd.argument = 0x00;
		cmd.command = 0xd0; 
		cmd.source_x = 74;
		cmd.source_y = 256+y;
		v+=y;
		v -= powa;
		if (v<0) v = 0;
		if (v>150) v = 150;
		cmd.dest_x = 74+v;
		cmd.dest_y = 50+y+1;
		vdp_copier(&cmd);
	}

	if (vbicount > scenetimings[2]+84 && onceclear > 182) {
			cmd.size_x = 4;
			cmd.size_y = 116;
			cmd.data = 0;
			cmd.argument = 0x00;
			cmd.command = 0xd0; 
			cmd.source_x = 20;
			cmd.source_y = 0;
			cmd.dest_x = onceclear;
			cmd.dest_y = 68;
			vdp_copier(&cmd);
		onceclear-=4;
	}

	powatick++;
		powa+=2;
		powatick = 0;
}

uint8_t initpoints = 0;
int pointframe = 0;


int greetindex = 0;

void points() {
	uint8_t y = 0;
	int x = 0;
	uint8_t plusser = 0;
	if (initpoints == 0) {
		cmd.size_x = 256;
		cmd.size_y = 4;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 0;
		cmd.dest_x = 0;

		for (y = 0; y < 212; y+=4) {
			if (PLY_PSGReg10 > 4) {
		    vdp_register(VDP_VOFFSET,192-sintabx[(PLY_PSGReg10 + tripaltick) & 255]>>3);

			msx2_palette(3,tripal[0]+PLY_PSGReg10,tripal[1],tripal[2]);
			msx2_palette(14,tripal[3],tripal[4],tripal[5]);
			msx2_palette(6,tripal[6],tripal[7],tripal[8]);
			}
			else {
		    vdp_register(VDP_VOFFSET,0);

			msx2_palette(3,tripal[0],tripal[1],tripal[2]);
			msx2_palette(14,tripal[3],tripal[4],tripal[5]);
			msx2_palette(6,tripal[6],tripal[7],tripal[8]);

			}
			waitVB();
			cmd.source_y = 193;
			cmd.dest_y = y;
			vdp_copier(&cmd);
		}


		vdp_load_palette(bulbs_palette);

		for (x = 0; x < 256; x+=1) {
			y = 29;
			cmd.data = 1+((pointframe>>2) & 0xe);
			cmd.dest_x = x;
			cmd.dest_y = y;
			cmd.command = 0x50;
			vdp_copier(&cmd);

			y = 162;
			cmd.data = 1+((pointframe>>2) & 0xe);
			cmd.dest_y = y;
			vdp_copier(&cmd);

			pointframe+=1;
		}

		initpoints = 1;
		ltrpointer = 0;
	}

	cmd.argument = 0x0;

	cmd.data = 1+((pointframe>>2) & 0xe);

	for (x = 30; x < 162; x+=1) {
		y = 64+(sintabx[(x+pointframe) & 255]>>1);
		cmd.dest_x = y;
		cmd.dest_y = x;
		cmd.command = 0x53;
		vdp_copier(&cmd);
	}
	pointframe+=2;

	if (greetindex == 0) {
		slowend = 27;
		drawstrslow("GREETINGS TO VARIOUS GROUPS",10,20);
	}
	if (greetindex == 1) {
		slowend = 33;
		drawstrslow("Trilobit  Prismbeings  Ivory Labs",10,164);
	}
	if (greetindex == 2) {
		slowend = 29;
		drawstrslow("PWP  Dekadence  Paraguay  ISO",18,174);
	}
	if (greetindex == 3) {
		slowend = 17;
		drawstrslow("Furry Trash Group",26,184);
	}
	if (ltrpointer >= slowend) { greetindex++; ltrpointer = 0; }

	msx2_palette(4,0,0,0);

}

int bigtextp = 0;
void bigtext() {
	int x = 0;
	if (bigtextp == 0) {
		cmd.size_x = 2;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 255;
		cmd.source_y = 0;

		for (x = 0; x < 256; x+=4) {
			waitVB();
			cmd.dest_y = 256;
			cmd.dest_x = x;
			vdp_copier(&cmd);
			cmd.dest_y = 0;
			vdp_copier(&cmd);
		}

		for (x = 254; x > 0; x-=4) {
			waitVB();
			cmd.dest_y = 256;
			cmd.dest_x = x;
			vdp_copier(&cmd);
			cmd.dest_y = 0;
			vdp_copier(&cmd);
		}

		vdp_load_palette(boxes_palette);
		drawstr2x("DIGITAL",26,44);
		drawstr2x("SOUNDS",27,84);
		drawstr2x("SYSTEM",25,124);
		bigtextp++;
		tri_inited = 2;
		ff = 0;
		ltrpointer = 0;
	}

	msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ff+=2;

	if (ff == 600) {
		cmd.size_x = 256;
		cmd.size_y = 3;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 0;
		cmd.source_y = 28;

		cmd.dest_y = 512;
		cmd.dest_x = 0;
		vdp_copier(&cmd);

		cmd.source_x = 0;
		cmd.source_y = 512;

		for (x = 0; x < 66; x+=1) {
			waitVB();
			cmd.dest_y = 28+x;
			cmd.dest_x = 0;
			vdp_copier(&cmd);
			cmd.dest_y = 161-x;
			cmd.dest_x = 0;
			vdp_copier(&cmd);
		}

		for (x = 0; x < 66; x+=1) {
			waitVB();
			cmd.dest_y = 28+66-x;
			cmd.dest_x = 0;
			vdp_copier(&cmd);
			cmd.dest_y = 161-66+x;
			cmd.dest_x = 0;
			vdp_copier(&cmd);
		}


		drawstr2x("COMMAND",4,44);
		drawstr2x("   THE  ",32,84);
		drawstr2x("  BASS ",35,124);
	}

	if (ff == 1200) {
		cmd.size_x = 3;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 255;
		cmd.source_y = 0;

		for (x = 254; x > 0; x-=4) {
			msx2_palette(4,ff>>2,ff>>3,ff>>2);
			ff+=2;
			waitVB();
			cmd.dest_y = 256;
			cmd.dest_x = x;
			vdp_copier(&cmd);
			cmd.dest_y = 0;
			vdp_copier(&cmd);
		}


		for (x = 0; x < 256; x+=4) {
			msx2_palette(4,ff>>2,ff>>3,ff>>2);
			ff+=2;
			waitVB();
			cmd.dest_y = 256;
			cmd.dest_x = x;
			vdp_copier(&cmd);
			cmd.dest_y = 0;
			vdp_copier(&cmd);
		}

		drawstr2x("REVISION",10,44);
		drawstr2x("   IS OUR",0,84);
		drawstr2x("  PARTY",12,124);
	}

	if (ff >= 1600 && ff < 1700) {
		slowend = 37;
		drawstrslow("Give a big hand to all the organizers",28,164+6);
	}

	if (ff == 1700) {
		ltrpointer = 0;
	}

	if (ff > 1700 && ff < 1800) {
		slowend = 21;
		drawstrslow("of this amazing party",64,164+16);
	}

	if (ff >= 1900 && ff < 3890) {
		cmd.size_x = 1;
		cmd.size_y = 17;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 128+20*(((ff-1901)>>3) % 6);
		cmd.source_y = 768+30;
		cmd.dest_x = (255)-((ff-1900)>>3);
		cmd.dest_y = 12;
		vdp_copier(&cmd);


		cmd.size_x = 20;
		cmd.size_y = 17;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 128+20*(((ff-1900)>>3) % 6);
		cmd.source_y = 768;
		cmd.dest_x = (256-20)-((ff-1900)>>3);
		cmd.dest_y = 12;
		vdp_copier(&cmd);

	}


	if (ff == 2700) {
		ltrpointer = 0;
	}

	if (ff > 2700 && ff < 2800) {
		slowend = 21;
		drawstrslow("Digital Sounds System",0,0);
	}

	if (ff == 3200) {
		ltrpointer = 0;
	}

	if (ff > 3200 && ff < 3400) {
		slowend = 19;
		drawstrslow("mew mew mew miu mou",134,0);
	}

}

void waiter() {

}


int initcredits = 0;
int credittimer = 0;
int musicstopped = 0;
int flipo = 0;
int curpage = 0;
int myoffs = 0;
void credits() {
	int x = 0;
	int fra = 0;
	uint8_t y = 0;
	uint8_t plusser = 0;

	if (initcredits == 0) {
		uninstall_isr();
	    PLY_Stop();
	    PLY_SendRegisters();

		scratch_clear();
		vdp_load_palette(scratch);


		vdp_register(9,130); // 50hz,212

		bitbuster(loading_pck,0x0000,VRAM_0);

		cmd.size_x = 256;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00;
		cmd.command = 0xd0; 
		cmd.source_x = 0;
		cmd.source_y = 0;
		cmd.dest_x = 0;
		cmd.dest_y = 768;
		vdp_copier(&cmd);

		pause();

		vdp_register(2,0x7f);
		vdp_load_palette(boxes_palette);

		initcredits = 1;

		raw_load("CREDIT2 PCK", 4724, packbuffer,0);

		bitbuster(packbuffer,0x0000,VRAM_0);

		cmd.size_x = 512;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00;
		cmd.command = 0xd0; 
		cmd.source_x = 0;
		cmd.source_y = 0;
		cmd.dest_x = 0;
		cmd.dest_y = 256;
		vdp_copier(&cmd);

		raw_load("CREDIT3 PCK", 3723, packbuffer,0);

		bitbuster(packbuffer,0x0000,VRAM_0);

		cmd.size_x = 512;
		cmd.size_y = 212;
		cmd.data = 0;
		cmd.argument = 0x00;
		cmd.command = 0xd0; 
		cmd.source_x = 0;
		cmd.source_y = 0;
		cmd.dest_x = 0;
		cmd.dest_y = 512;
		vdp_copier(&cmd);

		raw_load("CREDIT1 PCK", 3323, packbuffer,0);

		bitbuster(packbuffer,0x0000,VRAM_0);

		scratch_clear();
		vdp_load_palette(scratch);

		vdp_register(0,8); // mode 512x212
		vdp_register(9,130); // 50hz,192

		install_isr(my_isr);

	    memcpy(cur_palette, credits_palette, 32);

		scratch_clear();
		pointframe = 0;
		curpage = 0;
		myoffs = 180;
		vdp_register(2,0x1f);

	}

	if (credittimer < 400) fadein();

	if(credittimer >= 1000 && curpage == 0) { vdp_register(2, 0x3f); curpage = 256; myoffs = 100; }
	if(credittimer >= 1500 && curpage == 256) { vdp_register(2, 0x5f); curpage = 512; myoffs = 200; }

	credittimer+=3;
	if (credittimer == 1500) {
		vdp_load_palette(scratch);
	}

	if (credittimer >= 300 && credittimer < 700 && flipo < 211) {
		cmd.size_x = 64;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0x93; // vram to vram, y only
		cmd.source_x = 0;
		cmd.source_y = 211-flipo;

		cmd.dest_x = flipo;
		cmd.dest_y = flipo;
		vdp_copier(&cmd);
		flipo+=2;
	}

	if (credittimer > 700) {
		msx2_palette(0,PLY_PSGReg10,PLY_PSGReg10,PLY_PSGReg10);

		cmd.size_x = 256;
		cmd.size_y = 1;
		cmd.data = 0;
		cmd.argument = 0x00; // from 70xY to left
		cmd.command = 0xd0; // vram to vram, y only
		cmd.source_x = 0;
		cmd.dest_x = 0;
		cmd.argument = 0x0;

		cmd.data = 1+((pointframe>>2) & 0xe);
		cmd.command = 0x53;
		for (x = 0; x < 212; x+=1) {
			y = 64+(sintabx[(x+pointframe) & 255]>>1);
			cmd.dest_x = myoffs+y;
			cmd.dest_y = curpage+x;
			vdp_copier(&cmd);
		}
		pointframe+=2;

	} else {
		msx2_palette(0,0,0,0);
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
	vdp_load_palette(twister_palette);

	puts("bye friends.\r\n\r\n");

	exit(0);	
}

int sceneindex = 0;
int timeindex = 0;

void main() {
	unsigned char quit=0;
	int loops = 0;
	int i = 0;
	int x = 0;
	int y = 0;

	spindown();

	puts("[starting DSS MSX demosystem]\r\n\r\n");

	for (y = 0; y < 2; y++) {
		for (x = 0; x < 16; x++) {
			tri_lookup_x[(y*16)+x] = x * 16;
			tri_lookup_y[(y*16)+x] = (768+129)+(y * 16);
		}
	}

	for (x = 0; x < 26; x++) {
		twelvetimes[x] = x * 12;
		eighttimes[x] = x * 8;
	}

	puts("init sweet PSG bleeps...");

	PLY_SongPtr = (char *)0x0103;
	PLY_Init();
	puts("done.\r\n");

	puts("detecting ya vdp type...\r\n");
	if(isvdp2())
	{
		puts("vdp2 found! setting 50hz...\r\n");
//		msx2_palette(6,4,0,0); // Bloodier red for VDP2
	} else {
		puts(" vdp1 found.\r\nSorry, this demo requires a VDP2 with 128k for VRAM.\r\n");
		do_quit();
	}

	memcpy(cur_palette, twister_pl5+7, 32);
    memcpy(twister_palette, cur_palette, 32);

	memcpy(cur_palette, boxes_pl5+7, 32);
    memcpy(boxes_palette, cur_palette, 32);

	memcpy(cur_palette, bulbs_pl5+7, 32);
    memcpy(bulbs_palette, cur_palette, 32);

	memcpy(cur_palette, credit1_pl6+7, 32);
    memcpy(credits_palette, cur_palette, 32);


	puts("all good, starting the demo!\r\n");

    pause();
    pause();
    pause();
    pause();
    pause();
    pause();

	vdp_set_screen5();

	scratch_clear();
	vdp_load_palette(scratch);

	bitbuster(loading_pck,0x0000,VRAM_0);

	cmd.size_x = 256;
	cmd.size_y = 212;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; 
	cmd.source_x = 0;
	cmd.source_y = 0;
	cmd.dest_x = 0;
	cmd.dest_y = 768;
	vdp_copier(&cmd);

	vdp_register(2,0x7f);
	vdp_load_palette(boxes_palette);

	//////////////////////////////////////////

	pck_load("BULBS   PCK",2431,0x0000,VRAM_0,0);

	cmd.size_x = 256;
	cmd.size_y = 212;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; 
	cmd.source_x = 0;
	cmd.source_y = 0;
	cmd.dest_x = 0;
	cmd.dest_y = 256;
	vdp_copier(&cmd);

	pck_load("TWISTER PCK",4032,0x0000,VRAM_0,0);

	cmd.size_x = 256;
	cmd.size_y = 212;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; 
	cmd.source_x = 0;
	cmd.source_y = 0;
	cmd.dest_x = 0;
	cmd.dest_y = 512;
	vdp_copier(&cmd);

	scratch_clear();
	vdp_load_palette(scratch);

	vdp_register(2,0x1f);

	pck_load("BOXES   PCK",3002,0x0000,VRAM_0,0);

	cmd.size_x = 256;
	cmd.size_y = 212;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; 
	cmd.source_x = 0;
	cmd.source_y = 0;
	cmd.dest_x = 0;
	cmd.dest_y = 768;
	vdp_copier(&cmd);

	bitbuster(dsslogo_pck,0x0000,VRAM_0);

	cmd.size_x = 108;
	cmd.size_y = 116;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; 
	cmd.source_x = 75;
	cmd.source_y = 50;
	cmd.dest_x = 75;
	cmd.dest_y = 256;
	vdp_copier(&cmd);

	cmd.size_x = 108;
	cmd.size_y = 60;
	cmd.data = 0;
	cmd.argument = 0x00;
	cmd.command = 0xd0; 
	cmd.source_x = 75;
	cmd.source_y = 256+110;
	cmd.dest_x = 75;
	cmd.dest_y = 40;
	vdp_copier(&cmd);
	cmd.dest_x = 75;
	cmd.dest_y = 100;
	vdp_copier(&cmd);

	memcpy(cur_palette, dsslogo_pl5+7, 32);

	scratch_clear();

	vdp_register(9,130); // 50hz,212

	install_isr(my_isr);

//		drawstr(credits,80,55);

	while (!quit) {

		if (vbicount >= scenetimings[timeindex+1]) {
			sceneindex++;
			timeindex+=2;
		}

		if (vbicount >= scenetimings[timeindex] && vbicount < scenetimings[timeindex+1]) {
			waitVB();
			scenepointers[sceneindex]();
		}


		if(space())
			quit=1;
	}

	do_quit();
}
