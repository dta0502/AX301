#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: E:\AX301\nios\epcs_boot\output_files\top_level.sof to: "..\flash/top_level_epcs_flash.flash"
#
sof2flash --input="E:/AX301/nios/epcs_boot/output_files/top_level.sof" --output="../flash/top_level_epcs_flash.flash" --epcs --verbose 

#
# Programming File: "..\flash/top_level_epcs_flash.flash" To Device: epcs_flash
#
nios2-flash-programmer "../flash/top_level_epcs_flash.flash" --base=0x4001000 --epcs --sidp=0x4002018 --id=0x0 --timestamp=1483582144 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-1]' --program --verbose 

#
# Converting ELF File: E:\AX301\nios\epcs_boot\software\led_test\led_test.elf to: "..\flash/led_test_epcs_flash.flash"
#
elf2flash --input="E:/AX301/nios/epcs_boot/software/led_test/led_test.elf" --output="../flash/led_test_epcs_flash.flash" --epcs --after="../flash/top_level_epcs_flash.flash" --verbose 

#
# Programming File: "..\flash/led_test_epcs_flash.flash" To Device: epcs_flash
#
nios2-flash-programmer "../flash/led_test_epcs_flash.flash" --base=0x4001000 --epcs --sidp=0x4002018 --id=0x0 --timestamp=1483582144 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-1]' --program --verbose 

