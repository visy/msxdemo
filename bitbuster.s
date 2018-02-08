;
; In: HL = source
;     DE = destination
;

	.area _DATA


_storage::
	.dw 1
_storage2::
	.dw 1


	.area _CODE


_bitbuster::

unPack12V:	
		ld (_storage),ix
		ld (_storage2),sp
		push ix

		ld ix,#0
		add ix,sp

		; src
		ld l,4(ix)
		ld h,5(ix)

		; dest
		ld e,6(ix)
		ld d,7(ix)

		call	vram_init

		inc	hl		; skip original file length
		inc	hl
		inc	hl
		inc	hl

		ld	a,#128

		exx
		ld	de,#1
		exx

unpack_loop:		call	getBit		; get compression type bit
		jr	c,.outCompress	; if set, we got lz77 compression
		ld	c,#0x98		; copy byte from compressed data to destination
		outi
		inc	de
		jr	unpack_loop

.outCompress:	ld	c,(hl)		; get lowest 7 bits of offset, plus offset
					; extension bit
		inc	hl

.outMatch:	ld	b,#0
		bit	#7,c
		jr	z,.outMatch1	; no need to get extra bits if carry not set

		call	getBit		; get offset bit 10 
		rl	b
		call	getBit		; get offset bit 9
		rl	b
		call	getBit		; get offset bit 8
		rl	b
		call	getBit		; get offset bit 7

		jr	c,.outMatch1	; since extension mark already makes bit 7 set 
		res	#7,c		; only clear it if the bit should be cleared
.outMatch1:	inc	bc
;
GetGammaValue:	exx			; to second register set!
		ld	h,d
		ld	l,e             ; initial length to 1
		ld	b,e		; bitcount to 1

.size:		exx
		call	getBit		; get more bits
		exx
		jr	nc,.sizeEnd	; if bit not set, bitlength of remaining is known
		inc	b		; increase bitcount
		jr	.size

.bits:		exx
		call	getBit		; get next bit of value from bitstream
		exx
		adc	hl,hl		; insert new bit in HL
.sizeEnd: 	djnz	.bits		; repeat if more bits to go

.end:		
		inc	hl		; length was stored as length-2 so correct this
		exx			; back to normal register set
		ld ix,(_storage)
		ld sp,(_storage2)

		ret	c

		push	hl		; address compressed data on stack
		exx
		push	hl		; match length on stack
		exx
		ld	h,d
		ld	l,e		; destination address in HL...
		sbc	hl,bc		; calculate source address

		pop	bc		; match length from stack

		push	af
		call	vram_ldir	; transfer data
		pop	af

		pop	hl		; address compressed data back from stack

		jr	unpack_loop

;
getBit:		add	a,a		; shift out new bit
		ret	nz		; if remaining value isn't zere, we're done

		ld	a,(hl)		; get 8 bits from bitstream
		inc	hl		; increase source data address

		rla			; (bit 0 will be set!!!!)
		ret
;
vram:
;
; VRAM stuff (init andLDIR replacements)
;
vram_init:		ld	a,d
		rla
		rla
		rla
		and	#7
		out	(0x99),a
		and	#4
		ld	(.readPnt+1),a
		ld	(.writePnt+1),a
		ld	a,#128+ 14
		out	(0x99),a
		ld	a,e
		out	(0x99),a
		ld	a,d
		and	#63
		or	#64
		out	(0x99),a
		ret
;
vram_ldir:		di
.ldir_loop:	ld	a,h
		and	#192
		rlca
		rlca
.readPnt:	or	#0
		out	(0x99),a
		ld	a,#128+ 14
		out	(0x99),a
		ld	a,l
		out	(0x99),a
		ld	a,h
		and	#63
		out	(0x99),a
		inc	hl
		in	a,(0x98)
		push	af
		ld	a,d
		and	#192
		rlca
		rlca
.writePnt:	or	#0
		out	(0x99),a
		nop
		ld	a,#128+ 14
		out	(0x99),a
		nop
		ld	a,e
		out	(0x99),a
		nop
		ld	a,d
		and	#63
		or	#64
		out	(0x99),a
		inc	de
		pop	af
		out	(0x98),a
		dec	bc
		ld	a,c
		or	b
		jr	nz,.ldir_loop
		ei

		ret
;