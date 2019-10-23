.definelabel	TILE_SIZE,0x20
.definelabel	PAL_SIZE,0x20

.definelabel	FLIP_NONE,(0b00<<6)
.definelabel	FLIP_HORI,(0b01<<6)
.definelabel	FLIP_VERT,(0b10<<6)
.definelabel	FLIP_BOTH,(0b11<<6)

.definelabel	@SIZE_0,(0<<0)
.definelabel	@SIZE_1,(1<<0)
.definelabel	@SIZE_2,(2<<0)
.definelabel	@SIZE_3,(3<<0)
.definelabel	@SHAPE_0,(0<<8)
.definelabel	@SHAPE_1,(1<<8)
.definelabel	@SHAPE_2,(2<<8)

.definelabel	SIZE_8x8,(@SIZE_0|@SHAPE_0)
.definelabel	SIZE_8x16,(@SIZE_0|@SHAPE_2)
.definelabel	SIZE_8x32,(@SIZE_1|@SHAPE_2)
.definelabel	SIZE_16x8,(@SIZE_0|@SHAPE_1)
.definelabel	SIZE_16x16,(@SIZE_1|@SHAPE_0)
.definelabel	SIZE_16x32,(@SIZE_2|@SHAPE_2)
.definelabel	SIZE_32x8,(@SIZE_1|@SHAPE_1)
.definelabel	SIZE_32x16,(@SIZE_2|@SHAPE_1)
.definelabel	SIZE_32x32,(@SIZE_2|@SHAPE_0)
.definelabel	SIZE_32x64,(@SIZE_3|@SHAPE_2)
.definelabel	SIZE_64x32,(@SIZE_3|@SHAPE_1)
.definelabel	SIZE_64x64,(@SIZE_3|@SHAPE_0)

.definelabel	ANIM_NEXT,0x00
.definelabel	ANIM_LOOP,0x40
.definelabel	ANIM_END,0x80

