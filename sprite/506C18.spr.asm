.include "sprite/template.asm"

.gba
.create TEMP+"/506C18.dmp",0

	header
	anim
		frame	@tilePreschool,	@pal,	@subPreschool,	@oamPreschool,	8,	ANIM_END
	anim
		frame	@tileBigBro,	@pal,	@subBigBro,	@oamBigBro,	8,	ANIM_END
	anim
		frame	@tileLilBro,	@pal,	@subLilBro,	@oamLilBro,	8,	ANIM_END
	anim
		frame	@tileBigSis,	@pal,	@subBigSis,	@oamBigSis,	8,	ANIM_END
	anim
		frame	@tileLilSis,	@pal,	@subLilSis,	@oamLilSis,	8,	ANIM_END
	anim
		frame	@tileFriend,	@pal,	@subFriend,	@oamFriend,	8,	ANIM_END
	anim
		frame	@tileFavFood,	@pal,	@subFavFood,	@oamFavFood,	8,	ANIM_END
	anim
		frame	@tileHobby,	@pal,	@subHobby,	@oamHobby,	8,	ANIM_END
	anim
		frame	@tileDream,	@pal,	@subDream,	@oamDream,	8,	ANIM_END
	anim
		frame	@tileCrush,	@pal,	@subCrush,	@oamCrush,	8,	ANIM_END
	anim
		frame	@tileIdol,	@pal,	@subIdol,	@oamIdol,	8,	ANIM_END
	anim
		frame	@tileEnemy,	@pal,	@subEnemy,	@oamEnemy,	8,	ANIM_END
	anim
		frame	@tileTVShow,	@pal,	@subTVShow,	@oamTVShow,	8,	ANIM_END
	anim
		frame	@tileBestSubj,	@pal,	@subBestSubj,	@oamBestSubj,	8,	ANIM_END
	anim
		frame	@tileWorstSubj,	@pal,	@subWorstSubj,	@oamWorstSubj,	8,	ANIM_END
	anim
		frame	@tileWishlist,	@pal,	@subWishlist,	@oamWishlist,	8,	ANIM_END
	anim
		frame	@tileProfile,	@pal,	@subProfile,	@oamProfile,	8,	ANIM_END
	anim
		frame	@tileSchool,	@pal,	@subSchool,	@oamSchool,	8,	ANIM_END
	anim
		frame	@tileCompany,	@pal,	@subCompany,	@oamCompany,	8,	ANIM_END

	tiles	@tilePreschool,	TEMP+"/506C18_Preschool.img.bin"
	tiles	@tileBigBro,	TEMP+"/506C18_BigBro.img.bin"
	tiles	@tileLilBro,	TEMP+"/506C18_LilBro.img.bin"
	tiles	@tileBigSis,	TEMP+"/506C18_BigSis.img.bin"
	tiles	@tileLilSis,	TEMP+"/506C18_LilSis.img.bin"
	tiles	@tileFriend,	TEMP+"/506C18_Friend.img.bin"
	tiles	@tileFavFood,	TEMP+"/506C18_FavFood.img.bin"
	tiles	@tileHobby,	TEMP+"/506C18_Hobby.img.bin"
	tiles	@tileDream,	TEMP+"/506C18_Dream.img.bin"
	tiles	@tileCrush,	TEMP+"/506C18_Crush.img.bin"
	tiles	@tileIdol,	TEMP+"/506C18_Idol.img.bin"
	tiles	@tileEnemy,	TEMP+"/506C18_Enemy.img.bin"
	tiles	@tileTVShow,	TEMP+"/506C18_TVShow.img.bin"
	tiles	@tileBestSubj,	TEMP+"/506C18_BestSubj.img.bin"
	tiles	@tileWorstSubj,	TEMP+"/506C18_WorstSubj.img.bin"
	tiles	@tileWishlist,	TEMP+"/506C18_Wishlist.img.bin"
	tiles	@tileProfile,	TEMP+"/506C18_Profile.img.bin"
	tiles	@tileSchool,	TEMP+"/506C18_School.img.bin"
	tiles	@tileCompany,	TEMP+"/506C18_Company.img.bin"
	pal	@pal,		TEMP+"/506C18.pal.bin"

	subanim_none	@subPreschool
	subanim_none	@subBigBro
	subanim_none	@subLilBro
	subanim_none	@subBigSis
	subanim_none	@subLilSis
	subanim_none	@subFriend
	subanim_none	@subFavFood
	subanim_none	@subHobby
	subanim_none	@subDream
	subanim_none	@subCrush
	subanim_none	@subIdol
	subanim_none	@subEnemy
	subanim_none	@subTVShow
	subanim_none	@subBestSubj
	subanim_none	@subWorstSubj
	subanim_none	@subWishlist
	subanim_none	@subProfile
	subanim_none	@subSchool
	subanim_none	@subCompany

	oamlist_single	@oamPreschool
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 12,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamBigBro
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamLilBro
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamBigSis
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamLilSis
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamFriend
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamFavFood
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 16,	  4,	-16,	SIZE_16x32,	FLIP_NONE,	0
		oam	 24,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamHobby
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamDream
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamCrush
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamIdol
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x32,	FLIP_NONE,	0
		oam	 16,	  4,	-16,	SIZE_16x32,	FLIP_NONE,	0
		oam	 24,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamEnemy
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamTVShow
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	  6,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 14,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 18,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamBestSubj
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	  6,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 14,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 18,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamWorstSubj
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	  6,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 14,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 18,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamWishlist
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamProfile
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamSchool
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

	oamlist_single	@oamCompany
		//	tile	x	y	size		flip		pal
		oam	  0,	-28,	-16,	SIZE_32x8,	FLIP_NONE,	0
		oam	  4,	 20,	-16,	SIZE_8x32,	FLIP_NONE,	0
		oam	  8,	-28,	- 8,	SIZE_32x16,	FLIP_NONE,	0
		oam	 16,	  4,	- 8,	SIZE_16x16,	FLIP_NONE,	0
		oam	 20,	  4,	-16,	SIZE_16x8,	FLIP_NONE,	0
		oam	 22,	- 4,	  8,	SIZE_8x8,	FLIP_NONE,	0
		oam_end
	oamlist_end

.close
