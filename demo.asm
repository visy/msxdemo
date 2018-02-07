;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Wed Feb  7 19:01:00 2018
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _fadein
	.globl _cls
	.globl _pause
	.globl _pal_load
	.globl _ge5_load
	.globl _my_isr
	.globl _tick
	.globl _vbicount
	.globl _cur_palette
	.globl _scratch
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_scratch::
	.ds 128
_cur_palette::
	.ds 32
_vbicount::
	.ds 2
_tick::
	.ds 2
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;demo.c:37: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
	ld	1 (iy),#0x00
;demo.c:38: volatile int tick=0;
	ld	iy,#_tick
	ld	0 (iy),#0x00
	ld	iy,#_tick
	ld	1 (iy),#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;demo.c:40: void my_isr(void) interrupt
;	---------------------------------
; Function my_isr
; ---------------------------------
_my_isr_start::
_my_isr:
	push	af
	push	bc
	push	de
	push	hl
	push	iy
;demo.c:42: DI;
		di 
;demo.c:43: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:45: PLY_Play();
	call	_PLY_Play
;demo.c:46: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:48: vbicount++;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_vbicount
	inc	1 (iy)
00103$:
;demo.c:49: tick++;
	ld	iy,#_tick
	inc	0 (iy)
	jr	NZ,00104$
	ld	iy,#_tick
	inc	1 (iy)
00104$:
;demo.c:51: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
;demo.c:54: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function ge5_load
; ---------------------------------
_ge5_load_start::
_ge5_load:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:58: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x002E
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:60: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:61: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:63: memcpy(f.name, file_name, 11);
	ld	e,4 (ix)
	ld	d,5 (ix)
	inc	bc
	ld	hl,#0x000B
	push	hl
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:65: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00102$
	ld	l,#0x00
	jp	00117$
