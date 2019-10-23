.include "sprite/template.asm"

.gba
.create TEMP+"/5131A4.dmp",0

	header
	anim
		frame	@tileStart,	@pal,	@subStart,	@oamStart,	2,	ANIM_END|ANIM_LOOP
	anim
		frame	@tileOK,	@pal,	@subOK,		@oamOK,		2,	ANIM_END|ANIM_LOOP
	anim
		frame	@tileNG,	@pal,	@subNG,		@oamNG,		2,	ANIM_END|ANIM_LOOP
	anim
		frame	@tilePass,	@pal,	@subPass,	@oamPass,	2,	ANIM_END|ANIM_LOOP
	anim
		frame	@tileClear,	@pal,	@subClear,	@oamClear,	2,	ANIM_END|ANIM_LOOP
	anim
		frame	@tileFail,	@pal,	@subFail,	@oamFail,	2,	ANIM_END|ANIM_LOOP
	anim
		frame	@tilePA,	@pal,	@subPA,		@oamPA,		2,	ANIM_END|ANIM_LOOP

	tiles	@tileStart,	TEMP+"/5131A4_Start.img.bin"
	tiles	@tileOK,	TEMP+"/5131A4_OK.img.bin"
	tiles	@tileNG,	TEMP+"/5131A4_NG.img.bin"
	tiles	@tilePass,	TEMP+"/5131A4_Pass.img.bin"
	tiles	@tileClear,	TEMP+"/5131A4_Clear.img.bin"
	tiles	@tileFail,	TEMP+"/5131A4_Fail.img.bin"
	tiles	@tilePA,	TEMP+"/5131A4_PA.img.bin"
	pal	@pal,		TEMP+"/5131A4.pal.bin"

	subanim_none	@subStart
	subanim_none	@subOK
	subanim_none	@subNG
	subanim_none	@subPass
	subanim_none	@subClear
	subanim_none	@subFail
	subanim_none	@subPA

	oamlist_single	@oamStart
		//	tile	x	y	size		flip		pal
		oam	 0,	-57,	-14,	SIZE_64x32,	FLIP_NONE,	0
		oam	32,	  7,	-14,	SIZE_32x32,	FLIP_NONE,	0
		oam	48,	 39,	-14,	SIZE_16x32,	FLIP_NONE,	0
		oam	56,	 55,	-14,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamOK
		//	tile	x	y	size		flip		pal
		oam	 0,	-20,	-20,	SIZE_32x32,	FLIP_NONE,	0
		oam	16,	-20,	 12,	SIZE_32x8,	FLIP_NONE,	0
		oam	20,	 12,	-20,	SIZE_8x32,	FLIP_NONE,	0
		oam	24,	 12,	 12,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamNG
		//	tile	x	y	size		flip		pal
		oam	 0,	-20,	-20,	SIZE_32x32,	FLIP_NONE,	0
		oam	16,	-20,	 12,	SIZE_32x8,	FLIP_NONE,	0
		oam	20,	 12,	-20,	SIZE_8x32,	FLIP_NONE,	0
		oam	24,	 12,	 12,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamPass
		//	tile	x	y	size		flip		pal
		oam	 0,	-46,	-14,	SIZE_64x32,	FLIP_NONE,	0
		oam	32,	 18,	-14,	SIZE_32x32,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamClear
		//	tile	x	y	size		flip		pal
		oam	 0,	-58,	-14,	SIZE_32x32,	FLIP_NONE,	0
		oam	16,	-26,	  2,	SIZE_8x16,	FLIP_NONE,	0
		oam	18,	-18,	-14,	SIZE_64x32,	FLIP_NONE,	0
		oam	50,	 46,	-14,	SIZE_16x32,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamFail
		//	tile	x	y	size		flip		pal
		oam	 0,	-37,	-14,	SIZE_64x32,	FLIP_NONE,	1
		oam	32,	 27,	  2,	SIZE_16x16,	FLIP_NONE,	1
		oam_end
	oamlist_end

	oamlist_single	@oamPA
		//	tile	x	y	size		flip		pal
		oam	 0,	-77,	-20,	SIZE_32x16,	FLIP_NONE,	0
		oam	 8,	-45,	-20,	SIZE_32x16,	FLIP_NONE,	0
		oam	16,	-13,	-20,	SIZE_32x16,	FLIP_NONE,	0
		oam	24,	 19,	-20,	SIZE_8x16,	FLIP_NONE,	0
		oam	26,	-21,	  4,	SIZE_32x16,	FLIP_NONE,	0
		oam	34,	 11,	  4,	SIZE_32x16,	FLIP_NONE,	0
		oam	42,	 43,	  4,	SIZE_32x16,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
