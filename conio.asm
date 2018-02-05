;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Mac OS X x86_64)
;--------------------------------------------------------
	.module conio
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putdec
	.globl _puthex
	.globl _putchar
	.globl _puts
	.globl _puthex8
	.globl _puthex16
	.globl _putdec8
	.globl _putdec16
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
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
;conio.c:7: void puts(char *s) {
;	---------------------------------
; Function puts
; ---------------------------------
_puts::
;conio.c:8: while (*s != 0) {
	pop	de
	pop	bc
	push	bc
	push	de
00101$:
	ld	a,(bc)
	or	a, a
	ret	Z
;conio.c:9: putchar(*s);
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;conio.c:10: s++;
	inc	bc
	jr	00101$
;conio.c:15: void puthex(int8_t nibbles, uint16_t v) {
;	---------------------------------
; Function puthex
; ---------------------------------
_puthex::
;conio.c:16: int8_t i = nibbles - 1;
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	dec	c
;conio.c:17: while (i >= 0) {
00104$:
	bit	7, c
	ret	NZ
;conio.c:18: uint16_t aux = (v >> (i << 2)) & 0x000F;
	ld	a,c
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	add	hl, hl
	add	hl, hl
	ld	b,l
	push	af
	ld	hl, #5
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	af
	inc	b
	jr	00123$
00122$:
	srl	d
	rr	e
00123$:
	djnz	00122$
	ld	a,e
	and	a, #0x0f
;conio.c:19: uint8_t n = aux & 0x000F;
	and	a, #0x0f
	ld	e,a
;conio.c:21: putchar('A' + (n - 10));
	ld	b,e
;conio.c:20: if (n > 9)
	ld	a,#0x09
	sub	a, e
	jr	NC,00102$
;conio.c:21: putchar('A' + (n - 10));
	ld	a,b
	add	a, #0x37
	ld	b,a
	push	bc
	push	bc
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	jr	00103$
00102$:
;conio.c:23: putchar('0' + n);
	ld	a,b
	add	a, #0x30
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
	jr	00104$
;conio.c:29: void puthex8(uint8_t v) {
;	---------------------------------
; Function puthex8
; ---------------------------------
_puthex8::
;conio.c:30: puthex(2, (uint16_t) v);
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	push	bc
	ld	a,#0x02
	push	af
	inc	sp
	call	_puthex
	pop	af
	inc	sp
	ret
;conio.c:34: void puthex16(uint16_t v) {
;	---------------------------------
; Function puthex16
; ---------------------------------
_puthex16::
;conio.c:35: puthex(4, v);
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	a,#0x04
	push	af
	inc	sp
	call	_puthex
	pop	af
	inc	sp
	ret
;conio.c:39: void putdec(int16_t digits, uint16_t v) {
;	---------------------------------
; Function putdec
; ---------------------------------
_putdec::
;conio.c:40: while (digits > 0) {
00101$:
	xor	a, a
	ld	iy,#2
	add	iy,sp
	cp	a, 0 (iy)
	sbc	a, 1 (iy)
	jp	PO, 00114$
	xor	a, #0x80
00114$:
	ret	P
;conio.c:41: uint16_t aux = v / digits;
	pop	de
	pop	bc
	push	bc
	push	de
	push	bc
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__divuint
	pop	af
	pop	af
;conio.c:42: uint8_t n = aux % 10;
	ld	bc,#0x000a
	push	bc
	push	hl
	call	__moduint
	pop	af
	pop	af
;conio.c:43: putchar('0' + n);
	ld	a,l
	add	a, #0x30
	ld	b,a
	push	bc
	inc	sp
	call	_putchar
	inc	sp
;conio.c:44: digits /= 10;
	ld	hl,#0x000a
	push	hl
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__divsint
	pop	af
	pop	af
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	jr	00101$
;conio.c:49: void putdec8(uint8_t v) {
;	---------------------------------
; Function putdec8
; ---------------------------------
_putdec8::
;conio.c:50: putdec(100, (uint16_t) v);
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	push	bc
	ld	hl,#0x0064
	push	hl
	call	_putdec
	pop	af
	pop	af
	ret
;conio.c:54: void putdec16(uint16_t v) {
;	---------------------------------
; Function putdec16
; ---------------------------------
_putdec16::
;conio.c:55: putdec(10000, v);
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	hl,#0x2710
	push	hl
	call	_putdec
	pop	af
	pop	af
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
