    ;; IX=ptr to compressed data
decompress2vram:
    ;; bc=token count
    ld c,(ix+0)
    ld b,(ix+1)
    inc ix
    inc ix

    ;; de=dest (256 bytes align)
    ld hl,ram512bytes
    ld de,256
    add hl,de
    ld l,0
    ex de,hl

    ;; uncompress loop
loop1:
    ;; a=len
    ld a,(ix+0)
    inc ix
    or a
    jr z,skip

    push bc
    ld b,a
    ;; hl=offset = (de-backoffset) mod 256
    ld c,(ix+0)                  ; back offset
    ld a,e
    sub c
    ld l,a
    ld h,d
    inc ix
    ;; copy from back offset
loop2:
    ld a,(hl)
    inc l                     ; hl=hl mod 256
    ld (de),a
    inc e                     ; de=de mod 25
    out (0x98),a
    djnz loop2
    pop bc
skip:

    ;; a=nextchar
    ld a,(ix+0)

    ;; write nextchar
    out (0x98),a
    ld (de),a
    inc e                          ; de=de mod 256
    inc ix

    ;; end?
    dec bc
    ld a c
    or b
    jr nz,loop1

    ret