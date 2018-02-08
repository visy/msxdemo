;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Thu Feb  8 01:14:22 2018
;--------------------------------------------------------
	.module aplib
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _aPLib_depack
	.globl _aPLib_R0
	.globl _aPLib_LWM
	.globl _aPLib_bits
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_aPLib_bits::
	.ds 2
_aPLib_LWM::
	.ds 1
_aPLib_R0::
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;aplib.c:31: void aPLib_depack (void *dest, void *src) {
;	---------------------------------
; Function aPLib_depack
; ---------------------------------
_aPLib_depack_start::
_aPLib_depack:
	push	ix
	ld	ix,#0
	add	ix,sp
;aplib.c:175: __endasm;
	
		 pop bc
		 pop de
		 pop hl
		 push hl
		 push de
		 push bc
	
;	aPPack decompressor
;	original source by dwedit
;	very slightly adapted by utopian
;	optimized by Metalbrain
	
;hl	= source
;de	= dest
	
	depack:
	ld	a,#128
	apbranch1:
	ldi
	aploop2:
	ld	ixh,#1
	aploop:
	call	ap_getbit
		   jr nc,apbranch1
		   call ap_getbit
		   jr nc,apbranch2
		   call ap_getbit
		   jr nc,apbranch3
	
		   ld bc,#16 ;get an offset
	apget4bits:
	call	ap_getbit
		   rl c
		   jr nc,apget4bits
		   jr nz,apbranch4
		   ex de,hl
		   ld (hl),b ;write a 0
		   ex de,hl
		   inc de
		   jp aploop2
	apbranch4:
	ex	af,af`
		   ex de,hl ;write a previous byte (1-15 away from dest)
		   sbc hl,bc
		   ld a,(hl)
		   add hl,bc
		   ld (hl),a
		   ex af,af`
		   ex de,hl
		   inc de
		   jp aploop2
	
	apbranch3:
	ld	c,(hl) ;use 7 bit offset, length = 2 or 3
		   inc hl
		   ex af,af`
		   rr c
		   ret z ;if a zero is found here, its EOF
		   ld a,#2
		   ld b,#0
		   adc a,b
		   push hl
		   ld iyh,b
		   ld iyl,c
		   ld h,d
		   ld l,e
		   sbc hl,bc
		   ld c,a
		   ex af,af`
		   ldir
		   pop hl
		   ld ixh,b
		   jp aploop
	apbranch2:
	call	ap_getgamma ;use a gamma code * 256 for offset, another gamma code for length
		   dec c
		   ex af,af`
		   ld a,c
		   sub ixh
		   jr z,ap_r0_gamma
		   dec a
	
		   ;do I even need this code?
		   ;bc=bc*256+(hl), lazy 16bit way
		   ld b,a
		   ld c,(hl)
		   inc hl
		   ld iyh,b
		   ld iyl,c
	
		   push bc
	
		   call ap_getgamma2
	
		   ex (sp),hl ;bc = len, hl=offs
		   push de
		   ex de,hl
	
		   ex af,af`
		   ld a,4
		   cp d
		   jr nc,apskip2
		   inc bc
		   or a
	apskip2:
	ld	hl,127
		   sbc hl,de
		   jr c,apskip3
		   inc bc
		   inc bc
	apskip3:
	pop	hl ;bc = len, de = offs, hl=junk
		   push hl
		   or a
		   sbc hl,de
		   ex af,af`
		   pop de ;hl=dest-offs, bc=len, de = dest
		   ldir
		   pop hl
		   ld ixh,b
		   jp aploop
	
	ap_r0_gamma:
	call	ap_getgamma2 ;and a new gamma code for length
		   push hl
		   push de
		   ex de,hl
	
		   ld d,iyh
		   ld e,iyl
		   sbc hl,de
		   pop de ;hl=dest-offs, bc=len, de = dest
		   ldir
		   pop hl
		   ld ixh,b
		   jp aploop
	
	ap_getgamma2:
	ex	af,af
	ap_getgamma:
	ld	bc,1
	ap_getgammaloop:call ap_getbit
		   rl c
		   rl b
		   call ap_getbit
		   jr c,ap_getgammaloop
		   ret
	
	ap_getbit:
	add	a,a
		   ret nz
		   ld a,(hl)
		   inc hl
		   rla
		   ret
	
	pop	ix
	ret
_aPLib_depack_end::
	.area _CODE
	.area _CABS