.macro	header
@s:
	.ifdef @header_s_00000001
		.error	"Header can only be called once"
	.endif
	// Max tiles size in archive
	.ifdef @tiles_s_00000040
		.error	"Only 64 tilesets supported"
	.endif
	.db	max(	defined(@tiles_s_00000000) ? @tiles_e_00000000-@tiles_s_00000000 : 0 \
		,	defined(@tiles_s_00000001) ? @tiles_e_00000001-@tiles_s_00000001 : 0 \
		,	defined(@tiles_s_00000002) ? @tiles_e_00000002-@tiles_s_00000002 : 0 \
		,	defined(@tiles_s_00000003) ? @tiles_e_00000003-@tiles_s_00000003 : 0 \
		,	defined(@tiles_s_00000004) ? @tiles_e_00000004-@tiles_s_00000004 : 0 \
		,	defined(@tiles_s_00000005) ? @tiles_e_00000005-@tiles_s_00000005 : 0 \
		,	defined(@tiles_s_00000006) ? @tiles_e_00000006-@tiles_s_00000006 : 0 \
		,	defined(@tiles_s_00000007) ? @tiles_e_00000007-@tiles_s_00000007 : 0 \
		,	defined(@tiles_s_00000008) ? @tiles_e_00000008-@tiles_s_00000008 : 0 \
		,	defined(@tiles_s_00000009) ? @tiles_e_00000009-@tiles_s_00000009 : 0 \
		,	defined(@tiles_s_0000000a) ? @tiles_e_0000000a-@tiles_s_0000000a : 0 \
		,	defined(@tiles_s_0000000b) ? @tiles_e_0000000b-@tiles_s_0000000b : 0 \
		,	defined(@tiles_s_0000000c) ? @tiles_e_0000000c-@tiles_s_0000000c : 0 \
		,	defined(@tiles_s_0000000d) ? @tiles_e_0000000d-@tiles_s_0000000d : 0 \
		,	defined(@tiles_s_0000000e) ? @tiles_e_0000000e-@tiles_s_0000000e : 0 \
		,	defined(@tiles_s_0000000f) ? @tiles_e_0000000f-@tiles_s_0000000f : 0 \
		,	defined(@tiles_s_00000010) ? @tiles_e_00000010-@tiles_s_00000010 : 0 \
		,	defined(@tiles_s_00000011) ? @tiles_e_00000011-@tiles_s_00000011 : 0 \
		,	defined(@tiles_s_00000012) ? @tiles_e_00000012-@tiles_s_00000012 : 0 \
		,	defined(@tiles_s_00000013) ? @tiles_e_00000013-@tiles_s_00000013 : 0 \
		,	defined(@tiles_s_00000014) ? @tiles_e_00000014-@tiles_s_00000014 : 0 \
		,	defined(@tiles_s_00000015) ? @tiles_e_00000015-@tiles_s_00000015 : 0 \
		,	defined(@tiles_s_00000016) ? @tiles_e_00000016-@tiles_s_00000016 : 0 \
		,	defined(@tiles_s_00000017) ? @tiles_e_00000017-@tiles_s_00000017 : 0 \
		,	defined(@tiles_s_00000018) ? @tiles_e_00000018-@tiles_s_00000018 : 0 \
		,	defined(@tiles_s_00000019) ? @tiles_e_00000019-@tiles_s_00000019 : 0 \
		,	defined(@tiles_s_0000001a) ? @tiles_e_0000001a-@tiles_s_0000001a : 0 \
		,	defined(@tiles_s_0000001b) ? @tiles_e_0000001b-@tiles_s_0000001b : 0 \
		,	defined(@tiles_s_0000001c) ? @tiles_e_0000001c-@tiles_s_0000001c : 0 \
		,	defined(@tiles_s_0000001d) ? @tiles_e_0000001d-@tiles_s_0000001d : 0 \
		,	defined(@tiles_s_0000001e) ? @tiles_e_0000001e-@tiles_s_0000001e : 0 \
		,	defined(@tiles_s_0000001f) ? @tiles_e_0000001f-@tiles_s_0000001f : 0 \
		,	defined(@tiles_s_00000020) ? @tiles_e_00000020-@tiles_s_00000020 : 0 \
		,	defined(@tiles_s_00000021) ? @tiles_e_00000021-@tiles_s_00000021 : 0 \
		,	defined(@tiles_s_00000022) ? @tiles_e_00000022-@tiles_s_00000022 : 0 \
		,	defined(@tiles_s_00000023) ? @tiles_e_00000023-@tiles_s_00000023 : 0 \
		,	defined(@tiles_s_00000024) ? @tiles_e_00000024-@tiles_s_00000024 : 0 \
		,	defined(@tiles_s_00000025) ? @tiles_e_00000025-@tiles_s_00000025 : 0 \
		,	defined(@tiles_s_00000026) ? @tiles_e_00000026-@tiles_s_00000026 : 0 \
		,	defined(@tiles_s_00000027) ? @tiles_e_00000027-@tiles_s_00000027 : 0 \
		,	defined(@tiles_s_00000028) ? @tiles_e_00000028-@tiles_s_00000028 : 0 \
		,	defined(@tiles_s_00000029) ? @tiles_e_00000029-@tiles_s_00000029 : 0 \
		,	defined(@tiles_s_0000002a) ? @tiles_e_0000002a-@tiles_s_0000002a : 0 \
		,	defined(@tiles_s_0000002b) ? @tiles_e_0000002b-@tiles_s_0000002b : 0 \
		,	defined(@tiles_s_0000002c) ? @tiles_e_0000002c-@tiles_s_0000002c : 0 \
		,	defined(@tiles_s_0000002d) ? @tiles_e_0000002d-@tiles_s_0000002d : 0 \
		,	defined(@tiles_s_0000002e) ? @tiles_e_0000002e-@tiles_s_0000002e : 0 \
		,	defined(@tiles_s_0000002f) ? @tiles_e_0000002f-@tiles_s_0000002f : 0 \
		,	defined(@tiles_s_00000030) ? @tiles_e_00000030-@tiles_s_00000030 : 0 \
		,	defined(@tiles_s_00000031) ? @tiles_e_00000031-@tiles_s_00000031 : 0 \
		,	defined(@tiles_s_00000032) ? @tiles_e_00000032-@tiles_s_00000032 : 0 \
		,	defined(@tiles_s_00000033) ? @tiles_e_00000033-@tiles_s_00000033 : 0 \
		,	defined(@tiles_s_00000034) ? @tiles_e_00000034-@tiles_s_00000034 : 0 \
		,	defined(@tiles_s_00000035) ? @tiles_e_00000035-@tiles_s_00000035 : 0 \
		,	defined(@tiles_s_00000036) ? @tiles_e_00000036-@tiles_s_00000036 : 0 \
		,	defined(@tiles_s_00000037) ? @tiles_e_00000037-@tiles_s_00000037 : 0 \
		,	defined(@tiles_s_00000038) ? @tiles_e_00000038-@tiles_s_00000038 : 0 \
		,	defined(@tiles_s_00000039) ? @tiles_e_00000039-@tiles_s_00000039 : 0 \
		,	defined(@tiles_s_0000003a) ? @tiles_e_0000003a-@tiles_s_0000003a : 0 \
		,	defined(@tiles_s_0000003b) ? @tiles_e_0000003b-@tiles_s_0000003b : 0 \
		,	defined(@tiles_s_0000003c) ? @tiles_e_0000003c-@tiles_s_0000003c : 0 \
		,	defined(@tiles_s_0000003d) ? @tiles_e_0000003d-@tiles_s_0000003d : 0 \
		,	defined(@tiles_s_0000003e) ? @tiles_e_0000003e-@tiles_s_0000003e : 0 \
		,	defined(@tiles_s_0000003f) ? @tiles_e_0000003f-@tiles_s_0000003f : 0 \
		)/TILE_SIZE
	.db	0
	.db	1
	// Number of animations in archive
	.ifdef @anim_s_00000040
		.error	"Only 64 animations supported"
	.endif
	.db	(	defined(@anim_s_00000000) \
		+	defined(@anim_s_00000001) \
		+	defined(@anim_s_00000002) \
		+	defined(@anim_s_00000003) \
		+	defined(@anim_s_00000004) \
		+	defined(@anim_s_00000005) \
		+	defined(@anim_s_00000006) \
		+	defined(@anim_s_00000007) \
		+	defined(@anim_s_00000008) \
		+	defined(@anim_s_00000009) \
		+	defined(@anim_s_0000000a) \
		+	defined(@anim_s_0000000b) \
		+	defined(@anim_s_0000000c) \
		+	defined(@anim_s_0000000d) \
		+	defined(@anim_s_0000000e) \
		+	defined(@anim_s_0000000f) \
		+	defined(@anim_s_00000010) \
		+	defined(@anim_s_00000011) \
		+	defined(@anim_s_00000012) \
		+	defined(@anim_s_00000013) \
		+	defined(@anim_s_00000014) \
		+	defined(@anim_s_00000015) \
		+	defined(@anim_s_00000016) \
		+	defined(@anim_s_00000017) \
		+	defined(@anim_s_00000018) \
		+	defined(@anim_s_00000019) \
		+	defined(@anim_s_0000001a) \
		+	defined(@anim_s_0000001b) \
		+	defined(@anim_s_0000001c) \
		+	defined(@anim_s_0000001d) \
		+	defined(@anim_s_0000001e) \
		+	defined(@anim_s_0000001f) \
		+	defined(@anim_s_00000020) \
		+	defined(@anim_s_00000021) \
		+	defined(@anim_s_00000022) \
		+	defined(@anim_s_00000023) \
		+	defined(@anim_s_00000024) \
		+	defined(@anim_s_00000025) \
		+	defined(@anim_s_00000026) \
		+	defined(@anim_s_00000027) \
		+	defined(@anim_s_00000028) \
		+	defined(@anim_s_00000029) \
		+	defined(@anim_s_0000002a) \
		+	defined(@anim_s_0000002b) \
		+	defined(@anim_s_0000002c) \
		+	defined(@anim_s_0000002d) \
		+	defined(@anim_s_0000002e) \
		+	defined(@anim_s_0000002f) \
		+	defined(@anim_s_00000030) \
		+	defined(@anim_s_00000031) \
		+	defined(@anim_s_00000032) \
		+	defined(@anim_s_00000033) \
		+	defined(@anim_s_00000034) \
		+	defined(@anim_s_00000035) \
		+	defined(@anim_s_00000036) \
		+	defined(@anim_s_00000037) \
		+	defined(@anim_s_00000038) \
		+	defined(@anim_s_00000039) \
		+	defined(@anim_s_0000003a) \
		+	defined(@anim_s_0000003b) \
		+	defined(@anim_s_0000003c) \
		+	defined(@anim_s_0000003d) \
		+	defined(@anim_s_0000003e) \
		+	defined(@anim_s_0000003f) \
		)
