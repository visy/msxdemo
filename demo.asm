;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Fri Feb  9 19:05:35 2018
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _do_blocks
	.globl _do_ymmm
	.globl _fadein
	.globl _pack_load
	.globl _pause
	.globl _pal_load
	.globl _scratch_clear
	.globl _ge5_load
	.globl _my_isr
	.globl _flof
	.globl _btab
	.globl _bty
	.globl _btx
	.globl _bsy
	.globl _bsx
	.globl _block_init
	.globl _cc
	.globl _yo
	.globl _tick
	.globl _vbicount
	.globl _block_palette
	.globl _cur_palette
	.globl _scratch
	.globl _packbuffer2
	.globl _packbuffer
	.globl _sintab
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_sintab::
	.ds 256
_packbuffer::
	.ds 5000
_packbuffer2::
	.ds 5000
_scratch::
	.ds 128
_cur_palette::
	.ds 32
_block_palette::
	.ds 32
_vbicount::
	.ds 2
_tick::
	.ds 2
_yo::
	.ds 1
_cc::
	.ds 1
_flipper:
	.ds 2
_ymmmf:
	.ds 2
_block_init::
	.ds 1
_bsx::
	.ds 2
_bsy::
	.ds 2
_btx::
	.ds 2
_bty::
	.ds 2
_btab::
	.ds 32
