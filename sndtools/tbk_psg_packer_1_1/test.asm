//test for TBK PSG Packer 
//psndcj: 11.02.2012

		DEVICE ZXSPECTRUM48

		ORG	#8000

start:		call	init

loop:		ei
		halt
		call	play
		jr	loop

		ALIGN	256
		include "include/tbkplayer.fast.asm"
PackedPSG:	incbin "music.tpp"

;/////////////////////////////////////////////////save snapshot 
		IF _ERRORS = 0
		SAVESNA "test.sna",start
		SAVEBIN	"test.bin",start,$-start
		SAVEHOB	"test.$c", "psg.C", start, $-start
		ELSE
		SHELLEXEC "cmd /c del test.sna test.bin test.$c"
		ENDIF	
