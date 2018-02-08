	.area _DATA


modes:
	.dw	offsok
	.dw	mode2
	.dw	mode3
	.dw	mode4
	.dw	mode5
	.dw	mode6
	.dw	mode7

	.area _CODE


_pletter::
	push ix
	ld ix,#0
	add ix,sp

	; src
	ld l,4(ix)
	ld h,5(ix)

	; dest
	ld e,6(ix)
	ld d,7(ix)

;-----------------------------------------------------------
; Pletter v0.5b VRAM Depacker v1.1 - 16Kb version
; HL = RAM/ROM source ; DE = VRAM destination
;-----------------------------------------------------------
	di

; VRAM address setup
	ld	a,e
	out	(0x99),a
	ld	a,d
	or	#0x40
	out	(0x99),a

; Initialization
	ld	a,(hl)
	inc	hl
	exx
	ld	de,#0
	add	a,a
	inc	a
	rl	e
	add	a,a
	rl	e
	add	a,a
	rl	e
	rl	e
	ld 	hl,#modes
	add	hl,de
	ld	e,(hl)
.db 0xDD
.db 0x6B  ;	ld	ixl,e
	inc	hl
	ld	e,(hl)
.db 0xDD
.db 0x63  ;	ld	ixh,e
	ld	e,#1
	exx
	ld iy,#loop

; Main depack loop
literal:ld	c,#0x98
	outi
	inc	de
loop:	add	a,a
  	call	z,getbit
	jr	nc,literal

; Compressed data
	exx
	ld	h,d
	ld	l,e
getlen: add	a,a
	call	z,getbitexx
	jr	nc,lenok
lus:	add	a,a
	call	z,getbitexx
	adc	hl,hl
	ret	c
	add	a,a
	call	z,getbitexx
	jr	nc,lenok
	add	a,a
	call	z,getbitexx
	adc	hl,hl
	jp	c,Depack_out
	add	a,a
	call	z,getbitexx
	jp	c,lus
lenok:  inc	hl
	exx
	ld	c,(hl)
	inc	hl
	ld	b,#0
	bit	#7,c
	jp	z,offsok
	jp	(ix)

mode7:  add	a,a
  	call	z,getbit
	rl	b
mode6:	add	a,a
  	call	z,getbit
	rl	b
mode5:  add	a,a
  	call	z,getbit
	rl	b
mode4:  add	a,a
  	call	z,getbit
	rl	b
mode3:  add	a,a
  	call	z,getbit
	rl	b
mode2:	add	a,a
  	call	z,getbit
	rl	b
	add	a,a
  	call	z,getbit
	jr	nc,offsok
	or	a
	inc	b
	res	#7,c
offsok: inc	bc
	push	hl
	exx
	push	hl
	exx
	ld	l,e
	ld	h,d
	sbc	hl,bc
	pop	bc
	push	af
loopa:	
	ld a,l
	out	(0x99),a
	ld	a,h
	nop                     ; VDP timing
	out	(0x99),a
	nop                     ; VDP timing
	in	a,(0x98)
	ex	af,af'
	ld	a,e
	nop			; VDP timing
	out	(0x99),a
	ld	a,d
	or	#0x40
	out	(0x99),a
	ex	af,af'
	nop			; VDP timing
	out	(0x98),a
	inc	de
	cpi
	jp	pe,loopa
	pop	af
	pop	hl
	jp (iy)

getbit: ld	a,(hl)
	inc	hl
	rla
	ret

getbitexx:
	exx
	ld	a,(hl)
	inc	hl
	exx
	rla
	ret

; Depacker exit
Depack_out:
	ei

	pop ix
	ret
