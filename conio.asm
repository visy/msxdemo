;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Wed Feb  7 20:19:51 2018
;--------------------------------------------------------
	.module conio
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putdec
	.globl _puthex
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
