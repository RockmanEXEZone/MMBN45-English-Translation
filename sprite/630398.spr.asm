.include "sprite/template.asm"

.gba
.create TEMP+"/630398.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,11,ANIM_END

	tiles	@tile,	TEMP+"/630398.img.bin"
	pal	@pal,	TEMP+"/630398.pal.bin"

	subanim_header	@sub
	subanim
		sframe	0,11,ANIM_END
	subanim
		sframe	1,11,ANIM_END
	subanim
		sframe	2,11,ANIM_END
	subanim
		sframe	3,11,ANIM_END
	subanim
		sframe	4,11,ANIM_END
	subanim
		sframe	5,11,ANIM_END
	subanim
		sframe	6,11,ANIM_END
	subanim
		sframe	7,11,ANIM_END
	subanim
		sframe	8,11,ANIM_END
	subanim
		sframe	9,11,ANIM_END
	subanim
		sframe	10,11,ANIM_END
	subanim
		sframe	11,11,ANIM_END
	subanim
		sframe	12,11,ANIM_END
	subanim
		sframe	13,11,ANIM_END
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
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 44,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 48,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 56,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 64,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 68,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 76,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 84,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 88,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 96,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	104,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	108,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	116,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	124,	-54,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	128,	-38,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	136,	- 6,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	 26,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
