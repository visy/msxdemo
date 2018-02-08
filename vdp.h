

#ifndef  __VDP_H__
#define  __VDP_H__


#include "types.h"

typedef struct {
	uint16_t source_x;
	uint16_t source_y;
	uint16_t dest_x;
	uint16_t dest_y;
	uint16_t size_x;
	uint16_t size_y;
	uint8_t data;
	uint8_t argument;
	uint8_t command;
} vdp_copy_command;



extern void vdp_set_screen5(void);
extern void vdp_set_screen6(void);
extern void vdp_set_text(void);
extern void vdp_load_palette(void *p);
extern void vdp_set_write_address(uint8_t h, uint16_t l);
extern void vdp_set_read_address(uint8_t h, uint16_t l);
extern void vdp_load_screen(uint8_t *source, uint8_t source_size);
extern void vdp_copier(vdp_copy_command *cmd);


#endif  // __VDP_H__
