#include "conio.h"
#include "dos.h"
#include "types.h"
#include "mem.h"
#include "vdp.h"

uint8_t scratch[128];
char filename[11] = "";


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

    puts("memset f\r\n");
    
    memset((uint8_t *) &f, 0, sizeof(fcb));
    
    f.record_size = 128;
    f.drive = 0;

    puts("memcpy name\r\n");

    memcpy(f.name, file_name, 11);    

    puts("opening file: '");
    puts(f.name);
    puts("'\r\n");

    getchar();

    vdp_set_screen5();

    
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

void main(char** argv, int argc) {

    puts("demo init\r\n");

    ge5_load("KETTU16 SC5", 0, 0x0000);        // load at visible VRAM

    getchar();
    vdp_set_text();

    exit(0);
}
