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


_bitbuster_to_ram::

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

	
;In: HL: source
;    DE: destination
depack: inc	hl		;skip original file length
	inc	hl		;which is stored in 4 bytes
	inc	hl
	inc	hl

	ld	a,#128
	
	exx
	ld	de,#1
	exx
	
depack_loop:
	add	a,a		;shift out new bit
	jp	nz,DDE1		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE1:
	jp	c,output_compressed	;if set, we got lz77 compression
	ldi				;copy byte from compressed data to destination (literal byte)
;unrolled for extra speed
	add	a,a		;shift out new bit
	jp	nz,DDE2		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE2:
	jp	c,output_compressed	;if set, we got lz77 compression
	ldi				;copy byte from compressed data to destination (literal byte)
	add	a,a		;shift out new bit
	jp	nz,DDE3		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE3:
		;get compression type bit
	jp	c,output_compressed	;if set, we got lz77 compression
	ldi				;copy byte from compressed data to destination (literal byte)
	jp	depack_loop
	

;handle compressed data
output_compressed:
	ld	c,(hl)		;get lowest 7 bits of offset, plus offset extension bit
	inc	hl		;to next byte in compressed data

output_match:
	ld	b,#0
	bit	#7,c
	jr	z,output_match1	;no need to get extra bits if carry not set

		add	a,a		;shift out new bit
	jp	nz,DDE4		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE4:
	;get offset bit 10 
	rl	b
		add	a,a		;shift out new bit
	jp	nz,DDE5		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE5:
	;get offset bit 9
	rl	b
		add	a,a		;shift out new bit
	jp	nz,DDE6		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE6:
	;get offset bit 8
	rl	b
		add	a,a		;shift out new bit
	jp	nz,DDE7		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE7:
	;get offset bit 7

	jp	c,output_match1	;since extension mark already makes bit 7 set 
	res	#7,c		;only clear it if the bit should be cleared
output_match1:
	inc	bc
	
	
;return a gamma-encoded value
;length returned in HL
	exx			;to second register set!
	ld	h,d
	ld	l,e             ;initial length to 1
	ld	b,e		;bitcount to 1

;determine number of bits used to encode value
get_gamma_value_size:
	exx
	add	a,a		;shift out new bit
	jp	nz,DDE8		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE8:
			;get more bits
	exx
	jr	nc,get_gamma_value_size_end	;if bit not set, bitlength of remaining is known
	inc	b				;increase bitcount
	jp	get_gamma_value_size		;repeat...

get_gamma_value_bits:
	exx
	add	a,a		;shift out new bit
	jp	nz,DDE9		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE9:
			;get next bit of value from bitstream
	exx
	
	adc	hl,hl				;insert new bit in HL
get_gamma_value_size_end:
	djnz	get_gamma_value_bits		;repeat if more bits to go

get_gamma_value_end:
	inc	hl		;length was stored as length-2 so correct this
	exx			;back to normal register set
	
	ret	c
;HL' = length

	push	hl		;address compressed data on stack

	exx
	push	hl		;match length on stack
	exx

	ld	h,d
	ld	l,e		;destination address in HL...
	sbc	hl,bc		;calculate source address

	pop	bc		;match length from stack

	ldir			;transfer data

	pop	hl		;address compressed data back from stack

	add	a,a		;shift out new bit
	jp	nz,DDE10		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE10:
		;get compression type bit
	jp	c,output_compressed	;if set, we got lz77 compression
	ldi				;copy byte from compressed data to destination (literal byte)
		add	a,a		;shift out new bit
	jp	nz,DDE11		;if remaining value isn't zere, we're done

	ld	a,(hl)		;get 8 bits from bitstream
	inc	hl		;increase source data address

	rla                     ;(bit 0 will be set!!!!)
DDE11:
		;get compression type bit
	jp	c,output_compressed	;if set, we got lz77 compression
	ldi				;copy byte from compressed data to destination (literal byte)

	jp	depack_loop
	
	
	ld ix,(_storage)
	ld sp,(_storage2)
	ret