.headersize -4
	.ifdef @anim_s_00000000 :: .dw @anim_s_00000000 :: .endif
	.ifdef @anim_s_00000001 :: .dw @anim_s_00000001 :: .endif
	.ifdef @anim_s_00000002 :: .dw @anim_s_00000002 :: .endif
	.ifdef @anim_s_00000003 :: .dw @anim_s_00000003 :: .endif
	.ifdef @anim_s_00000004 :: .dw @anim_s_00000004 :: .endif
	.ifdef @anim_s_00000005 :: .dw @anim_s_00000005 :: .endif
	.ifdef @anim_s_00000006 :: .dw @anim_s_00000006 :: .endif
	.ifdef @anim_s_00000007 :: .dw @anim_s_00000007 :: .endif
	.ifdef @anim_s_00000008 :: .dw @anim_s_00000008 :: .endif
	.ifdef @anim_s_00000009 :: .dw @anim_s_00000009 :: .endif
	.ifdef @anim_s_0000000a :: .dw @anim_s_0000000a :: .endif
	.ifdef @anim_s_0000000b :: .dw @anim_s_0000000b :: .endif
	.ifdef @anim_s_0000000c :: .dw @anim_s_0000000c :: .endif
	.ifdef @anim_s_0000000d :: .dw @anim_s_0000000d :: .endif
	.ifdef @anim_s_0000000e :: .dw @anim_s_0000000e :: .endif
	.ifdef @anim_s_0000000f :: .dw @anim_s_0000000f :: .endif
	.ifdef @anim_s_00000010 :: .dw @anim_s_00000010 :: .endif
	.ifdef @anim_s_00000011 :: .dw @anim_s_00000011 :: .endif
	.ifdef @anim_s_00000012 :: .dw @anim_s_00000012 :: .endif
	.ifdef @anim_s_00000013 :: .dw @anim_s_00000013 :: .endif
	.ifdef @anim_s_00000014 :: .dw @anim_s_00000014 :: .endif
	.ifdef @anim_s_00000015 :: .dw @anim_s_00000015 :: .endif
	.ifdef @anim_s_00000016 :: .dw @anim_s_00000016 :: .endif
	.ifdef @anim_s_00000017 :: .dw @anim_s_00000017 :: .endif
	.ifdef @anim_s_00000018 :: .dw @anim_s_00000018 :: .endif
	.ifdef @anim_s_00000019 :: .dw @anim_s_00000019 :: .endif
	.ifdef @anim_s_0000001a :: .dw @anim_s_0000001a :: .endif
	.ifdef @anim_s_0000001b :: .dw @anim_s_0000001b :: .endif
	.ifdef @anim_s_0000001c :: .dw @anim_s_0000001c :: .endif
	.ifdef @anim_s_0000001d :: .dw @anim_s_0000001d :: .endif
	.ifdef @anim_s_0000001e :: .dw @anim_s_0000001e :: .endif
	.ifdef @anim_s_0000001f :: .dw @anim_s_0000001f :: .endif
	.ifdef @anim_s_00000020 :: .dw @anim_s_00000020 :: .endif
	.ifdef @anim_s_00000021 :: .dw @anim_s_00000021 :: .endif
	.ifdef @anim_s_00000022 :: .dw @anim_s_00000022 :: .endif
	.ifdef @anim_s_00000023 :: .dw @anim_s_00000023 :: .endif
	.ifdef @anim_s_00000024 :: .dw @anim_s_00000024 :: .endif
	.ifdef @anim_s_00000025 :: .dw @anim_s_00000025 :: .endif
	.ifdef @anim_s_00000026 :: .dw @anim_s_00000026 :: .endif
	.ifdef @anim_s_00000027 :: .dw @anim_s_00000027 :: .endif
	.ifdef @anim_s_00000028 :: .dw @anim_s_00000028 :: .endif
	.ifdef @anim_s_00000029 :: .dw @anim_s_00000029 :: .endif
	.ifdef @anim_s_0000002a :: .dw @anim_s_0000002a :: .endif
	.ifdef @anim_s_0000002b :: .dw @anim_s_0000002b :: .endif
	.ifdef @anim_s_0000002c :: .dw @anim_s_0000002c :: .endif
	.ifdef @anim_s_0000002d :: .dw @anim_s_0000002d :: .endif
	.ifdef @anim_s_0000002e :: .dw @anim_s_0000002e :: .endif
	.ifdef @anim_s_0000002f :: .dw @anim_s_0000002f :: .endif
	.ifdef @anim_s_00000030 :: .dw @anim_s_00000030 :: .endif
	.ifdef @anim_s_00000031 :: .dw @anim_s_00000031 :: .endif
	.ifdef @anim_s_00000032 :: .dw @anim_s_00000032 :: .endif
	.ifdef @anim_s_00000033 :: .dw @anim_s_00000033 :: .endif
	.ifdef @anim_s_00000034 :: .dw @anim_s_00000034 :: .endif
	.ifdef @anim_s_00000035 :: .dw @anim_s_00000035 :: .endif
	.ifdef @anim_s_00000036 :: .dw @anim_s_00000036 :: .endif
	.ifdef @anim_s_00000037 :: .dw @anim_s_00000037 :: .endif
	.ifdef @anim_s_00000038 :: .dw @anim_s_00000038 :: .endif
	.ifdef @anim_s_00000039 :: .dw @anim_s_00000039 :: .endif
	.ifdef @anim_s_0000003a :: .dw @anim_s_0000003a :: .endif
	.ifdef @anim_s_0000003b :: .dw @anim_s_0000003b :: .endif
	.ifdef @anim_s_0000003c :: .dw @anim_s_0000003c :: .endif
	.ifdef @anim_s_0000003d :: .dw @anim_s_0000003d :: .endif
	.ifdef @anim_s_0000003e :: .dw @anim_s_0000003e :: .endif
	.ifdef @anim_s_0000003f :: .dw @anim_s_0000003f :: .endif
