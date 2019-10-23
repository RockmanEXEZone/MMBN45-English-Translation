.include "sprite/template.asm"

.gba
.create TEMP+"/512FA0.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,1,ANIM_END

	tiles	@tile,	TEMP+"/512FA0.img.bin"
	pal	@pal,	TEMP+"/512FA0.pal.bin"

	subanim_none	@sub

	oamlist_single	@oam
		//	tile	x	y	size		flip		pal
		oam	  0,	-56,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	  8,	-24,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 24,	 40,	- 8,	SIZE_8x16,	FLIP_NONE,	0
		oam	 26,	 16,	- 8,	SIZE_8x16,	FLIP_NONE,	0
		oam	 28,	 24,	- 8,	SIZE_8x16,	FLIP_NONE,	0
		oam	 30,	 32,	- 8,	SIZE_8x16,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
