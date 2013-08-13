#!/bin/bash
arm-none-eabi-gcc -mthumb -mthumb-interwork -g -c -w -std=c99 -o intro.out intro.c
arm-none-eabi-ld -o intro.o -T linker.lsc intro.out
arm-none-eabi-objcopy -O binary intro.o toASM.bin
rm intro.o
rm intro.out
java -jar AddASM.jar /home/maxamillion/ROMHacking/ASM/IntroTemplate/GS.gba /home/maxamillion/ROMHacking/ASM/IntroTemplate/toASM.bin 0x790058
#thumb toASM.asm
