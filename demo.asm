;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Wed Feb  7 00:32:14 2018
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _cls
	.globl _pause
	.globl _pal_load
	.globl _ge5_load
	.globl _my_isr
	.globl _strcat
	.globl _vbicount
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
_vbicount::
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
;demo.c:22: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
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
;demo.c:13: char *strcat(char *dest, char *src) {
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat_start::
_strcat:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:14: char *rdest = dest;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:15: while (*dest)
	ld	e,c
	ld	d,b
00101$:
	ld	a,(de)
	or	a,a
	jr	Z,00111$
;demo.c:16: dest++;
	inc	de
	jr	00101$
;demo.c:17: while (*dest++ = *src++)
00111$:
	ld	a,6 (ix)
	ld	-2 (ix),a
	ld	a,7 (ix)
	ld	-1 (ix),a
00104$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	inc	-2 (ix)
	jr	NZ,00115$
	inc	-1 (ix)
00115$:
	ld	(de),a
	inc	de
	or	a,a
	jr	NZ,00104$
;demo.c:19: return rdest;
	ld	l,c
	ld	h,b
	ld	sp,ix
	pop	ix
	ret
_strcat_end::
;demo.c:24: void my_isr(void) interrupt
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
;demo.c:26: DI;
		di 
;demo.c:27: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:29: PLY_Play();
	call	_PLY_Play
;demo.c:30: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:32: vbicount++;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_vbicount
	inc	1 (iy)
00103$:
;demo.c:34: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
;demo.c:37: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
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
;demo.c:41: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:43: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:44: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:46: memcpy(f.name, file_name, 11);
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
;demo.c:48: if (open(&f) != 0) return 0;
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
;demo.c:49: vdp_set_write_address(vramh, vraml);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:51: for (i = 0; i < 213; i++) {
	ld	c,#0x00
00110$:
	ld	a,c
	sub	a,#0xD5
	jp	NC,00113$
;demo.c:52: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:53: if (block_read(&f) != 0) return 0;
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
;demo.c:55: if (i == 0) vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
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
;demo.c:56: else vdp_load_screen(scratch, 128);
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
;demo.c:51: for (i = 0; i < 213; i++) {
	inc	c
	jp	00110$
00113$:
;demo.c:59: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:61: return 1;
	ld	l,#0x01
00114$:
	ld	sp,ix
	pop	ix
	ret
_ge5_load_end::
;demo.c:64: uint8_t pal_load(char *file_name) {
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
;demo.c:67: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:68: memset((uint8_t *) &scratch, 0, 128);
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
;demo.c:70: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:71: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:73: memcpy(f.name, file_name, 11);
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
;demo.c:75: if (open(&f) != 0) return 0;
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
;demo.c:76: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:77: if (block_read(&f) != 0) return 0;
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
;demo.c:79: vdp_load_palette(scratch+7);
	ld	bc,#_scratch + 7
	push	bc
	call	_vdp_load_palette
	pop	af
;demo.c:81: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:82: return 1;
	ld	l,#0x01
00107$:
	ld	sp,ix
	pop	ix
	ret
_pal_load_end::
;demo.c:85: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:86: uint8_t i,j,k = 0;
;demo.c:87: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:88: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:89: k++;
	inc	e
	dec	d
;demo.c:88: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:87: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:94: void cls(uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function cls
; ---------------------------------
_cls_start::
_cls:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:95: vdp_set_write_address(vramh, vraml);
	ld	l,5 (ix)
	ld	h,6 (ix)
	push	hl
	ld	a,4 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:96: memset((uint8_t *) &scratch, 0, 128);
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
;demo.c:97: vdp_load_screen(scratch, 128);
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
;demo.c:100: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;demo.c:102: unsigned char quit=0;
	ld	c,#0x00
;demo.c:104: spindown();
	push	bc
	call	_spindown
	pop	bc
;demo.c:106: puts("demo init\r\n\r\n");
	push	bc
	ld	hl,#__str_0
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:108: puts("music init...");
	push	bc
	ld	hl,#__str_1
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:110: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:111: PLY_Init();
	push	bc
	call	_PLY_Init
	pop	bc
;demo.c:112: puts("done.\n\n");
	push	bc
	ld	hl,#__str_2
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:114: if(isvdp2())
	push	bc
	call	_isvdp2
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00102$
;demo.c:116: msx2_sethz(50);
	push	bc
	ld	a,#0x32
	push	af
	inc	sp
	call	_msx2_sethz
	inc	sp
	pop	bc
00102$:
;demo.c:120: vdp_set_screen5();
	push	bc
	call	_vdp_set_screen5
	pop	bc
;demo.c:121: pal_load("KETTU16 PL5");
	push	bc
	ld	hl,#__str_3
	push	hl
	call	_pal_load
	pop	af
	pop	bc
;demo.c:122: ge5_load("KETTU16 SC5", 0, 0x0000);
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
;demo.c:124: install_isr(my_isr);
	push	bc
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
	pop	bc
;demo.c:126: while (!quit) {
00105$:
	xor	a,a
	or	a,c
	jr	NZ,00107$
;demo.c:127: waitVB();
		halt 
;demo.c:128: if(space())
	push	bc
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00105$
;demo.c:129: quit=1;
	ld	c,#0x01
	jr	00105$
00107$:
;demo.c:132: getchar();
	call	_getchar
;demo.c:134: waitVB();
		halt 
;demo.c:135: uninstall_isr();
	call	_uninstall_isr
;demo.c:136: PLY_Stop();
	call	_PLY_Stop
;demo.c:137: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:139: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:141: puts("demo exit\r\n\r\n");
	ld	hl,#__str_5
	push	hl
	call	_puts
	pop	af
;demo.c:143: exit(0);
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
