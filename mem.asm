;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Thu Feb  8 19:39:26 2018
;--------------------------------------------------------
	.module mem
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
	.globl _memset
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
;mem.c:7: void memcpy(uint8_t *dest, uint8_t *src, uint16_t n) {
;	---------------------------------
; Function memcpy
; ---------------------------------
_memcpy_start::
_memcpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;mem.c:8: while (n > 0) {
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	a,8 (ix)
	ld	-2 (ix),a
	ld	a,9 (ix)
	ld	-1 (ix),a
00101$:
	ld	a,-2 (ix)
	or	a,-1 (ix)
	jr	Z,00104$
;mem.c:9: *dest = *src;
	ld	a,(de)
	ld	(bc),a
;mem.c:10: dest++;
	inc	bc
;mem.c:11: src++;
	inc	de
;mem.c:12: n--;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	jr	00101$
00104$:
	ld	sp,ix
	pop	ix
	ret
_memcpy_end::
;mem.c:17: void memset(uint8_t *s, uint8_t c, uint16_t n) {
;	---------------------------------
; Function memset
; ---------------------------------
_memset_start::
_memset:
	push	ix
	ld	ix,#0
	add	ix,sp
;mem.c:18: while (n > 0) {
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	e,7 (ix)
	ld	d,8 (ix)
00101$:
	ld	a,e
	or	a,d
	jr	Z,00104$
;mem.c:19: *s = c;
	ld	a,6 (ix)
	ld	(bc),a
;mem.c:20: s++;
	inc	bc
;mem.c:21: n--;
	dec	de
	jr	00101$
00104$:
	pop	ix
	ret
_memset_end::
	.area _CODE
	.area _CABS
