.include "sprite/template.asm"

.gba
.create TEMP+"/51234C.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,2,ANIM_END

	tiles	@tile,	TEMP+"/51234C.img.bin"
	pal	@pal,	TEMP+"/51234C.pal.bin"

	subanim_none	@sub

	oamlist_single	@oam
		//	tile	x	y	size		flip		pal
		oam	  0,	-27,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 16,	  5,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	 20,	 13,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 28,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 32,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 36,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 40,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 44,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 48,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 52,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 56,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 60,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 64,	-15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 28,	-25,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 32,	-25,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 36,	-25,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 28,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 32,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 36,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 40,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 44,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 48,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 52,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 56,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 60,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 64,	 15,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 28,	  5,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 32,	  5,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 36,	  5,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
