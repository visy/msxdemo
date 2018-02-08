;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Fri Feb  9 00:49:12 2018
;--------------------------------------------------------
	.module conio
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putdec
	.globl _puthex
	.globl _sintab
	.globl _puts
	.globl _puthex8
	.globl _puthex16
	.globl _putdec8
	.globl _putdec16
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_sintab::
	.ds 256
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;conio.c:7: void puts(char *s) {
;	---------------------------------
; Function puts
; ---------------------------------
_puts_start::
_puts:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:8: while (*s != 0) {
	ld	c,4 (ix)
	ld	b,5 (ix)
00101$:
	ld	a,(bc)
	ld	e,a
	or	a,a
	jr	Z,00104$
;conio.c:9: putchar(*s);
	push	bc
	ld	a,e
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;conio.c:10: s++;
	inc	bc
	jr	00101$
00104$:
	pop	ix
	ret
_puts_end::
;conio.c:15: void puthex(int8_t nibbles, uint16_t v) {
;	---------------------------------
; Function puthex
; ---------------------------------
_puthex_start::
_puthex:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:16: int8_t i = nibbles - 1;
	ld	a,4 (ix)
	dec	a
	ld	c,a
;conio.c:17: while (i >= 0) {
00104$:
	ld	a,c
	bit	7,a
	jp	NZ,00107$
;conio.c:18: uint16_t aux = (v >> (i << 2)) & 0x000F;
	ld	a,c
	ld	e,a
	rla	
	sbc	a,a
	ld	d,a
	sla	e
	rl	d
	sla	e
	rl	d
	ld	a,e
	inc	a
	push	af
	ld	e,5 (ix)
	ld	d,6 (ix)
	pop	af
	jr	00116$
00115$:
	srl	d
	rr	e
00116$:
	dec	a
	jr	NZ,00115$
	ld	a,e
	and	a,#0x0F
;conio.c:19: uint8_t n = aux & 0x000F;
	and	a,#0x0F
	ld	e,a
	ld	b,e
;conio.c:20: if (n > 9)
	ld	a,#0x09
	sub	a,b
	jr	NC,00102$
;conio.c:21: putchar('A' + (n - 10));
	ld	a,b
	add	a,#0x37
	ld	e,a
	push	bc
	ld	a,e
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	jr	00103$
00102$:
;conio.c:23: putchar('0' + n);
	ld	a,b
	add	a,#0x30
	ld	b,a
	push	bc
	push	bc
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
00103$:
;conio.c:24: i--;
	dec	c
	jp	00104$
00107$:
	pop	ix
	ret
_puthex_end::
;conio.c:29: void puthex8(uint8_t v) {
;	---------------------------------
; Function puthex8
; ---------------------------------
_puthex8_start::
_puthex8:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:30: puthex(2, (uint16_t) v);
	ld	c,4 (ix)
	ld	b,#0x00
	push	bc
	ld	a,#0x02
	push	af
	inc	sp
	call	_puthex
	pop	af
	inc	sp
	pop	ix
	ret
_puthex8_end::
;conio.c:34: void puthex16(uint16_t v) {
;	---------------------------------
; Function puthex16
; ---------------------------------
_puthex16_start::
_puthex16:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:35: puthex(4, v);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,#0x04
	push	af
	inc	sp
	call	_puthex
	pop	af
	inc	sp
	pop	ix
	ret
_puthex16_end::
;conio.c:39: void putdec(int16_t digits, uint16_t v) {
;	---------------------------------
; Function putdec
; ---------------------------------
_putdec_start::
_putdec:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:40: while (digits > 0) {
00101$:
	ld	a,#0x00
	sub	a,4 (ix)
	ld	a,#0x00
	sbc	a,5 (ix)
	jp	P,00104$
;conio.c:41: uint16_t aux = v / digits;
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	push	iy
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	call	__divuint_rrx_s
	pop	af
	pop	af
	ld	b,h
	ld	c,l
	push	bc
	pop	iy
;conio.c:42: uint8_t n = aux % 10;
	ld	hl,#0x000A
	push	hl
	push	iy
	call	__moduint_rrx_s
	pop	af
	pop	af
;conio.c:43: putchar('0' + n);
	ld	a,l
	add	a,#0x30
	push	af
	inc	sp
	call	_putchar
	inc	sp
;conio.c:44: digits /= 10;
	ld	hl,#0x000A
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__divsint_rrx_s
	pop	af
	pop	af
	ld	b,h
	ld	4 (ix),l
	ld	5 (ix),b
	jp	00101$
00104$:
	pop	ix
	ret
_putdec_end::
;conio.c:49: void putdec8(uint8_t v) {
;	---------------------------------
; Function putdec8
; ---------------------------------
_putdec8_start::
_putdec8:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:50: putdec(100, (uint16_t) v);
	ld	c,4 (ix)
	ld	b,#0x00
	push	bc
	ld	hl,#0x0064
	push	hl
	call	_putdec
	pop	af
	pop	af
	pop	ix
	ret
_putdec8_end::
;conio.c:54: void putdec16(uint16_t v) {
;	---------------------------------
; Function putdec16
; ---------------------------------
_putdec16_start::
_putdec16:
	push	ix
	ld	ix,#0
	add	ix,sp
;conio.c:55: putdec(10000, v);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	hl,#0x2710
	push	hl
	call	_putdec
	pop	af
	pop	af
	pop	ix
	ret
_putdec16_end::
	.area _CODE
	.area _CABS
