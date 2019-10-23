.include "sprite/template.asm"

.gba
.create TEMP+"/631798.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,4,ANIM_END

	tiles	@tile,	TEMP+"/631798.img.bin"
	pal	@pal,	TEMP+"/631798.pal.bin"

	subanim_header	@sub
	subanim
		sframe	0,11,ANIM_END
	subanim
		sframe	1,11,ANIM_END
	subanim
		sframe	2,11,ANIM_END
	subanim
		sframe	3,11,ANIM_END
	subanim_end

	oamlist_header	@oam
	oamlist
		//	tile	x	y	size		flip		pal
		oam	  0,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	  4,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 12,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 24,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 28,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 36,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
