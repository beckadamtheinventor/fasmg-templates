

include 'include/ez80.inc'
include 'include/tiformat.inc'
include 'include/ti84pceg.inc'
format ti executable "DEMO"


init:
	call libload_load
	jp z,main_init
	call ti.HomeUp
	ld hl,needlibload_str
	call ti.PutS
	xor a,a
	ld (ti.curCol),a
	inc a
	ld (ti.curRow),a
	call ti.PutS
GetCSC:
	call ti.GetCSC
	or a,a
	jr z,GetCSC
	ret
needlibload_str:
	db "Need libload",0
	db "tiny.cc/clibs",0
include 'load_libs.asm'
main_init:
	call ti.HomeUp
	call ti.RunIndicOff
	call gfx_Begin
main:
normal:
	call gfx_End
	call ti.DrawStatusBar
	jp ti.HomeUp