.endmacro

.macro	subanim_header,name
@s:
	.ifdef @subanim_header_s_00000001
		.error	"Subanimation header can only be called once"
	.endif
.headersize -4
name:
.headersize -4-.
	.ifdef @subanim_s_00000040
		.error	"Only 64 subanimations supported"
	.endif
	.ifdef @subanim_s_00000000 :: .dw @subanim_s_00000000 :: .endif
	.ifdef @subanim_s_00000001 :: .dw @subanim_s_00000001 :: .endif
	.ifdef @subanim_s_00000002 :: .dw @subanim_s_00000002 :: .endif
	.ifdef @subanim_s_00000003 :: .dw @subanim_s_00000003 :: .endif
	.ifdef @subanim_s_00000004 :: .dw @subanim_s_00000004 :: .endif
	.ifdef @subanim_s_00000005 :: .dw @subanim_s_00000005 :: .endif
	.ifdef @subanim_s_00000006 :: .dw @subanim_s_00000006 :: .endif
	.ifdef @subanim_s_00000007 :: .dw @subanim_s_00000007 :: .endif
	.ifdef @subanim_s_00000008 :: .dw @subanim_s_00000008 :: .endif
	.ifdef @subanim_s_00000009 :: .dw @subanim_s_00000009 :: .endif
	.ifdef @subanim_s_0000000a :: .dw @subanim_s_0000000a :: .endif
	.ifdef @subanim_s_0000000b :: .dw @subanim_s_0000000b :: .endif
	.ifdef @subanim_s_0000000c :: .dw @subanim_s_0000000c :: .endif
	.ifdef @subanim_s_0000000d :: .dw @subanim_s_0000000d :: .endif
	.ifdef @subanim_s_0000000e :: .dw @subanim_s_0000000e :: .endif
	.ifdef @subanim_s_0000000f :: .dw @subanim_s_0000000f :: .endif
	.ifdef @subanim_s_00000010 :: .dw @subanim_s_00000010 :: .endif
	.ifdef @subanim_s_00000011 :: .dw @subanim_s_00000011 :: .endif
	.ifdef @subanim_s_00000012 :: .dw @subanim_s_00000012 :: .endif
	.ifdef @subanim_s_00000013 :: .dw @subanim_s_00000013 :: .endif
	.ifdef @subanim_s_00000014 :: .dw @subanim_s_00000014 :: .endif
	.ifdef @subanim_s_00000015 :: .dw @subanim_s_00000015 :: .endif
	.ifdef @subanim_s_00000016 :: .dw @subanim_s_00000016 :: .endif
	.ifdef @subanim_s_00000017 :: .dw @subanim_s_00000017 :: .endif
	.ifdef @subanim_s_00000018 :: .dw @subanim_s_00000018 :: .endif
	.ifdef @subanim_s_00000019 :: .dw @subanim_s_00000019 :: .endif
	.ifdef @subanim_s_0000001a :: .dw @subanim_s_0000001a :: .endif
	.ifdef @subanim_s_0000001b :: .dw @subanim_s_0000001b :: .endif
	.ifdef @subanim_s_0000001c :: .dw @subanim_s_0000001c :: .endif
	.ifdef @subanim_s_0000001d :: .dw @subanim_s_0000001d :: .endif
	.ifdef @subanim_s_0000001e :: .dw @subanim_s_0000001e :: .endif
	.ifdef @subanim_s_0000001f :: .dw @subanim_s_0000001f :: .endif
	.ifdef @subanim_s_00000020 :: .dw @subanim_s_00000020 :: .endif
	.ifdef @subanim_s_00000021 :: .dw @subanim_s_00000021 :: .endif
	.ifdef @subanim_s_00000022 :: .dw @subanim_s_00000022 :: .endif
	.ifdef @subanim_s_00000023 :: .dw @subanim_s_00000023 :: .endif
	.ifdef @subanim_s_00000024 :: .dw @subanim_s_00000024 :: .endif
	.ifdef @subanim_s_00000025 :: .dw @subanim_s_00000025 :: .endif
	.ifdef @subanim_s_00000026 :: .dw @subanim_s_00000026 :: .endif
	.ifdef @subanim_s_00000027 :: .dw @subanim_s_00000027 :: .endif
	.ifdef @subanim_s_00000028 :: .dw @subanim_s_00000028 :: .endif
	.ifdef @subanim_s_00000029 :: .dw @subanim_s_00000029 :: .endif
	.ifdef @subanim_s_0000002a :: .dw @subanim_s_0000002a :: .endif
	.ifdef @subanim_s_0000002b :: .dw @subanim_s_0000002b :: .endif
	.ifdef @subanim_s_0000002c :: .dw @subanim_s_0000002c :: .endif
	.ifdef @subanim_s_0000002d :: .dw @subanim_s_0000002d :: .endif
	.ifdef @subanim_s_0000002e :: .dw @subanim_s_0000002e :: .endif
	.ifdef @subanim_s_0000002f :: .dw @subanim_s_0000002f :: .endif
	.ifdef @subanim_s_00000030 :: .dw @subanim_s_00000030 :: .endif
	.ifdef @subanim_s_00000031 :: .dw @subanim_s_00000031 :: .endif
	.ifdef @subanim_s_00000032 :: .dw @subanim_s_00000032 :: .endif
	.ifdef @subanim_s_00000033 :: .dw @subanim_s_00000033 :: .endif
	.ifdef @subanim_s_00000034 :: .dw @subanim_s_00000034 :: .endif
	.ifdef @subanim_s_00000035 :: .dw @subanim_s_00000035 :: .endif
	.ifdef @subanim_s_00000036 :: .dw @subanim_s_00000036 :: .endif
	.ifdef @subanim_s_00000037 :: .dw @subanim_s_00000037 :: .endif
	.ifdef @subanim_s_00000038 :: .dw @subanim_s_00000038 :: .endif
	.ifdef @subanim_s_00000039 :: .dw @subanim_s_00000039 :: .endif
	.ifdef @subanim_s_0000003a :: .dw @subanim_s_0000003a :: .endif
	.ifdef @subanim_s_0000003b :: .dw @subanim_s_0000003b :: .endif
	.ifdef @subanim_s_0000003c :: .dw @subanim_s_0000003c :: .endif
	.ifdef @subanim_s_0000003d :: .dw @subanim_s_0000003d :: .endif
	.ifdef @subanim_s_0000003e :: .dw @subanim_s_0000003e :: .endif
	.ifdef @subanim_s_0000003f :: .dw @subanim_s_0000003f :: .endif
