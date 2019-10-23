.include "sprite/template.asm"

.gba
.create TEMP+"/6D8188.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,1,ANIM_END

	tiles	@tile,	TEMP+"/6D8188.img.bin"
	pal	@pal,	TEMP+"/6D8188.pal.bin"

	subanim_none	@sub

	oamlist_single	@oam
		//	tile	x	y	size		flip		pal
		oam	  0,	 16,	-69,	SIZE_16x32,	FLIP_NONE,	0
		oam	  8,	-48,	  3,	SIZE_64x64,	FLIP_NONE,	0
		oam	 72,	 32,	- 5,	SIZE_8x32,	FLIP_NONE,	0
		oam	 72,	 32,	-37,	SIZE_8x32,	FLIP_NONE,	0
		oam	 76,	  0,	- 5,	SIZE_16x8,	FLIP_NONE,	0
		oam	 76,	-16,	- 5,	SIZE_16x8,	FLIP_NONE,	0
		oam	 76,	-32,	- 5,	SIZE_16x8,	FLIP_NONE,	0
		oam	 78,	-48,	- 5,	SIZE_16x8,	FLIP_NONE,	0
		oam	 80,	 32,	 27,	SIZE_8x8,	FLIP_NONE,	0
		oam	 81,	 16,	 27,	SIZE_16x8,	FLIP_NONE,	0
		oam	 83,	 32,	 35,	SIZE_8x32,	FLIP_NONE,	0
		oam	 87,	 16,	 35,	SIZE_16x32,	FLIP_NONE,	0
		oam	 95,	 16,	- 5,	SIZE_16x32,	FLIP_NONE,	0
		oam	 95,	 16,	-37,	SIZE_16x32,	FLIP_NONE,	0
		oam	103,	-48,	-69,	SIZE_64x64,	FLIP_NONE,	0
		oam	167,	 32,	-69,	SIZE_8x32,	FLIP_NONE,	0
		oam	171,	-39,	-63,	SIZE_32x8,	FLIP_NONE,	0
		oam	175,	-39,	-71,	SIZE_8x8,	FLIP_NONE,	0
		oam	176,	  2,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	177,	- 5,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	178,	- 5,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	179,	- 5,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	180,	- 5,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	181,	- 5,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	182,	- 5,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	177,	  8,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	178,	  8,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	179,	  8,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	180,	  8,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	181,	  8,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam	182,	  8,	-63,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