_flof::
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
;types.h:27: signed char sintab[256]={
	ld	hl,#_sintab
	call	__initrleblock
	.db	59
	.db	0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x12, 0x15
	.db	0x18, 0x1B, 0x1E, 0x21, 0x24, 0x27, 0x2A, 0x2D
	.db	0x30, 0x33, 0x36, 0x39, 0x3B, 0x3E, 0x41, 0x43
	.db	0x46, 0x49, 0x4B, 0x4E, 0x50, 0x52, 0x55, 0x57
	.db	0x59, 0x5B, 0x5E, 0x60, 0x62, 0x64, 0x66, 0x67
	.db	0x69, 0x6B, 0x6C, 0x6E, 0x70, 0x71, 0x72, 0x74
	.db	0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x7B
	.db	0x7C, 0x7D, 0x7D
	.db	#-5,#0x7E
	.db	1
	.db	0x7F
	.db	#-5,#0x7E
	.db	117
	.db	0x7D, 0x7D, 0x7C, 0x7B, 0x7B, 0x7A, 0x79, 0x78
	.db	0x77, 0x76, 0x75, 0x74, 0x72, 0x71, 0x70, 0x6E
	.db	0x6C, 0x6B, 0x69, 0x67, 0x66, 0x64, 0x62, 0x60
	.db	0x5E, 0x5B, 0x59, 0x57, 0x55, 0x52, 0x50, 0x4E
	.db	0x4B, 0x49, 0x46, 0x43, 0x41, 0x3E, 0x3B, 0x39
	.db	0x36, 0x33, 0x30, 0x2D, 0x2A, 0x27, 0x24, 0x21
	.db	0x1E, 0x1B, 0x18, 0x15, 0x12, 0x0F, 0x0C, 0x09
	.db	0x06, 0x03, 0x00, 0xFD, 0xFA, 0xF7, 0xF4, 0xF1
	.db	0xEE, 0xEB, 0xE8, 0xE5, 0xE2, 0xDF, 0xDC, 0xD9
	.db	0xD6, 0xD3, 0xD0, 0xCD, 0xCA, 0xC7, 0xC5, 0xC2
	.db	0xBF, 0xBD, 0xBA, 0xB7, 0xB5, 0xB2, 0xB0, 0xAE
	.db	0xAB, 0xA9, 0xA7, 0xA5, 0xA2, 0xA0, 0x9E, 0x9C
	.db	0x9A, 0x99, 0x97, 0x95, 0x94, 0x92, 0x90, 0x8F
	.db	0x8E, 0x8C, 0x8B, 0x8A, 0x89, 0x88, 0x87, 0x86
	.db	0x85, 0x85, 0x84, 0x83, 0x83
	.db	#-5,#0x82
	.db	1
	.db	0x81
	.db	#-5,#0x82
	.db	58
	.db	0x83, 0x83, 0x84, 0x85, 0x85, 0x86, 0x87, 0x88
	.db	0x89, 0x8A, 0x8B, 0x8C, 0x8E, 0x8F, 0x90, 0x92
	.db	0x94, 0x95, 0x97, 0x99, 0x9A, 0x9C, 0x9E, 0xA0
	.db	0xA2, 0xA5, 0xA7, 0xA9, 0xAB, 0xAE, 0xB0, 0xB2
	.db	0xB5, 0xB7, 0xBA, 0xBD, 0xBF, 0xC2, 0xC5, 0xC7
	.db	0xCA, 0xCD, 0xD0, 0xD3, 0xD6, 0xD9, 0xDC, 0xDF
	.db	0xE2, 0xE5, 0xE8, 0xEB, 0xEE, 0xF1, 0xF4, 0xF7
	.db	0xFA, 0xFD
	.db	0
;demo.c:13: uint8_t packbuffer[5000] = {0};
	ld	hl,#_packbuffer
	call	__initrleblock
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-47,#0x00
	.db	0
;demo.c:14: uint8_t packbuffer2[5000] = {0};
	ld	hl,#_packbuffer2
	call	__initrleblock
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-47,#0x00
	.db	0
;demo.c:20: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
	ld	1 (iy),#0x00
;demo.c:21: volatile int tick=0;
	ld	iy,#_tick
	ld	0 (iy),#0x00
	ld	iy,#_tick
	ld	1 (iy),#0x00
;demo.c:164: uint8_t yo = 0;
	ld	iy,#_yo
	ld	0 (iy),#0x00
;demo.c:165: uint8_t cc = 0;
	ld	iy,#_cc
	ld	0 (iy),#0x00
;demo.c:166: static int flipper = 0;
	ld	iy,#_flipper
	ld	0 (iy),#0x00
	ld	iy,#_flipper
	ld	1 (iy),#0x00
;demo.c:167: static int ymmmf = 0;
	ld	iy,#_ymmmf
	ld	0 (iy),#0x00
	ld	iy,#_ymmmf
	ld	1 (iy),#0x00
;demo.c:205: char block_init = 0;
	ld	iy,#_block_init
	ld	0 (iy),#0x00
;demo.c:207: int bsx = 0;
	ld	iy,#_bsx
	ld	0 (iy),#0x00
	ld	iy,#_bsx
	ld	1 (iy),#0x00
;demo.c:208: int bsy = 0;
	ld	iy,#_bsy
	ld	0 (iy),#0x00
	ld	iy,#_bsy
	ld	1 (iy),#0x00
;demo.c:209: int btx = 0;
	ld	iy,#_btx
	ld	0 (iy),#0x00
	ld	iy,#_btx
	ld	1 (iy),#0x00
;demo.c:210: int bty = 0;
	ld	iy,#_bty
	ld	0 (iy),#0x00
	ld	iy,#_bty
	ld	1 (iy),#0x00
;demo.c:212: int btab[16] = {0};
	ld	hl,#_btab
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:214: int flof = 0;
	ld	iy,#_flof
	ld	0 (iy),#0x00
	ld	iy,#_flof
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
;demo.c:27: void my_isr(void) interrupt
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
;demo.c:29: DI;
		di 
;demo.c:30: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:32: PLY_Play();
	call	_PLY_Play
;demo.c:33: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:35: vbicount++;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_vbicount
	inc	1 (iy)
00103$:
;demo.c:36: tick++;
	ld	iy,#_tick
	inc	0 (iy)
	jr	NZ,00104$
	ld	iy,#_tick
	inc	1 (iy)
00104$:
;demo.c:38: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
;demo.c:45: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
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
;demo.c:49: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:51: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:52: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:54: memcpy(f.name, file_name, 11);
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
;demo.c:56: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00102$
	ld	l,#0x00
	jp	00114$
00102$:
;demo.c:57: vdp_set_write_address(vramh, vraml);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:59: for (i = 0; i < 213; i++) {
	ld	c,#0x00
00110$:
	ld	a,c
	sub	a,#0xD5
	jp	NC,00113$
;demo.c:60: if (block_set_data_ptr(scratch) != 0) return 0;
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
	jp	00114$
00104$:
;demo.c:61: if (block_read(&f) != 0) return 0;
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
	jr	00114$
00106$:
;demo.c:63: if (i == 0) vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
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
;demo.c:64: else vdp_load_screen(scratch, 128);
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
;demo.c:59: for (i = 0; i < 213; i++) {
	inc	c
	jp	00110$
00113$:
;demo.c:67: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:69: return 1;
	ld	l,#0x01
00114$:
	ld	sp,ix
	pop	ix
	ret
_ge5_load_end::
;demo.c:72: void scratch_clear() {
;	---------------------------------
; Function scratch_clear
; ---------------------------------
_scratch_clear_start::
_scratch_clear:
;demo.c:73: memset((uint8_t *) &scratch, 0, 128);
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
	ret
_scratch_clear_end::
;demo.c:76: uint8_t pal_load(char *file_name, uint8_t ss) {
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
;demo.c:79: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:80: scratch_clear();
	call	_scratch_clear
;demo.c:82: f.record_size = ss;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,6 (ix)
	ld	(de),a
;demo.c:83: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:85: memcpy(f.name, file_name, 11);
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
;demo.c:87: if (open(&f) != 0) return 0;
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
;demo.c:88: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:89: if (block_read(&f) != 0) return 0;
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
;demo.c:91: memcpy(cur_palette, scratch+7, ss);
	ld	c,6 (ix)
	ld	b,#0x00
	ld	de,#_scratch + 7
	push	bc
	push	de
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:93: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:94: return 1;
	ld	l,#0x01
00107$:
	ld	sp,ix
	pop	ix
	ret
_pal_load_end::
;demo.c:98: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:99: uint8_t i,j,k = 0;
;demo.c:100: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:101: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:102: k++;
	inc	e
	dec	d
;demo.c:101: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:100: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:108: uint8_t pack_load(char *file_name, int size, char* buffer) {
;	---------------------------------
; Function pack_load
; ---------------------------------
_pack_load_start::
_pack_load:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:113: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:114: scratch_clear();
	call	_scratch_clear
;demo.c:116: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:117: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:119: memcpy(f.name, file_name, 11);
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
;demo.c:121: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00116$
	ld	l,#0x00
	jp	00110$
;demo.c:123: while(total < size) {
00116$:
	ld	bc,#0x0000
00107$:
	ld	a,c
	sub	a,6 (ix)
	ld	a,b
	sbc	a,7 (ix)
	jp	P,00109$
;demo.c:124: if (block_set_data_ptr(scratch) != 0) return 0;
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	ld	e,l
	pop	bc
	xor	a,a
	or	a,e
	jr	Z,00104$
	ld	l,#0x00
	jr	00110$
00104$:
;demo.c:125: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	bc
	push	hl
	call	_block_read
	pop	af
	ld	e,l
	pop	bc
	xor	a,a
	or	a,e
	jr	Z,00106$
	ld	l,#0x00
	jr	00110$
00106$:
;demo.c:127: memcpy(buffer+total,scratch,incr);
	ld	a,8 (ix)
	add	a,c
	ld	e,a
	ld	a,9 (ix)
	adc	a,b
	ld	d,a
	push	bc
	ld	hl,#0x0080
	push	hl
	ld	hl,#_scratch
	push	hl
	push	de
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;demo.c:129: total+=incr;
	ld	hl,#0x0080
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00107$
00109$:
;demo.c:132: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:134: return 1;
	ld	l,#0x01
00110$:
	ld	sp,ix
	pop	ix
	ret
_pack_load_end::
;demo.c:137: void fadein() {
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein_start::
_fadein:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:140: if (tick < 4) return;
	ld	a,(#_tick+0)
	sub	a,#0x04
	ld	a,(#_tick+1)
	sbc	a,#0x00
	jp	P,00102$
	jp	00113$
00102$:
;demo.c:142: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:144: for(i = 0; i < 32; i+=2) {
	ld	c,#0x00
00109$:
	ld	a,c
	sub	a,#0x20
	jp	NC,00112$
;demo.c:145: uint8_t r = scratch[i] >> 4;
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
;demo.c:146: uint8_t b = scratch[i] & 0xf;
	ld	a,b
	and	a,#0x0F
	ld	-1 (ix),a
;demo.c:147: uint8_t g = scratch[i+1];
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
;demo.c:149: if (r < (cur_palette[i] >> 4)) r++;
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
;demo.c:150: if (b < (cur_palette[i] & 0xf)) b++;
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
;demo.c:152: scratch[i] = (r << 4) | b;
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
;demo.c:153: if (g < cur_palette[i+1]) scratch[i+1]++;
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
;demo.c:144: for(i = 0; i < 32; i+=2) {
	inc	c
	inc	c
	jp	00109$
00112$:
;demo.c:157: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00113$:
	ld	sp,ix
	pop	ix
	ret
_fadein_end::
;demo.c:169: void do_ymmm() {
;	---------------------------------
; Function do_ymmm
; ---------------------------------
_do_ymmm_start::
_do_ymmm:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;demo.c:174: if (tick > 16) { tick = 0; flipper++;}
	ld	a,#0x10
	ld	iy,#_tick
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_tick
	sbc	a,1 (iy)
	jp	P,00102$
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
	ld	iy,#_flipper
	inc	0 (iy)
	jr	NZ,00129$
	ld	iy,#_flipper
	inc	1 (iy)
00129$:
00102$:
;demo.c:175: if (flipper > 4) { flipper = 0;}
	ld	a,#0x04
	ld	iy,#_flipper
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_flipper
	sbc	a,1 (iy)
	jp	P,00104$
	ld	hl,#_flipper + 0
	ld	(hl), #0x00
	ld	hl,#_flipper + 1
	ld	(hl), #0x00
00104$:
;demo.c:178: for (yo = 0; yo<212-step;yo+=step) {
	ld	hl,#_yo + 0
	ld	(hl), #0x00
00115$:
	ld	hl,#_yo + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	sub	a,#0xD1
	ld	a,b
	sbc	a,#0x00
	jp	P,00118$
;demo.c:179: xo = ((sintab[(vbicount+yo) & 255]+64)>>3);
	ld	a,(#_vbicount+0)
	add	a,c
	ld	e,a
	ld	a,(#_vbicount+1)
	adc	a,b
	ld	d,#0x00
	ld	hl,#_sintab
	add	hl,de
	ld	a,(hl)
	ld	e,a
	rla	
	sbc	a,a
	ld	d,a
	ld	hl,#0x0040
	add	hl,de
	ld	e,l
	ld	d,h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	-16 (ix),e
;demo.c:181: if (yo < 164) {
	ld	a,(#_yo+0)
	sub	a,#0xA4
	jp	NC,00114$
;demo.c:182: if (flipper == 3)  vdp_register(VDP_VOFFSET,((sintab[vbicount+yo]&255)*xo)/128);
	ld	a,(#_flipper+0)
	sub	a,#0x03
	jr	NZ,00131$
	ld	a,(#_flipper+1)
	or	a,a
	jr	Z,00132$
00131$:
	jr	00111$
00132$:
	ld	a,(#_vbicount+0)
	add	a,c
	ld	e,a
	ld	a,(#_vbicount+1)
	adc	a,b
	ld	d,a
	ld	hl,#_sintab
	add	hl,de
	ld	e,-16 (ix)
	ld	h,e
	ld	l,#0x00
	ld	d,l
	ld	b,#0x08
00133$:
	add	hl,hl
	jr	NC,00134$
	add	hl,de
00134$:
	djnz	00133$
	ex	de,hl
	ld	hl,#0x0080
	push	hl
	push	de
	call	__divsint_rrx_s
	pop	af
	pop	af
	ld	a,l
	push	af
	inc	sp
	ld	a,#0x17
	push	af
	inc	sp
	call	_vdp_register
	pop	af
	jp	00114$
00111$:
;demo.c:183: else if (flipper == 1) vdp_register(VDP_VOFFSET,((sintab[((vbicount>>1)+yo>>1)&255])/4));
	ld	a,(#_flipper+0)
	sub	a,#0x01
	jr	NZ,00135$
	ld	a,(#_flipper+1)
	or	a,a
	jr	Z,00136$
00135$:
	jr	00108$
00136$:
	ld	hl,#_vbicount + 0
	ld	e,(hl)
	ld	hl,#_vbicount + 1
	ld	d,(hl)
	sra	d
	rr	e
	ld	a,e
	add	a,c
	ld	e,a
	ld	a,d
	adc	a,b
	ld	d,a
	sra	d
	rr	e
	ld	d,#0x00
	ld	hl,#_sintab
	add	hl,de
	ld	e,(hl)
	ld	d,#0x04
	push	de
	call	__divuschar_rrx_s
	pop	af
	ld	a,l
	push	af
	inc	sp
	ld	a,#0x17
	push	af
	inc	sp
	call	_vdp_register
	pop	af
	jr	00114$
00108$:
;demo.c:184: else if (flipper == 2) vdp_register(VDP_VOFFSET,((sintab[((vbicount)+yo)&255])/3));
	ld	a,(#_flipper+0)
	sub	a,#0x02
	jr	NZ,00139$
	ld	a,(#_flipper+1)
	or	a,a
	jr	Z,00140$
00139$:
	jr	00114$
00140$:
	ld	a,(#_vbicount+0)
	add	a,c
	ld	c,a
	ld	a,(#_vbicount+1)
	adc	a,b
	ld	b,#0x00
	ld	hl,#_sintab
	add	hl,bc
	ld	a,(hl)
	ld	c,a
	ld	a,#0x03
	ld	b,a
	push	bc
	call	__divuschar_rrx_s
	pop	af
	ld	a,l
	push	af
	inc	sp
	ld	a,#0x17
	push	af
	inc	sp
	call	_vdp_register
	pop	af
00114$:
;demo.c:186: msx2_palette(1,xo>>1,xo>>1,xo>>2);
	ld	c,-16 (ix)
	srl	c
	srl	c
	ld	b,-16 (ix)
	srl	b
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	push	bc
	inc	sp
	ld	a,#0x01
	push	af
	inc	sp
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:187: cmd.source_x = 80;
	ld	hl,#0x0003
	add	hl,sp
	ld	(hl),#0x50
	inc	hl
	ld	(hl),#0x00
;demo.c:188: cmd.source_y = 256+yo;
	ld	hl,#0x0003
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	-18 (ix),l
	ld	-17 (ix),h
	ld	hl,#_yo + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0100
	add	hl,de
	ex	de,hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:189: cmd.dest_x = 80+xo;
	ld	hl,#0x0004
	add	hl,bc
	ld	-18 (ix),l
	ld	-17 (ix),h
	ld	e,-16 (ix)
	ld	d,#0x00
	ld	hl,#0x0050
	add	hl,de
	ex	de,hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:190: cmd.dest_y = yo;
	ld	hl,#0x0006
	add	hl,bc
	ld	-18 (ix),l
	ld	-17 (ix),h
	ld	hl,#_yo + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:191: cmd.size_x = 64+32;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x60
	inc	hl
	ld	(hl),#0x00
;demo.c:192: cmd.size_y = 2;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:193: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:194: cmd.argument = 0;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:195: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0xD0
	ld	(de),a
;demo.c:198: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:178: for (yo = 0; yo<212-step;yo+=step) {
	ld	hl,#_yo + 0
	ld	c,(hl)
	ld	hl,#_yo
	ld	a,c
	add	a,#0x03
	ld	(hl),a
	jp	00115$
00118$:
;demo.c:201: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
	ld	sp,ix
	pop	ix
	ret
_do_ymmm_end::
;demo.c:216: void do_blocks() {
;	---------------------------------
; Function do_blocks
; ---------------------------------
_do_blocks_start::
_do_blocks:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-23
	add	hl,sp
	ld	sp,hl
;demo.c:219: int ys = 0;
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
;demo.c:220: int ye = 0;
	ld	-21 (ix),#0x00
	ld	-20 (ix),#0x00
;demo.c:222: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:224: if (block_init == 0) {
	xor	a,a
	ld	iy,#_block_init
	or	a,0 (iy)
	jp	NZ,00108$
;demo.c:226: uninstall_isr();
	call	_uninstall_isr
;demo.c:227: PLY_Stop();
	call	_PLY_Stop
;demo.c:228: PLY_PSGReg8 = 0;
	ld	hl,#_PLY_PSGReg8 + 0
	ld	(hl), #0x00
;demo.c:229: PLY_PSGReg9 = 0;
	ld	hl,#_PLY_PSGReg9 + 0
	ld	(hl), #0x00
;demo.c:230: PLY_PSGReg10 = 0;
	ld	hl,#_PLY_PSGReg10 + 0
	ld	(hl), #0x00
;demo.c:231: for(i=0;i<16;i++) btab[i] = i*16;
	ld	-17 (ix),#0x00
	ld	-16 (ix),#0x00
00110$:
	ld	a,-17 (ix)
	sub	a,#0x10
	ld	a,-16 (ix)
	sbc	a,#0x00
	jp	P,00113$
	ld	c,-17 (ix)
	ld	b,-16 (ix)
	sla	c
	rl	b
	ld	hl,#_btab
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e,-17 (ix)
	ld	d,-16 (ix)
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	-17 (ix)
	jr	NZ,00139$
	inc	-16 (ix)
00139$:
	jr	00110$
00113$:
;demo.c:232: bitbuster(packbuffer2,0x8000); // to page 2
	ld	hl,#0x8000
	push	hl
	ld	hl,#_packbuffer2
	push	hl
	call	_bitbuster
	pop	af
	pop	af
;demo.c:233: vdp_load_palette(block_palette);
	ld	hl,#_block_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:235: block_init = 1;
	ld	hl,#_block_init + 0
	ld	(hl), #0x01
;demo.c:237: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
	jp	00122$
00108$:
;demo.c:239: if (flof == 0) { ys = 0; ye = 8; }
	ld	a,(#_flof+0)
	ld	iy,#_flof
	or	a,1 (iy)
	jr	NZ,00102$
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
	ld	-21 (ix),#0x08
	ld	-20 (ix),#0x00
00102$:
;demo.c:240: if (flof == 1) { ys = 8; ye = 16; }
	ld	a,(#_flof+0)
	sub	a,#0x01
	jr	NZ,00140$
	ld	a,(#_flof+1)
	or	a,a
	jr	Z,00141$
00140$:
	jr	00104$
00141$:
	ld	-19 (ix),#0x08
	ld	-18 (ix),#0x00
	ld	-21 (ix),#0x10
	ld	-20 (ix),#0x00
00104$:
;demo.c:242: for(bty=3;bty<11;bty++) {
	ld	iy,#_bty
	ld	0 (iy),#0x03
	ld	iy,#_bty
	ld	1 (iy),#0x00
00118$:
	ld	a,(#_bty+0)
	sub	a,#0x0B
	ld	a,(#_bty+1)
	sbc	a,#0x00
	jp	P,00121$
;demo.c:243: for(btx=ys;btx<ye;btx++) {
	ld	a,-19 (ix)
	ld	iy,#_btx
	ld	0 (iy),a
	ld	a,-18 (ix)
	ld	iy,#_btx
	ld	1 (iy),a
00114$:
	ld	a,(#_btx+0)
	sub	a,-21 (ix)
	ld	a,(#_btx+1)
	sbc	a,-20 (ix)
	jp	P,00120$
;demo.c:244: bsx = (PLY_PSGReg8 & PLY_PSGReg9 | PLY_PSGReg10)>>1;
	ld	a,(#_PLY_PSGReg8+0)
	ld	iy,#_PLY_PSGReg9
	and	a,0 (iy)
	ld	hl,#_PLY_PSGReg10 + 0
	or	a,(hl)
	ld	c,a
	srl	c
	ld	hl,#_bsx + 0
	ld	(hl), c
	ld	hl,#_bsx + 1
	ld	(hl), #0x00
;demo.c:245: bsy = PLY_PSGReg10;
	ld	a,(#_PLY_PSGReg10+0)
	ld	hl,#_bsy + 0
	ld	(hl), a
	ld	hl,#_bsy + 1
	ld	(hl), #0x00
;demo.c:246: cmd.source_x = btab[bsx];
	ld	hl,#0x0008
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#_bsx + 0
	ld	e,(hl)
	ld	hl,#_bsx + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:247: cmd.source_y = 256+btab[bsy];
	ld	hl,#0x0008
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	hl,#_bsy + 0
	ld	e,(hl)
	ld	hl,#_bsy + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0100
	add	hl,de
	ex	de,hl
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:248: cmd.dest_x = btab[btx];
	ld	hl,#0x0004
	add	hl,bc
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	hl,#_btx + 0
	ld	e,(hl)
	ld	hl,#_btx + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:249: cmd.dest_y = btab[bty];
	ld	hl,#0x0006
	add	hl,bc
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	hl,#_bty + 0
	ld	e,(hl)
	ld	hl,#_bty + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:250: cmd.size_x = 16;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:251: cmd.size_y = 16;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:252: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:253: cmd.argument = 0;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:254: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0xD0
	ld	(de),a
;demo.c:255: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:243: for(btx=ys;btx<ye;btx++) {
	ld	iy,#_btx
	inc	0 (iy)
	jr	NZ,00150$
	ld	iy,#_btx
	inc	1 (iy)
00150$:
	jp	00114$
00120$:
;demo.c:242: for(bty=3;bty<11;bty++) {
	ld	iy,#_bty
	inc	0 (iy)
	jr	NZ,00151$
	ld	iy,#_bty
	inc	1 (iy)
00151$:
	jp	00118$
00121$:
;demo.c:259: flof++;
	ld	iy,#_flof
	inc	0 (iy)
	jr	NZ,00152$
	ld	iy,#_flof
	inc	1 (iy)
00152$:
;demo.c:260: if (flof == 2) flof = 0;
	ld	a,(#_flof+0)
	sub	a,#0x02
	jr	NZ,00153$
	ld	a,(#_flof+1)
	or	a,a
	jr	Z,00154$
00153$:
	jr	00122$
00154$:
	ld	hl,#_flof + 0
	ld	(hl), #0x00
	ld	hl,#_flof + 1
	ld	(hl), #0x00
00122$:
	ld	sp,ix
	pop	ix
	ret
_do_blocks_end::
;demo.c:270: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-16
	add	hl,sp
	ld	sp,hl
;demo.c:271: unsigned char quit=0;
	ld	-1 (ix),#0x00
;demo.c:274: spindown();
	call	_spindown
;demo.c:276: puts("demo init\r\n\r\n");
	ld	hl,#__str_0
	push	hl
	call	_puts
	pop	af
;demo.c:278: puts("music init...");
	ld	hl,#__str_1
	push	hl
	call	_puts
	pop	af
;demo.c:280: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:281: PLY_Init();
	call	_PLY_Init
;demo.c:282: puts("done.\n\n");
	ld	hl,#__str_2
	push	hl
	call	_puts
	pop	af
;demo.c:284: if(isvdp2())
	call	_isvdp2
	xor	a,a
	or	a,l
	jr	Z,00102$
;demo.c:286: msx2_sethz(50);
	ld	a,#0x32
	push	af
	inc	sp
	call	_msx2_sethz
	inc	sp
00102$:
;demo.c:290: puts("demo start\r\n");
	ld	hl,#__str_3
	push	hl
	call	_puts
	pop	af
;demo.c:292: scratch_clear();
	call	_scratch_clear
;demo.c:293: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:295: vdp_set_screen5();
	call	_vdp_set_screen5
;demo.c:297: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:299: pal_load("STDBLCK PL5", 32);
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_4
	push	hl
	call	_pal_load
	pop	af
	inc	sp
;demo.c:300: memcpy(block_palette,cur_palette,32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_block_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:302: pal_load("KETTU16 PL5", 32);
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_5
	push	hl
	call	_pal_load
	pop	af
	inc	sp
;demo.c:304: memset((uint8_t *) &packbuffer, 0, 5000);
	ld	hl,#0x1388
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_packbuffer
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:305: pack_load("KETTU16 PCK", 4502, packbuffer);
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x1196
	push	hl
	ld	hl,#__str_6
	push	hl
	call	_pack_load
	pop	af
	pop	af
	pop	af
;demo.c:306: bitbuster(packbuffer,0x8000); // to page 1
	ld	hl,#0x8000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
;demo.c:308: memset((uint8_t *) &packbuffer2, 0, 5000);
	ld	hl,#0x1388
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_packbuffer2
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:309: pack_load("STDBLCK PCK", 4884, packbuffer2);
	ld	hl,#_packbuffer2
	push	hl
	ld	hl,#0x1314
	push	hl
	ld	hl,#__str_7
	push	hl
	call	_pack_load
	pop	af
	pop	af
	pop	af
;demo.c:311: scratch_clear();
	call	_scratch_clear
;demo.c:313: cmd.source_x = 0;
	ld	hl,#0x0000
	add	hl,sp
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:314: cmd.source_y = 256;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	c,e
	ld	b,d
	ld	l,c
	ld	h,b
	inc	hl
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:315: cmd.dest_x = 0;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:316: cmd.dest_y = 0;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:317: cmd.size_x = 256;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:318: cmd.size_y = 212;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:319: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:320: cmd.argument = 0;
	ld	hl,#0x000D
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:321: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0xD0
	ld	(bc),a
;demo.c:323: vdp_copier(&cmd);
	push	de
	call	_vdp_copier
	pop	af
;demo.c:326: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
;demo.c:328: while (!quit) {
00112$:
	xor	a,a
	or	a,-1 (ix)
	jr	NZ,00114$
;demo.c:329: waitVB();
		halt 
;demo.c:331: if (vbicount < 192) { 
	ld	a,(#_vbicount+0)
	sub	a,#0xC0
	ld	a,(#_vbicount+1)
	sbc	a,#0x00
	jp	P,00108$
;demo.c:332: fadein(); 
	call	_fadein
	jr	00109$
00108$:
;demo.c:333: } else if (vbicount >= 192 && vbicount < 500) {
	ld	a,(#_vbicount+0)
	sub	a,#0xC0
	ld	a,(#_vbicount+1)
	sbc	a,#0x00
	jp	M,00104$
	ld	a,(#_vbicount+0)
	sub	a,#0xF4
	ld	a,(#_vbicount+1)
	sbc	a,#0x01
	jp	P,00104$
;demo.c:334: do_ymmm();
	call	_do_ymmm
	jr	00109$
00104$:
;demo.c:336: do_blocks();
	call	_do_blocks
00109$:
;demo.c:339: if(space())
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	ld	c,l
	xor	a,a
	or	a,l
	jr	Z,00112$
;demo.c:340: quit=1;
	ld	-1 (ix),#0x01
	jr	00112$
00114$:
;demo.c:343: waitVB();
		halt 
;demo.c:344: uninstall_isr();
	call	_uninstall_isr
;demo.c:345: PLY_Stop();
	call	_PLY_Stop
;demo.c:346: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:348: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:350: puts("demo exit\r\n\r\n");
	ld	hl,#__str_8
	push	hl
	call	_puts
	pop	af
;demo.c:352: exit(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_exit
	inc	sp
	ld	sp,ix
	pop	ix
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
	.ascii "demo start"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "STDBLCK PL5"
	.db 0x00
__str_5:
	.ascii "KETTU16 PL5"
	.db 0x00
__str_6:
	.ascii "KETTU16 PCK"
	.db 0x00
__str_7:
	.ascii "STDBLCK PCK"
	.db 0x00
__str_8:
	.ascii "demo exit"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _CABS