.endmacro

.macro	oamlist_header,name
@s:
	.ifdef @oamlist_header_s_00000001
		.error	"OAM list header can only be called once"
	.endif
.headersize -4
name:
.headersize -4-.
	.ifdef @oamlist_s_00000040
		.error	"Only 64 OAM lists supported"
	.endif
	.ifdef @oamlist_s_00000000 :: .dw @oamlist_s_00000000 :: .endif
	.ifdef @oamlist_s_00000001 :: .dw @oamlist_s_00000001 :: .endif
	.ifdef @oamlist_s_00000002 :: .dw @oamlist_s_00000002 :: .endif
	.ifdef @oamlist_s_00000003 :: .dw @oamlist_s_00000003 :: .endif
	.ifdef @oamlist_s_00000004 :: .dw @oamlist_s_00000004 :: .endif
	.ifdef @oamlist_s_00000005 :: .dw @oamlist_s_00000005 :: .endif
	.ifdef @oamlist_s_00000006 :: .dw @oamlist_s_00000006 :: .endif
	.ifdef @oamlist_s_00000007 :: .dw @oamlist_s_00000007 :: .endif
	.ifdef @oamlist_s_00000008 :: .dw @oamlist_s_00000008 :: .endif
	.ifdef @oamlist_s_00000009 :: .dw @oamlist_s_00000009 :: .endif
	.ifdef @oamlist_s_0000000a :: .dw @oamlist_s_0000000a :: .endif
	.ifdef @oamlist_s_0000000b :: .dw @oamlist_s_0000000b :: .endif
	.ifdef @oamlist_s_0000000c :: .dw @oamlist_s_0000000c :: .endif
	.ifdef @oamlist_s_0000000d :: .dw @oamlist_s_0000000d :: .endif
	.ifdef @oamlist_s_0000000e :: .dw @oamlist_s_0000000e :: .endif
	.ifdef @oamlist_s_0000000f :: .dw @oamlist_s_0000000f :: .endif
	.ifdef @oamlist_s_00000010 :: .dw @oamlist_s_00000010 :: .endif
	.ifdef @oamlist_s_00000011 :: .dw @oamlist_s_00000011 :: .endif
	.ifdef @oamlist_s_00000012 :: .dw @oamlist_s_00000012 :: .endif
	.ifdef @oamlist_s_00000013 :: .dw @oamlist_s_00000013 :: .endif
	.ifdef @oamlist_s_00000014 :: .dw @oamlist_s_00000014 :: .endif
	.ifdef @oamlist_s_00000015 :: .dw @oamlist_s_00000015 :: .endif
	.ifdef @oamlist_s_00000016 :: .dw @oamlist_s_00000016 :: .endif
	.ifdef @oamlist_s_00000017 :: .dw @oamlist_s_00000017 :: .endif
	.ifdef @oamlist_s_00000018 :: .dw @oamlist_s_00000018 :: .endif
	.ifdef @oamlist_s_00000019 :: .dw @oamlist_s_00000019 :: .endif
	.ifdef @oamlist_s_0000001a :: .dw @oamlist_s_0000001a :: .endif
	.ifdef @oamlist_s_0000001b :: .dw @oamlist_s_0000001b :: .endif
	.ifdef @oamlist_s_0000001c :: .dw @oamlist_s_0000001c :: .endif
	.ifdef @oamlist_s_0000001d :: .dw @oamlist_s_0000001d :: .endif
	.ifdef @oamlist_s_0000001e :: .dw @oamlist_s_0000001e :: .endif
	.ifdef @oamlist_s_0000001f :: .dw @oamlist_s_0000001f :: .endif
	.ifdef @oamlist_s_00000020 :: .dw @oamlist_s_00000020 :: .endif
	.ifdef @oamlist_s_00000021 :: .dw @oamlist_s_00000021 :: .endif
	.ifdef @oamlist_s_00000022 :: .dw @oamlist_s_00000022 :: .endif
	.ifdef @oamlist_s_00000023 :: .dw @oamlist_s_00000023 :: .endif
	.ifdef @oamlist_s_00000024 :: .dw @oamlist_s_00000024 :: .endif
	.ifdef @oamlist_s_00000025 :: .dw @oamlist_s_00000025 :: .endif
	.ifdef @oamlist_s_00000026 :: .dw @oamlist_s_00000026 :: .endif
	.ifdef @oamlist_s_00000027 :: .dw @oamlist_s_00000027 :: .endif
	.ifdef @oamlist_s_00000028 :: .dw @oamlist_s_00000028 :: .endif
	.ifdef @oamlist_s_00000029 :: .dw @oamlist_s_00000029 :: .endif
	.ifdef @oamlist_s_0000002a :: .dw @oamlist_s_0000002a :: .endif
	.ifdef @oamlist_s_0000002b :: .dw @oamlist_s_0000002b :: .endif
	.ifdef @oamlist_s_0000002c :: .dw @oamlist_s_0000002c :: .endif
	.ifdef @oamlist_s_0000002d :: .dw @oamlist_s_0000002d :: .endif
	.ifdef @oamlist_s_0000002e :: .dw @oamlist_s_0000002e :: .endif
	.ifdef @oamlist_s_0000002f :: .dw @oamlist_s_0000002f :: .endif
	.ifdef @oamlist_s_00000030 :: .dw @oamlist_s_00000030 :: .endif
	.ifdef @oamlist_s_00000031 :: .dw @oamlist_s_00000031 :: .endif
	.ifdef @oamlist_s_00000032 :: .dw @oamlist_s_00000032 :: .endif
	.ifdef @oamlist_s_00000033 :: .dw @oamlist_s_00000033 :: .endif
	.ifdef @oamlist_s_00000034 :: .dw @oamlist_s_00000034 :: .endif
	.ifdef @oamlist_s_00000035 :: .dw @oamlist_s_00000035 :: .endif
	.ifdef @oamlist_s_00000036 :: .dw @oamlist_s_00000036 :: .endif
	.ifdef @oamlist_s_00000037 :: .dw @oamlist_s_00000037 :: .endif
	.ifdef @oamlist_s_00000038 :: .dw @oamlist_s_00000038 :: .endif
	.ifdef @oamlist_s_00000039 :: .dw @oamlist_s_00000039 :: .endif
	.ifdef @oamlist_s_0000003a :: .dw @oamlist_s_0000003a :: .endif
	.ifdef @oamlist_s_0000003b :: .dw @oamlist_s_0000003b :: .endif
	.ifdef @oamlist_s_0000003c :: .dw @oamlist_s_0000003c :: .endif
	.ifdef @oamlist_s_0000003d :: .dw @oamlist_s_0000003d :: .endif
	.ifdef @oamlist_s_0000003e :: .dw @oamlist_s_0000003e :: .endif
	.ifdef @oamlist_s_0000003f :: .dw @oamlist_s_0000003f :: .endif
