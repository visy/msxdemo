#include "conio.h"
#include "dos.h"
#include "types.h"
#include "mem.h"
#include "heap.h"
#include "vdp.h"
#include "interrupt.h"
#include "msxlib.h"
#include "ArkosTrackerPlayer_MSX.h"

uint8_t scratch[128];
uint8_t cur_palette[32];

char *strcat(char *dest, char *src) {
	char *rdest = dest;
	while (*dest)
		dest++;
	while (*dest++ = *src++)
		;
	return rdest;
}

volatile int vbicount=0;
volatile int tick=0;

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

uint8_t pal_load(char *file_name) {
	fcb f;

	memset((uint8_t *) &f, 0, sizeof(fcb));
	memset((uint8_t *) &scratch, 0, 128);

	f.record_size = 32;
	f.drive = 0;

	memcpy(f.name, file_name, 11);

	if (open(&f) != 0) return 0;
	if (block_set_data_ptr(scratch) != 0) return 0;
	if (block_read(&f) != 0) return 0;

	memcpy(cur_palette, scratch+7, 32);

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

void cls(uint8_t vramh, uint16_t vraml) {
	vdp_set_write_address(vramh, vraml);
	memset((uint8_t *) &scratch, 0, 128);
	vdp_load_screen(scratch, 128);
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

	vdp_set_screen5();
	pal_load("KETTU16 PL5");

	//vdp_load_palette(cur_palette);

	memset((uint8_t *) &scratch, 0, 128);
	vdp_load_palette(scratch);

	ge5_load("KETTU16 SC5", 0, 0x0000);

	memset((uint8_t *) &scratch, 0, 128);

    install_isr(my_isr);

	while (!quit) {
		waitVB();

		if (vbicount < 256) fadein();

		if(space())
			quit=1;
	}

	getchar();

    waitVB();
    uninstall_isr();
    PLY_Stop();
    PLY_SendRegisters();

	screen(0);

	puts("demo exit\r\n\r\n");

	exit(0);
}
