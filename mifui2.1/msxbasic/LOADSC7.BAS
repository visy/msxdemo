10 SCREEN 7
20 COLOR ,,0
30 VDP(9)=VDP(9)OR&H20
40 BLOAD"matrix2.pl7",S
50 COLOR=RESTORE
60 BLOAD"matrix2.sc7",S
70 A$=INPUT$(1)
