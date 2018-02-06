@echo off
bin\PSGpack.exe %~n1.psg
ren %~n1.psg.tpp music.tpp
bin\sjasmplus test.asm

bin\mktap -b "%~n1" 1 <loader.bas >t1.tap
bin\bintap "test.bin" t2.tap "psg" 32768 >nul
copy /b /y t1.tap+t2.tap %~n1.tap >nul

bin\sjasmplus trdos.asm
del /q test.trd test.$c
del /q music.tpp t1.tap t2.tap
del /q %~n1.sna %~n1.bin %~n1.scl>nul
ren test.sna %~n1.sna
ren test.bin %~n1.bin
ren test.scl %~n1.scl
