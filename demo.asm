;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Mac OS X x86_64)
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ge5_load
	.globl _strcat
	.globl _vdp_load_screen
	.globl _vdp_set_write_address
	.globl _vdp_set_text
	.globl _vdp_set_screen5
	.globl _memset
	.globl _memcpy
	.globl _exit
	.globl _block_read
	.globl _block_set_data_ptr
	.globl _close
	.globl _open
	.globl _puts
	.globl _getchar
	.globl _filename
	.globl _scratch
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_scratch::
	.ds 128
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_filename::
	.ds 11
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;demo.c:11: char *strcat(char *dest, char *src)
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat::
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:13: char *rdest = dest;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:15: while (*dest)
	push	bc
	pop	iy
00101$:
	ld	a, 0 (iy)
	or	a, a
	jr	Z,00111$
;demo.c:16: dest++;
	inc	iy
	jr	00101$
;demo.c:17: while (*dest++ = *src++)
00111$:
	ld	e,6 (ix)
	ld	d,7 (ix)
00104$:
	ld	a,(de)
	inc	de
	ld	0 (iy), a
	inc	iy
	or	a, a
	jr	NZ,00104$
;demo.c:19: return rdest;
	ld	l, c
	ld	h, b
	pop	ix
	ret
;demo.c:22: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function ge5_load
; ---------------------------------
_ge5_load::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-47
	add	hl,sp
	ld	sp,hl
;demo.c:26: puts("memset f\r\n");
	ld	hl,#___str_0
	push	hl
	call	_puts
	pop	af
;demo.c:28: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0001
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x002e
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_memset
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:30: f.record_size = 128;
	ld	hl,#0x000f
	add	hl,bc
	ld	(hl),#0x80
;demo.c:31: f.drive = 0;
	xor	a, a
	ld	(bc),a
;demo.c:33: puts("memcpy name\r\n");
	push	bc
	ld	hl,#___str_1
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:35: memcpy(f.name, file_name, 11);    
	ld	e, c
	ld	d, b
	inc	de
	push	de
	pop	iy
	push	bc
	push	de
	ld	hl,#0x000b
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	push	iy
	call	_memcpy
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#___str_2
	push	hl
	call	_puts
	pop	af
	call	_puts
	ld	hl, #___str_3
	ex	(sp),hl
	call	_puts
	pop	af
	call	_getchar
	call	_vdp_set_screen5
	pop	bc
;demo.c:46: if (open(&f) != 0)
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_open
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00102$
;demo.c:47: return 0;
	ld	l,#0x00
	jp	00113$
00102$:
;demo.c:49: vdp_set_write_address(vramh, vraml);
	push	bc
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
	pop	bc
;demo.c:51: for (i = 0; i < 213; i++) {
	ld	e, c
	ld	d, b
	ld	-47 (ix),#0x00
00111$:
;demo.c:52: if (block_set_data_ptr(scratch) != 0)
	push	bc
	push	de
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00104$
;demo.c:53: return 0;
	ld	l,#0x00
	jr	00113$
00104$:
;demo.c:54: if (block_read(&f) != 0)
	ld	l, e
	ld	h, d
	push	bc
	push	de
	push	hl
	call	_block_read
	pop	af
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00106$
;demo.c:55: return 0;
	ld	l,#0x00
	jr	00113$
00106$:
;demo.c:56: if (i == 0)
	ld	a,-47 (ix)
	or	a, a
	jr	NZ,00108$
;demo.c:57: vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
	push	bc
	push	de
	ld	a,#0x79
	push	af
	inc	sp
	ld	hl,#(_scratch + 0x0007)
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	de
	pop	bc
	jr	00112$
00108$:
;demo.c:59: vdp_load_screen(scratch, 128);
	push	bc
	push	de
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	de
	pop	bc
00112$:
;demo.c:51: for (i = 0; i < 213; i++) {
	inc	-47 (ix)
	ld	a,-47 (ix)
	sub	a, #0xd5
	jr	C,00111$
;demo.c:62: close(&f);
	push	bc
	call	_close
	pop	af
;demo.c:64: return 1;
	ld	l,#0x01
00113$:
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "memset f"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "memcpy name"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "opening file: '"
	.db 0x00
___str_3:
	.ascii "'"
	.db 0x0d
	.db 0x0a
	.db 0x00
;demo.c:67: void main(char** argv, int argc) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;demo.c:69: puts("demo init\r\n");
	ld	hl,#___str_4
	push	hl
	call	_puts
;demo.c:71: ge5_load("KETTU16 SC5", 0, 0x0000);        // load at visible VRAM
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_5
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:73: getchar();
	call	_getchar
;demo.c:74: vdp_set_text();
	call	_vdp_set_text
;demo.c:76: exit(0);
	xor	a, a
	push	af
	inc	sp
	call	_exit
	inc	sp
	ret
___str_4:
	.ascii "demo init"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "KETTU16 SC5"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__filename:
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area _CABS (ABS)
