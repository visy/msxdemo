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

uint8_t scratch[128];
uint8_t cur_palette[32];

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


uint8_t pack_load(char *file_name, int size) {
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

		memcpy(packbuffer+total,scratch,incr);

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

void do_ymmm() {
	vdp_copy_command cmd;
	const int step = 4;

	vdp_set_write_address(0x1,0x00);

	for (yo = 0; yo<212;yo+=step) {

		cmd.source_x = 0;
		cmd.source_y = yo;
		cmd.dest_x = sintab[(vbicount+yo) & 255]>>2;
		cmd.dest_y = (yo-1);
		cmd.size_x = 255;
		cmd.size_y = 4;
		cmd.data = 0;
		cmd.argument = 0;
		cmd.command = 0xD0;


		vdp_copier(&cmd);
		yo+=step;
	}
}

// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------
// main ---------------------------------------------------------------------------------------------------------------------------

void main() {
	unsigned char quit=0;

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

	pal_load("KETTU16 PL5", 32);

	memset((uint8_t *) &packbuffer, 0, 5000);
	pack_load("KETTU16 PCK", 4502);
    vdp_register(14,0);

	bitbuster(packbuffer,0);

	scratch_clear();

    install_isr(my_isr);

	while (!quit) {
		waitVB();

		if (vbicount < 192) fadein();
		else {
//	        vdp_register(VDP_VOFFSET,sintab[vbicount & 255]);
			do_ymmm();
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