.endmacro

.macro	subanim_none,name
.headersize -4
name:
.headersize -4-.
	.dw	4
	sframe	0,1,ANIM_END
	subanim_end
.endmacro

.macro	oamlist_single,name
.headersize -4
name:
.headersize -4-.
	.dw	4
.endmacro

.macro	anim
@s:
.endmacro

.macro	subanim
@s:
.endmacro

.macro	oamlist
@s:
.endmacro

.macro	frame,tiles,palette,subanim,oamlist,delay,flags
	.dw	tiles
	.dw	palette
	.dw	subanim
	.dw	oamlist
	.dh	delay
	.db	flags
	.align	4
.endmacro

.macro	sframe,oamlist,delay,flags
	.db	oamlist,delay,flags
.if flags & ANIM_END
	.db	-1,-1,-1
.endif
.endmacro

.macro	tiles,name,path
name:
	.dw	@e-name-4
@s:
	.import	path
@e:
.endmacro

.macro	pal,name,path
name:
	.dw	PAL_SIZE
	.import	path
	.align	4
.endmacro

.macro	oam,tile,x,y,size,flip,pal
	.db	tile,x,y
	.dh	size|flip|(pal<<12)
.endmacro
.macro	oam_end
	.db	-1,-1,-1,-1,-1
.endmacro

.macro	subanim_end
	.db	0
	.align	4
.endmacro

.macro	oamlist_end
	.db	0
	.align	4
.endmacro