00102$:
;demo.c:66: vdp_set_write_address(vramh, vraml);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:68: for (i = 0; i < 212; i++) {
	ld	c,#0x00
00110$:
	ld	a,c
	sub	a,#0xD4
	jp	NC,00125$
;demo.c:69: if (block_set_data_ptr(scratch) != 0) return 0;
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00104$
	ld	l,#0x00
	jp	00117$
00104$:
;demo.c:70: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	bc
	push	hl
	call	_block_read
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00106$
	ld	l,#0x00
	jp	00117$
00106$:
;demo.c:72: if (i == 0) vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
	xor	a,a
	or	a,c
	jr	NZ,00108$
	ld	de,#_scratch + 7
	push	bc
	ld	a,#0x79
	push	af
	inc	sp
	push	de
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	bc
	jr	00112$
00108$:
;demo.c:73: else vdp_load_screen(scratch, 128);
	push	bc
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	bc
00112$:
;demo.c:68: for (i = 0; i < 212; i++) {
	inc	c
	jp	00110$
;demo.c:77: for (i = 0; i < 48; i++) {
00125$:
	ld	c,#0x30
00116$:
;demo.c:78: vdp_load_screen(scratch, 128);	
	push	bc
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	bc
	dec	c
;demo.c:77: for (i = 0; i < 48; i++) {
	xor	a,a
	or	a,c
	jr	NZ,00116$
;demo.c:81: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:83: return 1;
	ld	l,#0x01
00117$:
	ld	sp,ix
	pop	ix
	ret
_ge5_load_end::
;demo.c:86: uint8_t pal_load(char *file_name) {
;	---------------------------------
; Function pal_load
; ---------------------------------
_pal_load_start::
_pal_load:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:89: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x002E
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:90: memset((uint8_t *) &scratch, 0, 128);
	ld	hl,#0x0080
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:92: f.record_size = 32;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x20
	ld	(de),a
;demo.c:93: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:95: memcpy(f.name, file_name, 11);
	ld	e,4 (ix)
	ld	d,5 (ix)
	inc	bc
	ld	hl,#0x000B
	push	hl
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:97: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00102$
	ld	l,#0x00
	jr	00107$
00102$:
;demo.c:98: if (block_set_data_ptr(scratch) != 0) return 0;
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00104$
	ld	l,#0x00
	jr	00107$
00104$:
;demo.c:99: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_block_read
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00106$
	ld	l,#0x00
	jr	00107$
00106$:
;demo.c:101: memcpy(cur_palette, scratch+7, 32);
	ld	bc,#_scratch + 7
	ld	hl,#0x0020
	push	hl
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:103: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:104: return 1;
	ld	l,#0x01
00107$:
	ld	sp,ix
	pop	ix
	ret
_pal_load_end::
;demo.c:107: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:108: uint8_t i,j,k = 0;
;demo.c:109: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:110: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:111: k++;
	inc	e
	dec	d
;demo.c:110: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:109: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:116: void cls(uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function cls
; ---------------------------------
_cls_start::
_cls:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:117: vdp_set_write_address(vramh, vraml);
	ld	l,5 (ix)
	ld	h,6 (ix)
	push	hl
	ld	a,4 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:118: memset((uint8_t *) &scratch, 0, 128);
	ld	hl,#0x0080
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:119: vdp_load_screen(scratch, 128);
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	ix
	ret
_cls_end::
;demo.c:122: void fadein() {
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein_start::
_fadein:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:125: if (tick < 4) return;
	ld	a,(#_tick+0)
	sub	a,#0x04
	ld	a,(#_tick+1)
	sbc	a,#0x00
	jp	P,00102$
	jp	00113$
00102$:
;demo.c:127: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:129: for(i = 0; i < 32; i+=2) {
	ld	c,#0x00
00109$:
	ld	a,c
	sub	a,#0x20
	jp	NC,00112$
;demo.c:130: uint8_t r = scratch[i] >> 4;
	ld	a,#<_scratch
	add	a,c
	ld	e,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	b,a
	ld	e,b
	srl	e
	srl	e
	srl	e
	srl	e
;demo.c:131: uint8_t b = scratch[i] & 0xf;
	ld	a,b
	and	a,#0x0F
	ld	-1 (ix),a
;demo.c:132: uint8_t g = scratch[i+1];
	ld	d,c
	inc	d
	ld	a,#<_scratch
	add	a,d
	ld	l,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	h,a
	ld	d,(hl)
	ld	-2 (ix),d
;demo.c:134: if (r < (cur_palette[i] >> 4)) r++;
	ld	a,#<_cur_palette
	add	a,c
	ld	l,a
	ld	a,#>_cur_palette
	adc	a,#0x00
	ld	h,a
	ld	d,(hl)
	srl	d
	srl	d
	srl	d
	srl	d
	ld	a,e
	sub	a,d
	jr	NC,00104$
	inc	e
00104$:
;demo.c:135: if (b < (cur_palette[i] & 0xf)) b++;
	ld	a,#<_cur_palette
	add	a,c
	ld	l,a
	ld	a,#>_cur_palette
	adc	a,#0x00
	ld	h,a
	ld	a,(hl)
	and	a,#0x0F
	ld	b,a
	ld	a,-1 (ix)
	sub	a,b
	jr	NC,00106$
	inc	-1 (ix)
00106$:
;demo.c:137: scratch[i] = (r << 4) | b;
	ld	a,#<_scratch
	add	a,c
	ld	b,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	d,a
	ld	a,e
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,-1 (ix)
	ld	l,b
	ld	h,d
	ld	(hl),a
;demo.c:138: if (g < cur_palette[i+1]) scratch[i+1]++;
	ld	b,c
	inc	b
	ld	a,#<_cur_palette
	add	a,b
	ld	e,a
	ld	a,#>_cur_palette
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	a,-2 (ix)
	sub	a,e
	jr	NC,00111$
	ld	a,#<_scratch
	add	a,b
	ld	b,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	e,a
	ld	l,b
	ld	h,a
	ld	a,(hl)
	inc	a
	ld	l,b
	ld	h,e
	ld	(hl),a
00111$:
;demo.c:129: for(i = 0; i < 32; i+=2) {
	inc	c
	inc	c
	jp	00109$
00112$:
;demo.c:142: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00113$:
	ld	sp,ix
	pop	ix
	ret
_fadein_end::
;demo.c:145: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;demo.c:146: unsigned char quit=0;
	ld	c,#0x00
;demo.c:148: spindown();
	push	bc
	call	_spindown
	pop	bc
;demo.c:150: puts("demo init\r\n\r\n");
	push	bc
	ld	hl,#__str_0
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:152: puts("music init...");
	push	bc
	ld	hl,#__str_1
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:154: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:155: PLY_Init();
	push	bc
	call	_PLY_Init
	pop	bc
;demo.c:156: puts("done.\n\n");
	push	bc
	ld	hl,#__str_2
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:158: if(isvdp2())
	push	bc
	call	_isvdp2
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00102$
;demo.c:160: msx2_sethz(50);
	push	bc
	ld	a,#0x32
	push	af
	inc	sp
	call	_msx2_sethz
	inc	sp
	pop	bc
00102$:
;demo.c:164: vdp_set_screen5();
	push	bc
	call	_vdp_set_screen5
	pop	bc
;demo.c:165: pal_load("KETTU16 PL5");
	push	bc
	ld	hl,#__str_3
	push	hl
	call	_pal_load
	pop	af
	pop	bc
;demo.c:169: memset((uint8_t *) &scratch, 0, 128);
	push	bc
	ld	hl,#0x0080
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:170: vdp_load_palette(scratch);
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
	pop	bc
;demo.c:172: ge5_load("KETTU16 SC5", 0, 0x0000);
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#__str_4
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:174: memset((uint8_t *) &scratch, 0, 128);
	push	bc
	ld	hl,#0x0080
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:176: install_isr(my_isr);
	push	bc
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
	pop	bc
;demo.c:178: while (!quit) {
00108$:
	xor	a,a
	or	a,c
	jr	NZ,00110$
;demo.c:179: waitVB();
		halt 
;demo.c:181: if (vbicount < 256) fadein();
	ld	a,(#_vbicount+0)
	sub	a,#0x00
	ld	a,(#_vbicount+1)
	sbc	a,#0x01
	jp	P,00104$
	push	bc
	call	_fadein
	pop	bc
	jr	00105$
00104$:
;demo.c:183: vdp_register(VDP_VOFFSET,vbicount & 255);
	ld	hl,#_vbicount + 0
	ld	b,(hl)
	push	bc
	push	bc
	inc	sp
	ld	a,#0x17
	push	af
	inc	sp
	call	_vdp_register
	pop	af
	pop	bc
00105$:
;demo.c:186: if(space())
	push	bc
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00108$
;demo.c:187: quit=1;
	ld	c,#0x01
	jr	00108$
00110$:
;demo.c:190: getchar();
	call	_getchar
;demo.c:192: waitVB();
		halt 
;demo.c:193: uninstall_isr();
	call	_uninstall_isr
;demo.c:194: PLY_Stop();
	call	_PLY_Stop
;demo.c:195: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:197: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:199: puts("demo exit\r\n\r\n");
	ld	hl,#__str_5
	push	hl
	call	_puts
	pop	af
;demo.c:201: exit(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_exit
	inc	sp
	ret
_main_end::
__str_0:
	.ascii "demo init"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "music init..."
	.db 0x00
__str_2:
	.ascii "done."
	.db 0x0A
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "KETTU16 PL5"
	.db 0x00
__str_4:
	.ascii "KETTU16 SC5"
	.db 0x00
__str_5:
	.ascii "demo exit"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _CABS
