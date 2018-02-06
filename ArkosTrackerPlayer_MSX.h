#ifndef ARKOS_TRACKER_PLAYER_MSX_H
#define ARKOS_TRACKER_PLAYER_MSX_H

extern unsigned char *PLY_SongPtr;

extern void PLY_Init(void); 
extern void PLY_Play(void); 
extern void PLY_SendRegisters(void); // Two-phase player! first call PLY_Play() and then PLY_SendRegisters(). 
extern void PLY_Stop(void); 

volatile extern unsigned char PLY_PSGRegistersArray[16];
volatile extern unsigned char PLY_PSGReg7; // mixer
volatile extern unsigned char PLY_PSGReg8; // channel A volume
volatile extern unsigned char PLY_PSGReg9; // channel B volume
volatile extern unsigned char PLY_PSGReg10; // channel C volume

extern int PLY_PeriodTable[12*12];

#endif
