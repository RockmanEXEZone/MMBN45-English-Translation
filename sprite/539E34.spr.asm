.include "sprite/template.asm"

.gba
.create TEMP+"/539E34.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,1,ANIM_END

	tiles	@tile,	TEMP+"/539E34.img.bin"
	pal	@pal,	TEMP+"/539E34.pal.bin"

	subanim_none	@sub

	oamlist_single	@oam
		//	tile	x	y	size		flip		pal
		oam	  0,	-88,	-10,	SIZE_16x16,	FLIP_NONE,	0
		oam	  4,	-88,	  6,	SIZE_16x8,	FLIP_NONE,	0
		oam	  6,	-72,	- 4,	SIZE_32x8,	FLIP_NONE,	0
		oam	 10,	-40,	- 4,	SIZE_8x8,	FLIP_NONE,	0
		oam	 11,	-48,	  4,	SIZE_8x8,	FLIP_NONE,	0
		oam	 12,	-26,	- 4,	SIZE_8x16,	FLIP_NONE,	0
		oam	 14,	-18,	- 4,	SIZE_32x8,	FLIP_NONE,	0
		oam	 18,	 24,	- 4,	SIZE_8x16,	FLIP_NONE,	0
		oam	 20,	 32,	- 4,	SIZE_32x8,	FLIP_NONE,	0
		oam	 24,	 64,	- 4,	SIZE_16x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
