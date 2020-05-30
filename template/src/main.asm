

include 'include/ez80.inc'
include 'include/tiformat.inc'
include 'include/ti84pceg.inc'
format ti executable "DEMO"

init:
	call ti.HomeUp
	call load_font
	jr nc,.lcd
	call ti.GetCSC
	jp ti.HomeUp
.lcd:
	call lcd_init
	setTextFGColor 0
	setTextBGColor 255
main:
	fillScreen 255
	call lcd_blit
.keywait:
	call ti.GetCSC
	cp a,9
	jr z,.exit
	cp a,15
	jr nz,.keywait
.exit:
normal:
	call lcd_normal
	jp ti.HomeUp


Buffer:
	db 256 dup 0

include 'gfx.inc'
include 'str.inc'


