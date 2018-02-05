#include "conio.h"
#include "dos.h"
#include "types.h"
#include "mem.h"
#include "heap.h"
#include "vdp.h"

uint8_t scratch[128];

char *strcat(char *dest, char *src)
{
    char *rdest = dest;

    while (*dest)
      dest++;
    while (*dest++ = *src++)
      ;
    return rdest;
}

uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
    fcb f;
    uint8_t i;
    
    memset((uint8_t *) &f, 0, sizeof(fcb));

    f.record_size = 128;
    f.drive = 0;

    memcpy(f.name, file_name, 11);
    
    if (open(&f) != 0)
        return 0;
    
    vdp_set_write_address(vramh, vraml);
    
    for (i = 0; i < 213; i++) {
        if (block_set_data_ptr(scratch) != 0)
            return 0;
        if (block_read(&f) != 0)
            return 0;
        if (i == 0)
            vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
        else
            vdp_load_screen(scratch, 128);
    }
    
    close(&f);
    
    return 1;
}

uint8_t pal_load(char *file_name) {
	fcb f;

	memset((uint8_t *) &f, 0, sizeof(fcb));
    memset((uint8_t *) &scratch, 0, 128);

	f.record_size = 128;
	f.drive = 0;

	memcpy(f.name, file_name, 11);

	if (open(&f) != 0)
	    return 0;

    if (block_set_data_ptr(scratch) != 0)
        return 0;

    if (block_read(&f) != 0)
        return 0;

	vdp_load_palette(scratch+7);

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

void main(char** argv, int argc) {
    uint8_t i;

    puts("demo init\r\n\r\n");

	if(argc==0)
	{
		puts("no parameters were passed.\r\n");
	} else {
		puts("parameters passed:\r\n\r\n");
	}

	for(i=0;i<argc;i++)
	{
		puts(argv[i]);
        puts("\r\n");
	}

	pause();
	pause();
	pause();
	pause();

    vdp_set_screen5();

    while (1) {
    	cls(0, 0x0000);
    	pal_load("KETTU11 PL5");
	    ge5_load("KETTU11 SC5", 0, 0x0000);
	    pause();
    	cls(0, 0x0000);
    	pal_load("KETTU12 PL5");
	    ge5_load("KETTU12 SC5", 0, 0x0000);
	    pause();
    	cls(0, 0x0000);
    	pal_load("KETTU13 PL5");
	    ge5_load("KETTU13 SC5", 0, 0x0000);
	    pause();
    	cls(0, 0x0000);
    	pal_load("KETTU14 PL5");
	    ge5_load("KETTU14 SC5", 0, 0x0000);
	    pause();
    	cls(0, 0x0000);
    	pal_load("KETTU15 PL5");
	    ge5_load("KETTU15 SC5", 0, 0x0000);
	    pause();
    	cls(0, 0x0000);
    	pal_load("KETTU16 PL5");
	    ge5_load("KETTU16 SC5", 0, 0x0000);
	    pause();

	}

    getchar();
    vdp_set_text();

    puts("demo exit\r\n\r\n");

    exit(0);
}
