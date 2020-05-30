#!/bin/bash
#----------------------------------------
#Put your program name in place of "DEMO"
name='DEMO.8xp'
#----------------------------------------

mkdir "bin" || echo ""

echo "compiling to $name"
~/CEdev/bin/fasmg src/main.asm bin/$name
echo "--------------------------------"
echo "-- font required by gfx.inc ----"
echo "--------------------------------"
name='BECKFONT.8xv'
echo "compiling to $name"
~/CEdev/bin/fasmg src/font.asm bin/$name

read -p "Finished. Press any key to exit"
