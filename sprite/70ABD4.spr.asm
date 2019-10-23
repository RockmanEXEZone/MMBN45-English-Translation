.include "sprite/template.asm"

.gba
.create TEMP+"/70ABD4.dmp",0

	header
	anim
		frame	@tile,@pal,@sub,@oam,1,ANIM_END

	tiles	@tile,	TEMP+"/70ABD4.img.bin"
	pal	@pal,	TEMP+"/70ABD4.pal.bin"

	subanim_header	@sub
	subanim
		sframe	0,1,ANIM_END
	subanim
		sframe	1,1,ANIM_END
	subanim
		sframe	2,1,ANIM_END
	subanim
		sframe	3,1,ANIM_END
	subanim
		sframe	4,1,ANIM_END
	subanim
		sframe	5,1,ANIM_END
	subanim
		sframe	6,1,ANIM_END
	subanim
		sframe	7,1,ANIM_END
	subanim
		sframe	8,1,ANIM_END
	subanim
		sframe	9,1,ANIM_END
	subanim
		sframe	10,1,ANIM_END
	subanim
		sframe	11,1,ANIM_END
	subanim_end

	oamlist_header	@oam
	oamlist
		//	tile	x	y	size		flip		pal
		oam	  0,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	  8,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 16,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 24,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 32,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 40,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 48,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 56,	- 8,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 64,	-40,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	- 8,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	 18,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 96,	-33,	-12,	SIZE_16x8,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 64,	-40,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	- 8,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	 18,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 98,	-40,	-12,	SIZE_32x8,	FLIP_NONE,	0
		oam	102,	- 8,	-12,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 64,	-52,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	-20,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	  6,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	 34,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	103,	-52,	-12,	SIZE_32x8,	FLIP_NONE,	0
		oam	107,	-20,	-12,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist
		//	tile	x	y	size		flip		pal
		oam	 64,	-40,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	- 8,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 80,	 18,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	108,	-34,	-12,	SIZE_32x8,	FLIP_NONE,	0
		oam	112,	- 2,	-12,	SIZE_16x8,	FLIP_NONE,	0
		oam	114,	 14,	-12,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
