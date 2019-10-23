// Note: the purpose of this is just to have the .data section of the ROM be
// relocatable and have individual files be resizable. Some things may still
// rely on data files being in a specific order!

.area 0x8378FB8-.,0xFF	// Barrier sprite must be in same location for VC
.align 4	::	file_1F0000:	.import	ROM_IN,0x1F0000,0x89A8
.align 4	::	file_1F89A8:	.import	ROM_IN,0x1F89A8,0x2AF0
.align 4	::	file_1FB498:	.import	ROM_IN,0x1FB498,0x29B8
.align 4	::	file_1FDE50:	.import	ROM_IN,0x1FDE50,0x2094
.align 4	::	file_1FFEE4:	.import	ROM_IN,0x1FFEE4,0x2750
.align 4	::	file_202634:	.import	ROM_IN,0x202634,0x1120
.align 4	::	file_203754:	.import	ROM_IN,0x203754,0x870
.align 4	::	file_203FC4:	.import	ROM_IN,0x203FC4,0x13F4
.align 4	::	file_2053B8:	.import	ROM_IN,0x2053B8,0x2878
.align 4	::	file_207C30:	.import	ROM_IN,0x207C30,0xDF0
.align 4	::	file_208A20:	.import	ROM_IN,0x208A20,0x1064
.align 4	::	file_209A84:	.import	ROM_IN,0x209A84,0xD68
.align 4	::	file_20A7EC:	.import	ROM_IN,0x20A7EC,0x32B8
.align 4	::	file_20DAA4:	.import	ROM_IN,0x20DAA4,0xC7C
.align 4	::	file_20E720:	.import	ROM_IN,0x20E720,0xE64
.align 4	::	file_20F584:	.import	ROM_IN,0x20F584,0x1118
.align 4	::	file_21069C:	.import	ROM_IN,0x21069C,0xA78
.align 4	::	file_211114:	.import	ROM_IN,0x211114,0x38F8
.align 4	::	file_214A0C:	.import	ROM_IN,0x214A0C,0xB34
.align 4	::	file_215540:	.import	ROM_IN,0x215540,0x7A8
.align 4	::	file_215CE8:	.import	ROM_IN,0x215CE8,0xA3C
.align 4	::	file_216724:	.import	ROM_IN,0x216724,0xAC58
.align 4	::	file_2301BC:	.import	ROM_IN,0x2301BC,0x9644
.align 4	::	file_239800:	.import	ROM_IN,0x239800,0xAF38
.align 4	::	file_244738:	.import	ROM_IN,0x244738,0xAC68
.align 4	::	file_24F3A0:	.import	ROM_IN,0x24F3A0,0x8E28
.align 4	::	file_2581C8:	.import	ROM_IN,0x2581C8,0xC8A8
.align 4	::	file_264A70:	.import	ROM_IN,0x264A70,0xB818
.align 4	::	file_270288:	.import	ROM_IN,0x270288,0x9CBC
.align 4	::	file_279F44:	.import	ROM_IN,0x279F44,0x92E4
.align 4	::	file_283228:	.import	ROM_IN,0x283228,0x83D0
.align 4	::	file_28B5F8:	.import	ROM_IN,0x28B5F8,0xA148
.align 4	::	file_295740:	.import	ROM_IN,0x295740,0x24DC
.align 4	::	file_297C1C:	.import	ROM_IN,0x297C1C,0x2808
.align 4	::	file_29A424:	.import	ROM_IN,0x29A424,0x3E18
.align 4	::	file_29E23C:	.import	ROM_IN,0x29E23C,0x254C
.align 4	::	file_2A0788:	.import	ROM_IN,0x2A0788,0x1F6C
.align 4	::	file_2A26F4:	.import	ROM_IN,0x2A26F4,0x25B0
.align 4	::	file_2A4CA4:	.import	ROM_IN,0x2A4CA4,0x286C
.align 4	::	file_2A7510:	.import	ROM_IN,0x2A7510,0x33CC
.align 4	::	file_2AA8DC:	.import	ROM_IN,0x2AA8DC,0x395C
.align 4	::	file_2AE238:	.import	ROM_IN,0x2AE238,0x2774
.align 4	::	file_2B09AC:	.import	ROM_IN,0x2B09AC,0xF30C
.align 4	::	file_2BFCB8:	.import	ROM_IN,0x2BFCB8,0xC2A4
.align 4	::	file_2CBF5C:	.import	ROM_IN,0x2CBF5C,0xADFC
.align 4	::	file_2D6D58:	.import	ROM_IN,0x2D6D58,0x196F8
.align 4	::	file_2F0450:	.import	ROM_IN,0x2F0450,0x10464
.align 4	::	file_3008B4:	.import	ROM_IN,0x3008B4,0x6130
.align 4	::	file_3069E4:	.import	ROM_IN,0x3069E4,0xB1C4
.align 4	::	file_311BA8:	.import	ROM_IN,0x311BA8,0xEA10


.align 4	::	file_3317E8:	.import	ROM_IN,0x3317E8,0x71A8
.align 4	::	file_338990:	.import	ROM_IN,0x338990,0xEF4
.align 4	::	file_339884:	.import	ROM_IN,0x339884,0xE0C
.align 4	::	file_33A690:	.import	ROM_IN,0x33A690,0x56C
.align 4	::	file_33ABFC:	.import	ROM_IN,0x33ABFC,0x17C4
.align 4	::	file_33C3C0:	.import	ROM_IN,0x33C3C0,0x1260
.align 4	::	file_33D620:	.import	ROM_IN,0x33D620,0xCEC
.align 4	::	file_33E30C:	.import	ROM_IN,0x33E30C,0x1448
.align 4	::	file_33F754:	.import	ROM_IN,0x33F754,0x1774
.align 4	::	file_340EC8:	.import	ROM_IN,0x340EC8,0xD78
.align 4	::	file_341C40:	.import	ROM_IN,0x341C40,0x3218
.align 4	::	file_344E58:	.import	ROM_IN,0x344E58,0x83C
.align 4	::	file_345694:	.import	ROM_IN,0x345694,0xB54
.align 4	::	file_3461E8:	.import	ROM_IN,0x3461E8,0x160
.align 4	::	file_346348:	.import	ROM_IN,0x346348,0xC84
.align 4	::	file_346FCC:	.import	ROM_IN,0x346FCC,0x12E0
.align 4	::	file_3482AC:	.import	ROM_IN,0x3482AC,0x1068
.align 4	::	file_349314:	.import	ROM_IN,0x349314,0x2464
.align 4	::	file_34B778:	.import	ROM_IN,0x34B778,0x10FC
.align 4	::	file_34C874:	.import	ROM_IN,0x34C874,0x26BC
.align 4	::	file_34EF30:	.import	ROM_IN,0x34EF30,0x8D0
.align 4	::	file_34F800:	.import	ROM_IN,0x34F800,0x332C
.align 4	::	file_352B2C:	.import	ROM_IN,0x352B2C,0x4648
.align 4	::	file_357174:	.import	ROM_IN,0x357174,0x105C
.align 4	::	file_3581D0:	.import	ROM_IN,0x3581D0,0xD78
.align 4	::	file_358F48:	.import	ROM_IN,0x358F48,0x3408
.align 4	::	file_35C350:	.import	ROM_IN,0x35C350,0x3794
.align 4	::	file_35FAE4:	.import	ROM_IN,0x35FAE4,0x22DC
.align 4	::	file_361DC0:	.import	ROM_IN,0x361DC0,0x410
.align 4	::	file_3621D0:	.import	ROM_IN,0x3621D0,0x4D8
.align 4	::	file_3626A8:	.import	ROM_IN,0x3626A8,0x6A4
.align 4	::	file_362D4C:	.import	ROM_IN,0x362D4C,0x160
.align 4	::	file_362EAC:	.import	ROM_IN,0x362EAC,0xB10
.align 4	::	file_3639BC:	.import	ROM_IN,0x3639BC,0x26C
.align 4	::	file_363C28:	.import	ROM_IN,0x363C28,0x185C
.align 4	::	file_365484:	.import	ROM_IN,0x365484,0x120C
.align 4	::	file_366690:	.import	ROM_IN,0x366690,0x1C28
.align 4	::	file_3682B8:	.import	ROM_IN,0x3682B8,0xA48
.align 4	::	file_368D00:	.import	ROM_IN,0x368D00,0x2E5C
.align 4	::	file_36BB5C:	.import	ROM_IN,0x36BB5C,0x25E0
.align 4	::	file_36E13C:	.import	ROM_IN,0x36E13C,0x1CC
.align 4	::	file_36E308:	.import	ROM_IN,0x36E308,0x3C8
.align 4	::	file_36E6D0:	.import	ROM_IN,0x36E6D0,0x464
.align 4	::	file_36EB34:	.import	ROM_IN,0x36EB34,0x224
.align 4	::	file_36ED58:	.import	ROM_IN,0x36ED58,0x588
.align 4	::	file_36F2E0:	.import	ROM_IN,0x36F2E0,0x6D4
.align 4	::	file_36F9B4:	.import	ROM_IN,0x36F9B4,0x260
.align 4	::	file_36FC14:	.import	ROM_IN,0x36FC14,0xF8C
.align 4	::	file_370BA0:	.import	ROM_IN,0x370BA0,0x694
.align 4	::	file_371234:	.import	ROM_IN,0x371234,0x464
.align 4	::	file_371698:	.import	ROM_IN,0x371698,0x129C
.align 4	::	file_372934:	.import	ROM_IN,0x372934,0x234
.align 4	::	file_372B68:	.import	ROM_IN,0x372B68,0xC28
.align 4	::	file_373790:	.import	ROM_IN,0x373790,0x3CC
.align 4	::	file_373B5C:	.import	ROM_IN,0x373B5C,0x279C
.align 4	::	file_3762F8:	.import	ROM_IN,0x3762F8,0x434
.align 4	::	file_37672C:	.import	ROM_IN,0x37672C,0x208C
.align 4	::	file_3787B8:	.import	ROM_IN,0x3787B8,0x800

// Files moved here from after Barrier sprite; should be 0x2FF0C bytes max
.align 4	::	file_379C18:	.import	ROM_IN,0x379C18,0x6B8
.align 4	::	file_37A2D0:	.import	ROM_IN,0x37A2D0,0x109C
.align 4	::	file_37B36C:	.import	ROM_IN,0x37B36C,0x1E70
.align 4	::	file_37D1DC:	.import	ROM_IN,0x37D1DC,0x1CD4
.align 4	::	file_37EEB0:	.import	ROM_IN,0x37EEB0,0x8B4
.align 4	::	file_37F764:	.import	ROM_IN,0x37F764,0x25FC
.align 4	::	file_381D60:	.import	ROM_IN,0x381D60,0xE10
.align 4	::	file_382B70:	.import	ROM_IN,0x382B70,0x1EDC
.align 4	::	file_384A4C:	.import	ROM_IN,0x384A4C,0x7C0
.align 4	::	file_38520C:	.import	ROM_IN,0x38520C,0x978
.align 4	::	file_385B84:	.import	ROM_IN,0x385B84,0xB40
.align 4	::	file_3866C4:	.import	ROM_IN,0x3866C4,0xDD8
.align 4	::	file_38749C:	.import	ROM_IN,0x38749C,0xA34
.align 4	::	file_387ED0:	.import	ROM_IN,0x387ED0,0xF04
.align 4	::	file_388DD4:	.import	ROM_IN,0x388DD4,0x244C
.align 4	::	file_38B220:	.import	ROM_IN,0x38B220,0x814
.align 4	::	file_38BA34:	.import	ROM_IN,0x38BA34,0x1248
.align 4	::	file_38CC7C:	.import	ROM_IN,0x38CC7C,0x1B34
.align 4	::	file_38E7B0:	.import	ROM_IN,0x38E7B0,0x1600
.align 4	::	file_38FDB0:	.import	ROM_IN,0x38FDB0,0xFD0
.align 4	::	file_390D80:	.import	ROM_IN,0x390D80,0x38C
.align 4	::	file_39110C:	.import	ROM_IN,0x39110C,0xED4
.align 4	::	file_391FE0:	.import	ROM_IN,0x391FE0,0x1530
.align 4	::	file_393510:	.import	ROM_IN,0x393510,0x3B8
.align 4	::	file_3938C8:	.import	ROM_IN,0x3938C8,0x1ED4
.align 4	::	file_39579C:	.import	ROM_IN,0x39579C,0xD98
.align 4	::	file_396534:	.import	ROM_IN,0x396534,0x45C
.align 4	::	file_396990:	.import	ROM_IN,0x396990,0x520
.align 4	::	file_396EB0:	.import	ROM_IN,0x396EB0,0x568
.align 4	::	file_397418:	.import	ROM_IN,0x397418,0x538
.align 4	::	file_397950:	.import	ROM_IN,0x397950,0x308C
.align 4	::	file_39A9DC:	.import	ROM_IN,0x39A9DC,0xA20
.align 4	::	file_39B3FC:	.import	ROM_IN,0x39B3FC,0x284
.align 4	::	file_39B680:	.import	ROM_IN,0x39B680,0x650
.align 4	::	file_39BCD0:	.import	ROM_IN,0x39BCD0,0xE60
.align 4	::	file_39CB30:	.import	ROM_IN,0x39CB30,0x7D8
.align 4	::	file_39D308:	.import	ROM_IN,0x39D308,0x2F8
.align 4	::	file_39D600:	.import	ROM_IN,0x39D600,0x7E4
.align 4	::	file_39DDE4:	.import	ROM_IN,0x39DDE4,0x103C
.align 4	::	file_39EE20:	.import	ROM_IN,0x39EE20,0xF9C
.align 4	::	file_39FDBC:	.import	ROM_IN,0x39FDBC,0xAB8
.align 4	::	file_3A0874:	.import	ROM_IN,0x3A0874,0x1904
.align 4	::	file_3A2178:	.import	ROM_IN,0x3A2178,0x5C0
.align 4	::	file_3A2738:	.import	ROM_IN,0x3A2738,0xD4C
.align 4	::	file_3A3484:	.import	ROM_IN,0x3A3484,0x16BC
.align 4	::	file_3A4B40:	.import	ROM_IN,0x3A4B40,0x1344
.align 4	::	file_3A5E84:	.import	ROM_IN,0x3A5E84,0x958
.align 4	::	file_3A67DC:	.import	ROM_IN,0x3A67DC,0x820
.align 4	::	file_3A6FFC:	.import	ROM_IN,0x3A6FFC,0x598
.align 4	::	file_3A7594:	.import	ROM_IN,0x3A7594,0x460
.align 4	::	file_3A79F4:	.import	ROM_IN,0x3A79F4,0x53C
.align 4	::	file_3A7F30:	.import	ROM_IN,0x3A7F30,0x3C8
.align 4	::	file_3A82F8:	.import	ROM_IN,0x3A82F8,0x164
.align 4	::	file_3A845C:	.import	ROM_IN,0x3A845C,0x2C4
.align 4	::	file_3A8720:	.import	ROM_IN,0x3A8720,0x630
.align 4	::	file_3A8D50:	.import	ROM_IN,0x3A8D50,0x540
.align 4	::	file_3A9290:	.import	ROM_IN,0x3A9290,0x228

.align 4	::	file_3ACFA4:	.import	ROM_IN,0x3ACFA4,0x3EC

.align 4	::	file_4E7F70:	.import	ROM_IN,0x4E7F70,0x280

.endarea

.align 4	::	file_378FB8:	.import	ROM_IN,0x378FB8,0xC60		// Barrier sprite

.align 4	::	file_016108:	.import	TEMP+"/016108.map.bin"
.align 4	::	file_0163F4:	.import	TEMP+"/0163F4.map.bin"
.align 4	::	file_22137C:	.import	"inc/gutsman.dmp"
.align 4	::	file_3205B8:	.import "inc/bass.dmp"
.align 4	::	file_32BF28:	.import	"inc/sword.dmp"

// file_379C18 - file_3A9290 moved before Barrier sprite
.align 4	::	file_3A94B8:	.import	ROM_IN,0x3A94B8,0x6E0
.align 4	::	file_3A9B98:	.import	ROM_IN,0x3A9B98,0x54C
.align 4	::	file_3AA0E4:	.import	ROM_IN,0x3AA0E4,0x1E0C
.align 4	::	file_3ABEF0:	.import	ROM_IN,0x3ABEF0,0x798
.align 4	::	file_3AC688:	.import	ROM_IN,0x3AC688,0x91C
// file_3ACFA4 moved before Barrier sprite
.align 4	::	file_3AD390:	.import	ROM_IN,0x3AD390,0x264
.align 4	::	file_3AD5F4:	.import	ROM_IN,0x3AD5F4,0x87C
.align 4	::	file_3ADE70:	.import	ROM_IN,0x3ADE70,0xB9C
.align 4	::	file_3AEA0C:	.import	ROM_IN,0x3AEA0C,0x1154
.align 4	::	file_3AFB60:	.import	ROM_IN,0x3AFB60,0x854
.align 4	::	file_3B03B4:	.import	ROM_IN,0x3B03B4,0x20A8
.align 4	::	file_3B245C:	.import	ROM_IN,0x3B245C,0x15C8
.align 4	::	file_3B3A24:	.import	ROM_IN,0x3B3A24,0x39C
.align 4	::	file_3B3DC0:	.import	ROM_IN,0x3B3DC0,0xDB8
.align 4	::	file_3B4B78:	.import	ROM_IN,0x3B4B78,0x7EC
.align 4	::	file_3B5364:	.import	ROM_IN,0x3B5364,0x7B4
.align 4	::	file_3B5B18:	.import	ROM_IN,0x3B5B18,0x124
.align 4	::	file_3B5C3C:	.import	ROM_IN,0x3B5C3C,0x7F4
.align 4	::	file_3B6430:	.import	ROM_IN,0x3B6430,0x654
.align 4	::	file_3B6A84:	.import	ROM_IN,0x3B6A84,0x1A4
.align 4	::	file_3B6C28:	.import	ROM_IN,0x3B6C28,0x1AC
.align 4	::	file_3B6DD4:	.import	ROM_IN,0x3B6DD4,0x1F68
.align 4	::	file_3B8D3C:	.import	ROM_IN,0x3B8D3C,0x1C50
.align 4	::	file_3BA98C:	.import	ROM_IN,0x3BA98C,0x5CC
.align 4	::	file_3BAF58:	.import	ROM_IN,0x3BAF58,0x370
.align 4	::	file_3BB2C8:	.import	ROM_IN,0x3BB2C8,0x1AD0
.align 4	::	file_3BCD98:	.import	ROM_IN,0x3BCD98,0x18A4
.align 4	::	file_3BE63C:	.import	ROM_IN,0x3BE63C,0x440
.align 4	::	file_3BEA7C:	.import	ROM_IN,0x3BEA7C,0x858
.align 4	::	file_3BF2D4:	.import	ROM_IN,0x3BF2D4,0x14D0
.align 4	::	file_3C07A4:	.import	ROM_IN,0x3C07A4,0x1270
.align 4	::	file_3C1A14:	.import	ROM_IN,0x3C1A14,0xED8
.align 4	::	file_3C28EC:	.import	ROM_IN,0x3C28EC,0xEE4
.align 4	::	file_3C37D0:	.import	ROM_IN,0x3C37D0,0x2E4
.align 4	::	file_3C3AB4:	.import	ROM_IN,0x3C3AB4,0x14A8
.align 4	::	file_3C4F5C:	.import	ROM_IN,0x3C4F5C,0x940
.align 4	::	file_3C589C:	.import	ROM_IN,0x3C589C,0x91C
.align 4	::	file_3C61B8:	.import	ROM_IN,0x3C61B8,0xDBC
.align 4	::	file_3C6F74:	.import "inc/bass-cape.dmp"
.align 4	::	file_3CE6F4:	.import	ROM_IN,0x3CE6F4,0xAC8
.align 4	::	file_3CF1BC:	.import	ROM_IN,0x3CF1BC,0x408
.align 4	::	file_3CF5C4:	.import	ROM_IN,0x3CF5C4,0x1C00
.align 4	::	file_3D11C4:	.import	ROM_IN,0x3D11C4,0x1710
.align 4	::	file_3D28D4:	.import	ROM_IN,0x3D28D4,0x128C
.align 4	::	file_3D3B60:	.import	ROM_IN,0x3D3B60,0x3668
.align 4	::	file_3D71C8:	.import	ROM_IN,0x3D71C8,0xD9C
.align 4	::	file_3D7F64:	.import	ROM_IN,0x3D7F64,0x5418
.align 4	::	file_3DD37C:	.import	ROM_IN,0x3DD37C,0x78C
.align 4	::	file_3DDB08:	.import	ROM_IN,0x3DDB08,0x9FC
.align 4	::	file_3DE504:	.import	ROM_IN,0x3DE504,0x3740
.align 4	::	file_3E1C44:	.import	ROM_IN,0x3E1C44,0x248
.align 4	::	file_3E1E8C:	.import	ROM_IN,0x3E1E8C,0xC08
.align 4	::	file_3E2A94:	.import	ROM_IN,0x3E2A94,0x8E8
.align 4	::	file_3E337C:	.import	ROM_IN,0x3E337C,0xA04
.align 4	::	file_3E3D80:	.import	ROM_IN,0x3E3D80,0x22A8
.align 4	::	file_3E6028:	.import	ROM_IN,0x3E6028,0xF18
.align 4	::	file_3E6F40:	.import	ROM_IN,0x3E6F40,0x998
.align 4	::	file_3E78D8:	.import	ROM_IN,0x3E78D8,0xA8C
.align 4	::	file_3E8364:	.import	ROM_IN,0x3E8364,0x2EF4
.align 4	::	file_3EB258:	.import	ROM_IN,0x3EB258,0x1740
.align 4	::	file_3EC998:	.import	ROM_IN,0x3EC998,0xBA0
.align 4	::	file_3ED538:	.import	ROM_IN,0x3ED538,0x6B8
.align 4	::	file_3EDBF0:	.import	ROM_IN,0x3EDBF0,0xFE8
.align 4	::	file_3EEBD8:	.import	ROM_IN,0x3EEBD8,0xB4C
.align 4	::	file_3EF724:	.import	ROM_IN,0x3EF724,0x84E4
.align 4	::	file_3F7C08:	.import	ROM_IN,0x3F7C08,0x7964
.align 4	::	file_3FF56C:	.import	"inc/gutsman-ow.dmp"
.align 4	::	file_40799C:	.import	ROM_IN,0x40799C,0x75FC
.align 4	::	file_40EF98:	.import	ROM_IN,0x40EF98,0x784C
.align 4	::	file_4167E4:	.import	ROM_IN,0x4167E4,0xA6A8
.align 4	::	file_420E8C:	.import	ROM_IN,0x420E8C,0x2D44
.align 4	::	file_423BD0:	.import	ROM_IN,0x423BD0,0x5AF0
.align 4	::	file_4296C0:	.import	ROM_IN,0x4296C0,0x4968
.align 4	::	file_42E028:	.import	ROM_IN,0x42E028,0x2EDC
.align 4	::	file_430F04:	.import	ROM_IN,0x430F04,0xA8B0
.align 4	::	file_43B7B4:	.import	ROM_IN,0x43B7B4,0xA610
.align 4	::	file_445DC4:	.import	ROM_IN,0x445DC4,0x8A9C
.align 4	::	file_44E860:	.import	ROM_IN,0x44E860,0xEDC0
.align 4	::	file_45D620:	.import	ROM_IN,0x45D620,0xC6FC
.align 4	::	file_469D1C:	.import	ROM_IN,0x469D1C,0xA308
.align 4	::	file_474024:	.import	ROM_IN,0x474024,0x9150
.align 4	::	file_47D174:	.import	ROM_IN,0x47D174,0x4D98
.align 4	::	file_481F0C:	.import	ROM_IN,0x481F0C,0x923C
.align 4	::	file_48B148:	.import	ROM_IN,0x48B148,0x5030
.align 4	::	file_490178:	.import	ROM_IN,0x490178,0xE600
.align 4	::	file_49E778:	.import	ROM_IN,0x49E778,0x283C
.align 4	::	file_4A0FB4:	.import	ROM_IN,0x4A0FB4,0x98F4
.align 4	::	file_4AA8A8:	.import	ROM_IN,0x4AA8A8,0x6E6C
.align 4	::	file_4B1714:	.import	ROM_IN,0x4B1714,0x1C40
.align 4	::	file_4B3354:	.import	ROM_IN,0x4B3354,0x3AEC
.align 4	::	file_4B6E40:	.import	ROM_IN,0x4B6E40,0x2D44
.align 4	::	file_4B9B84:	.import	ROM_IN,0x4B9B84,0x9A30
.align 4	::	file_4C35B4:	.import	ROM_IN,0x4C35B4,0x175DC
.align 4	::	file_4DAB90:	.import	ROM_IN,0x4DAB90,0x8114
.align 4	::	file_4E2CA4:	.import	ROM_IN,0x4E2CA4,0x518
.align 4	::	file_4E31BC:	.import	ROM_IN,0x4E31BC,0xCD4
.align 4	::	file_4E3E90:	.import	ROM_IN,0x4E3E90,0xD88
.align 4	::	file_4E4C18:	.import	ROM_IN,0x4E4C18,0x29FC
.align 4	::	file_4E7614:	.import	ROM_IN,0x4E7614,0x95C
// file_4E7F70 moved before Barrier sprite
.align 4	::	file_4E81F0:	.import	ROM_IN,0x4E81F0,0x7880
.align 4	::	file_4EFA70:	.import	ROM_IN,0x4EFA70,0x124C
.align 4	::	file_4F0CBC:	.import	ROM_IN,0x4F0CBC,0x6D8
.align 4	::	file_4F1394:	.import	ROM_IN,0x4F1394,0x5F8
.align 4	::	file_4F198C:	.import	ROM_IN,0x4F198C,0x918
.align 4	::	file_4F22A4:	.import	ROM_IN,0x4F22A4,0x2718
.align 4	::	file_4F49BC:	.import	ROM_IN,0x4F49BC,0x190C
.align 4	::	file_4F62C8:	.import	ROM_IN,0x4F62C8,0x201C
.align 4	::	file_4F82E4:	.import	ROM_IN,0x4F82E4,0xBD0
.align 4	::	file_4F8EB4:	.import	ROM_IN,0x4F8EB4,0x1C08
.align 4	::	file_4FAABC:	.import	ROM_IN,0x4FAABC,0x1628
.align 4	::	file_4FC0E4:	.import	ROM_IN,0x4FC0E4,0x1B60
.align 4	::	file_4FDC44:	.import	ROM_IN,0x4FDC44,0x1E4
.align 4	::	file_4FDE28:	.import	ROM_IN,0x4FDE28,0x754
.align 4	::	file_4FE57C:	.import	ROM_IN,0x4FE57C,0x55C
.align 4	::	file_4FEAD8:	.import	ROM_IN,0x4FEAD8,0x1B3C
.align 4	::	file_500614:	.import	ROM_IN,0x500614,0x1B3C
.align 4	::	file_502150:	.import	ROM_IN,0x502150,0x1268
.align 4	::	file_5033B8:	.import	ROM_IN,0x5033B8,0x58C
.align 4	::	file_503944:	.import	ROM_IN,0x503944,0xCFC
.align 4	::	file_504640:	.import	ROM_IN,0x504640,0x920
.align 4	::	file_504F60:	.import	ROM_IN,0x504F60,0x1CB8
.align 4	::	file_506C18:	.import	TEMP+"/506C18.dmp"
.align 4	::	file_50A9F8:	.import	ROM_IN,0x50A9F8,0x870
.align 4	::	file_50B268:	.import	ROM_IN,0x50B268,0x6F8
.align 4	::	file_50B960:	.import	ROM_IN,0x50B960,0xB0C
.align 4	::	file_50C46C:	.import	ROM_IN,0x50C46C,0x378
.align 4	::	file_50C7E4:	.import	ROM_IN,0x50C7E4,0x2318
.align 4	::	file_50EAFC:	.import	ROM_IN,0x50EAFC,0x568
.align 4	::	file_50F064:	.import	ROM_IN,0x50F064,0x1930
.align 4	::	file_510994:	.import	ROM_IN,0x510994,0x17CC
.align 4	::	file_512160:	.import	ROM_IN,0x512160,0x90
.align 4	::	file_5121F0:	.import	ROM_IN,0x5121F0,0x15C
.align 4	::	file_51234C:	.import	TEMP+"/51234C.dmp"
.align 4	::	file_512CB8:	.import	ROM_IN,0x512CB8,0x2E8
.align 4	::	file_512FA0:	.import	TEMP+"/512FA0.lz"
.align 4	::	file_5131A4:	.import	TEMP+"/5131A4.dmp"
.align 4	::	file_5157B4:	.import	ROM_IN,0x5157B4,0x2E8
.align 4	::	file_515A9C:	.import	ROM_IN,0x515A9C,0x894
.align 4	::	file_516330:	.import	ROM_IN,0x516330,0x544
.align 4	::	file_516874:	.import	ROM_IN,0x516874,0x854
.align 4	::	file_5170C8:	.import	ROM_IN,0x5170C8,0xDCC
.align 4	::	file_517E94:	.import	ROM_IN,0x517E94,0x5DC
.align 4	::	file_518470:	.import	ROM_IN,0x518470,0xA10
.align 4	::	file_518E80:	.import	ROM_IN,0x518E80,0x488
.align 4	::	file_519308:	.import	ROM_IN,0x519308,0xC30
.align 4	::	file_519F38:	.import	ROM_IN,0x519F38,0xCB0
.align 4	::	file_51ABE8:	.import	ROM_IN,0x51ABE8,0x10D0
.align 4	::	file_51BCB8:	.import	ROM_IN,0x51BCB8,0x434
.align 4	::	file_51C0EC:	.import	ROM_IN,0x51C0EC,0xB28
.align 4	::	file_51CC14:	.import	ROM_IN,0x51CC14,0x9E8
.align 4	::	file_51D5FC:	.import	ROM_IN,0x51D5FC,0x728
.align 4	::	file_51DD24:	.import	ROM_IN,0x51DD24,0x510
.align 4	::	file_51E234:	.import	ROM_IN,0x51E234,0xFD8
.align 4	::	file_51F20C:	.import	ROM_IN,0x51F20C,0x6A8
.align 4	::	file_51F8B4:	.import	ROM_IN,0x51F8B4,0x7F8
.align 4	::	file_5200AC:	.import	ROM_IN,0x5200AC,0x2858
.align 4	::	file_522904:	.import	ROM_IN,0x522904,0x568
.align 4	::	file_522E6C:	.import	ROM_IN,0x522E6C,0x59C
.align 4	::	file_523408:	.import	ROM_IN,0x523408,0x1AA0
.align 4	::	file_524EA8:	.import	ROM_IN,0x524EA8,0xAD4
.align 4	::	file_52597C:	.import	ROM_IN,0x52597C,0xF44
.align 4	::	file_5268C0:	.import	ROM_IN,0x5268C0,0x4E8
.align 4	::	file_526DA8:	.import	ROM_IN,0x526DA8,0x4CC
.align 4	::	file_527274:	.import	ROM_IN,0x527274,0x1F50
.align 4	::	file_5291C4:	.import	ROM_IN,0x5291C4,0x12DC
.align 4	::	file_52A4A0:	.import	ROM_IN,0x52A4A0,0x3D0
.align 4	::	file_52A870:	.import	ROM_IN,0x52A870,0x6E8
.align 4	::	file_52AF58:	.import	ROM_IN,0x52AF58,0x494
.align 4	::	file_52B3EC:	.import	ROM_IN,0x52B3EC,0x3F8
.align 4	::	file_52B7E4:	.import	ROM_IN,0x52B7E4,0xF28
.align 4	::	file_52C70C:	.import	ROM_IN,0x52C70C,0x107C
.align 4	::	file_52D788:	.import	ROM_IN,0x52D788,0x264
.align 4	::	file_52D9EC:	.import	ROM_IN,0x52D9EC,0x1350
.align 4	::	file_52ED3C:	.import	ROM_IN,0x52ED3C,0x3BCC
.align 4	::	file_532908:	.import	ROM_IN,0x532908,0x838
.align 4	::	file_533140:	.import	ROM_IN,0x533140,0x854
.align 4	::	file_533994:	.import	ROM_IN,0x533994,0x694
.align 4	::	file_534028:	.import	ROM_IN,0x534028,0x152C
.align 4	::	file_535554:	.import	ROM_IN,0x535554,0x2C74
.align 4	::	file_5381C8:	.import	ROM_IN,0x5381C8,0x1C6C
.align 4	::	file_539E34:	.import	TEMP+"/539E34.dmp"
.align 4	::	file_53A334:	.import	ROM_IN,0x53A334,0x88
.align 4	::	file_53A3BC:	.import	ROM_IN,0x53A3BC,0x20
.align 4	::	file_53A3DC:	.import	ROM_IN,0x53A3DC,0x700	// Lan mugshot
.align 4	::	file_53AADC:	.import	ROM_IN,0x53AADC,0x680
.align 4	::	file_53B15C:	.import	ROM_IN,0x53B15C,0x7EC	// BrownHairedGuy mugshot
.align 4	::	file_53B948:	.import	ROM_IN,0x53B948,0x7A0	// Scientist mugshot
.align 4	::	file_53C0E8:	.import	ROM_IN,0x53C0E8,0x600	// BlondeHairedGuy mugshot
.align 4	::	file_53C6E8:	.import	ROM_IN,0x53C6E8,0x668
.align 4	::	file_53CD50:	.import	ROM_IN,0x53CD50,0x5C0	// SciLabWoman mugshot
.align 4	::	file_53D310:	.import	ROM_IN,0x53D310,0x740	// Mami mugshot
.align 4	::	file_53DA50:	.import	ROM_IN,0x53DA50,0x650
.align 4	::	file_53E0A0:	.import	ROM_IN,0x53E0A0,0x6CC
.align 4	::	file_53E76C:	.import	ROM_IN,0x53E76C,0x860
.align 4	::	file_53EFCC:	.import	ROM_IN,0x53EFCC,0x52C	// Glide mugshot
.align 4	::	file_53F4F8:	.import	ROM_IN,0x53F4F8,0x52C
.align 4	::	file_53FA24:	.import	ROM_IN,0x53FA24,0x700
.align 4	::	file_540124:	.import	ROM_IN,0x540124,0x814
.align 4	::	file_540938:	.import	ROM_IN,0x540938,0x58C
.align 4	::	file_540EC4:	.import	ROM_IN,0x540EC4,0x524
.align 4	::	file_5413E8:	.import	ROM_IN,0x5413E8,0x56C
.align 4	::	file_541954:	.import	ROM_IN,0x541954,0x504
.align 4	::	file_541E58:	.import	ROM_IN,0x541E58,0x504
.align 4	::	file_54235C:	.import	ROM_IN,0x54235C,0x894
.align 4	::	file_542BF0:	.import	ROM_IN,0x542BF0,0x54C
.align 4	::	file_54313C:	.import	ROM_IN,0x54313C,0x820
.align 4	::	file_54395C:	.import	ROM_IN,0x54395C,0x674
.align 4	::	file_543FD0:	.import	ROM_IN,0x543FD0,0x800
.align 4	::	file_5447D0:	.import	ROM_IN,0x5447D0,0x84C
.align 4	::	file_54501C:	.import	ROM_IN,0x54501C,0x74C
.align 4	::	file_545768:	.import	ROM_IN,0x545768,0x678
.align 4	::	file_545DE0:	.import	ROM_IN,0x545DE0,0x5B8
.align 4	::	file_546398:	.import	ROM_IN,0x546398,0x5BC
.align 4	::	file_546954:	.import	ROM_IN,0x546954,0x4E4
.align 4	::	file_546E38:	.import	ROM_IN,0x546E38,0x5DC
.align 4	::	file_547414:	.import	ROM_IN,0x547414,0x520
.align 4	::	file_547934:	.import	ROM_IN,0x547934,0x578
.align 4	::	file_547EAC:	.import	ROM_IN,0x547EAC,0x6F8
.align 4	::	file_5485A4:	.import	ROM_IN,0x5485A4,0x5E0
.align 4	::	file_548B84:	.import	ROM_IN,0x548B84,0x4D4
.align 4	::	file_549058:	.import	ROM_IN,0x549058,0x56C
.align 4	::	file_5495C4:	.import	ROM_IN,0x5495C4,0x4E4
.align 4	::	file_549AA8:	.import	ROM_IN,0x549AA8,0x56C
.align 4	::	file_54A014:	.import	ROM_IN,0x54A014,0x4E4
.align 4	::	file_54A4F8:	.import	ROM_IN,0x54A4F8,0x578
.align 4	::	file_54AA70:	.import	ROM_IN,0x54AA70,0x56C
.align 4	::	file_54AFDC:	.import	ROM_IN,0x54AFDC,0x5B8
.align 4	::	file_54B594:	.import	ROM_IN,0x54B594,0x444
.align 4	::	file_54B9D8:	.import	ROM_IN,0x54B9D8,0x4
.align 4	::	file_54B9DC:	.import	ROM_IN,0x54B9DC,0x200
.align 4	::	file_54BBDC:	.import	ROM_IN,0x54BBDC,0x4
.align 4	::	file_54BBE0:	.import	ROM_IN,0x54BBE0,0x200
.align 4	::	file_54BDE0:	.import	ROM_IN,0x54BDE0,0x453C
.align 4	::	file_55031C:	.import	ROM_IN,0x55031C,0xE4
.align 4	::	file_550400:	.import	ROM_IN,0x550400,0x20
.align 4	::	file_550420:	.import	ROM_IN,0x550420,0x20
.align 4	::	file_550440:	.import	ROM_IN,0x550440,0x20
.align 4	::	file_550460:	.import	ROM_IN,0x550460,0x60
.align 4	::	file_5504C0:	.import	ROM_IN,0x5504C0,0x26FC
.align 4	::	file_552BBC:	.import	ROM_IN,0x552BBC,0x24F8
.align 4	::	file_5550B4:	.import	ROM_IN,0x5550B4,0x201C
.align 4	::	file_5570D0:	.import	ROM_IN,0x5570D0,0x2340
.align 4	::	file_559410:	.import	ROM_IN,0x559410,0xE4
.align 4	::	file_5594F4:	.import	ROM_IN,0x5594F4,0x20
.align 4	::	file_559514:	.import	ROM_IN,0x559514,0x20
.align 4	::	file_559534:	.import	ROM_IN,0x559534,0x20
.align 4	::	file_559554:	.import	ROM_IN,0x559554,0x60
.align 4	::	file_5595B4:	.import	ROM_IN,0x5595B4,0x2710
.align 4	::	file_55BCC4:	.import	ROM_IN,0x55BCC4,0x25CC
.align 4	::	file_55E290:	.import	ROM_IN,0x55E290,0x296C
.align 4	::	file_560BFC:	.import	ROM_IN,0x560BFC,0x25BC
.align 4	::	file_5631B8:	.import	ROM_IN,0x5631B8,0x40FC
.align 4	::	file_5672B4:	.import	ROM_IN,0x5672B4,0xC4
.align 4	::	file_567378:	.import	ROM_IN,0x567378,0x20
.align 4	::	file_567398:	.import	ROM_IN,0x567398,0x20
.align 4	::	file_5673B8:	.import	ROM_IN,0x5673B8,0x20
.align 4	::	file_5673D8:	.import	ROM_IN,0x5673D8,0x20
.align 4	::	file_5673F8:	.import	ROM_IN,0x5673F8,0x60
.align 4	::	file_567458:	.import	ROM_IN,0x567458,0x2760
.align 4	::	file_569BB8:	.import	ROM_IN,0x569BB8,0x2FCC
.align 4	::	file_56CB84:	.import	ROM_IN,0x56CB84,0x292C
.align 4	::	file_56F4B0:	.import	ROM_IN,0x56F4B0,0x3204
.align 4	::	file_5726B4:	.import	ROM_IN,0x5726B4,0x47A0
.align 4	::	file_576E54:	.import	ROM_IN,0x576E54,0x44
.align 4	::	file_576E98:	.import	ROM_IN,0x576E98,0x40
.align 4	::	file_576ED8:	.import	ROM_IN,0x576ED8,0x60
.align 4	::	file_576F38:	.import	ROM_IN,0x576F38,0xC0
.align 4	::	file_576FF8:	.import	ROM_IN,0x576FF8,0x33CC
.align 4	::	file_57A3C4:	.import	ROM_IN,0x57A3C4,0x3478
.align 4	::	file_57D83C:	.import	ROM_IN,0x57D83C,0x360C
.align 4	::	file_580E48:	.import	ROM_IN,0x580E48,0x4998
.align 4	::	file_5857E0:	.import	ROM_IN,0x5857E0,0x44
.align 4	::	file_585824:	.import	ROM_IN,0x585824,0x40
.align 4	::	file_585864:	.import	ROM_IN,0x585864,0x40
.align 4	::	file_5858A4:	.import	ROM_IN,0x5858A4,0x20
.align 4	::	file_5858C4:	.import	ROM_IN,0x5858C4,0xC0
.align 4	::	file_585984:	.import	ROM_IN,0x585984,0x35B4
.align 4	::	file_588F38:	.import	ROM_IN,0x588F38,0x4A7C
.align 4	::	file_58D9B4:	.import	ROM_IN,0x58D9B4,0x44
.align 4	::	file_58D9F8:	.import	ROM_IN,0x58D9F8,0xC0
.align 4	::	file_58DAB8:	.import	ROM_IN,0x58DAB8,0xA0
.align 4	::	file_58DB58:	.import	ROM_IN,0x58DB58,0x380C
.align 4	::	file_591364:	.import	ROM_IN,0x591364,0x84
.align 4	::	file_5913E8:	.import	ROM_IN,0x5913E8,0xA0
.align 4	::	file_591488:	.import	ROM_IN,0x591488,0x80
.align 4	::	file_591508:	.import	ROM_IN,0x591508,0x34D0
.align 4	::	file_5949D8:	.import	ROM_IN,0x5949D8,0xF2C
.align 4	::	file_595904:	.import	ROM_IN,0x595904,0x144
.align 4	::	file_595A48:	.import	ROM_IN,0x595A48,0x60
.align 4	::	file_595AA8:	.import	ROM_IN,0x595AA8,0xFC0
.align 4	::	file_596A68:	.import	ROM_IN,0x596A68,0x1FB0
.align 4	::	file_598A18:	.import	ROM_IN,0x598A18,0x84
.align 4	::	file_598A9C:	.import	ROM_IN,0x598A9C,0x120
.align 4	::	file_598BBC:	.import	ROM_IN,0x598BBC,0x1B64
.align 4	::	file_59A720:	.import	ROM_IN,0x59A720,0x1E14
.align 4	::	file_59C534:	.import	ROM_IN,0x59C534,0x84
.align 4	::	file_59C5B8:	.import	ROM_IN,0x59C5B8,0x120
.align 4	::	file_59C6D8:	.import	ROM_IN,0x59C6D8,0x1FE8
.align 4	::	file_59E6C0:	.import	ROM_IN,0x59E6C0,0x84
.align 4	::	file_59E744:	.import	ROM_IN,0x59E744,0x124
.align 4	::	file_59E868:	.import	ROM_IN,0x59E868,0x20
.align 4	::	file_59E888:	.import	ROM_IN,0x59E888,0x20
.align 4	::	file_59E8A8:	.import	ROM_IN,0x59E8A8,0x20
.align 4	::	file_59E8C8:	.import	ROM_IN,0x59E8C8,0x20
.align 4	::	file_59E8E8:	.import	ROM_IN,0x59E8E8,0x20
.align 4	::	file_59E908:	.import	ROM_IN,0x59E908,0x20
.align 4	::	file_59E928:	.import	ROM_IN,0x59E928,0x20
.align 4	::	file_59E948:	.import	ROM_IN,0x59E948,0x20
.align 4	::	file_59E968:	.import	ROM_IN,0x59E968,0x20
.align 4	::	file_59E988:	.import	ROM_IN,0x59E988,0x20
.align 4	::	file_59E9A8:	.import	ROM_IN,0x59E9A8,0x20
.align 4	::	file_59E9C8:	.import	ROM_IN,0x59E9C8,0x20
.align 4	::	file_59E9E8:	.import	ROM_IN,0x59E9E8,0x20
.align 4	::	file_59EA08:	.import	ROM_IN,0x59EA08,0x20
.align 4	::	file_59EA28:	.import	ROM_IN,0x59EA28,0x44
.align 4	::	file_59EA6C:	.import	ROM_IN,0x59EA6C,0xE0
.align 4	::	file_59EB4C:	.import	ROM_IN,0x59EB4C,0x20
.align 4	::	file_59EB6C:	.import	ROM_IN,0x59EB6C,0x20
.align 4	::	file_59EB8C:	.import	ROM_IN,0x59EB8C,0x20
.align 4	::	file_59EBAC:	.import	ROM_IN,0x59EBAC,0xEC4
.align 4	::	file_59FA70:	.import	ROM_IN,0x59FA70,0x20
.align 4	::	file_59FA90:	.import	ROM_IN,0x59FA90,0x20
.align 4	::	file_59FAB0:	.import	ROM_IN,0x59FAB0,0x20
.align 4	::	file_59FAD0:	.import	ROM_IN,0x59FAD0,0x20
.align 4	::	file_59FAF0:	.import	ROM_IN,0x59FAF0,0x20
.align 4	::	file_59FB10:	.import	ROM_IN,0x59FB10,0x20
.align 4	::	file_59FB30:	.import	ROM_IN,0x59FB30,0x20
.align 4	::	file_59FB50:	.import	ROM_IN,0x59FB50,0x20
.align 4	::	file_59FB70:	.import	ROM_IN,0x59FB70,0x20
.align 4	::	file_59FB90:	.import	ROM_IN,0x59FB90,0x20
.align 4	::	file_59FBB0:	.import	ROM_IN,0x59FBB0,0x20
.align 4	::	file_59FBD0:	.import	ROM_IN,0x59FBD0,0x20
.align 4	::	file_59FBF0:	.import	ROM_IN,0x59FBF0,0x20
.align 4	::	file_59FC10:	.import	ROM_IN,0x59FC10,0x20
.align 4	::	file_59FC30:	.import	ROM_IN,0x59FC30,0x44
.align 4	::	file_59FC74:	.import	ROM_IN,0x59FC74,0x20
.align 4	::	file_59FC94:	.import	ROM_IN,0x59FC94,0x20
.align 4	::	file_59FCB4:	.import	ROM_IN,0x59FCB4,0x20
.align 4	::	file_59FCD4:	.import	ROM_IN,0x59FCD4,0x20
.align 4	::	file_59FCF4:	.import	ROM_IN,0x59FCF4,0x20
.align 4	::	file_59FD14:	.import	ROM_IN,0x59FD14,0x20
.align 4	::	file_59FD34:	.import	ROM_IN,0x59FD34,0x20
.align 4	::	file_59FD54:	.import	ROM_IN,0x59FD54,0x20
.align 4	::	file_59FD74:	.import	ROM_IN,0x59FD74,0x20
.align 4	::	file_59FD94:	.import	ROM_IN,0x59FD94,0x20
.align 4	::	file_59FDB4:	.import	ROM_IN,0x59FDB4,0x20
.align 4	::	file_59FDD4:	.import	ROM_IN,0x59FDD4,0x20
.align 4	::	file_59FDF4:	.import	ROM_IN,0x59FDF4,0x20
.align 4	::	file_59FE14:	.import	ROM_IN,0x59FE14,0x20
.align 4	::	file_59FE34:	.import	ROM_IN,0x59FE34,0x44
.align 4	::	file_59FE78:	.import	ROM_IN,0x59FE78,0xE0
.align 4	::	file_59FF58:	.import	ROM_IN,0x59FF58,0x20
.align 4	::	file_59FF78:	.import	ROM_IN,0x59FF78,0x20
.align 4	::	file_59FF98:	.import	ROM_IN,0x59FF98,0x20
.align 4	::	file_59FFB8:	.import	ROM_IN,0x59FFB8,0xEC4
.align 4	::	file_5A0E7C:	.import	ROM_IN,0x5A0E7C,0x20
.align 4	::	file_5A0E9C:	.import	ROM_IN,0x5A0E9C,0x20
.align 4	::	file_5A0EBC:	.import	ROM_IN,0x5A0EBC,0x20
.align 4	::	file_5A0EDC:	.import	ROM_IN,0x5A0EDC,0x20
.align 4	::	file_5A0EFC:	.import	ROM_IN,0x5A0EFC,0x20
.align 4	::	file_5A0F1C:	.import	ROM_IN,0x5A0F1C,0x20
.align 4	::	file_5A0F3C:	.import	ROM_IN,0x5A0F3C,0x20
.align 4	::	file_5A0F5C:	.import	ROM_IN,0x5A0F5C,0x20
.align 4	::	file_5A0F7C:	.import	ROM_IN,0x5A0F7C,0x20
.align 4	::	file_5A0F9C:	.import	ROM_IN,0x5A0F9C,0x20
.align 4	::	file_5A0FBC:	.import	ROM_IN,0x5A0FBC,0x20
.align 4	::	file_5A0FDC:	.import	ROM_IN,0x5A0FDC,0x20
.align 4	::	file_5A0FFC:	.import	ROM_IN,0x5A0FFC,0x20
.align 4	::	file_5A101C:	.import	ROM_IN,0x5A101C,0x20
.align 4	::	file_5A103C:	.import	ROM_IN,0x5A103C,0x44
.align 4	::	file_5A1080:	.import	ROM_IN,0x5A1080,0x20
.align 4	::	file_5A10A0:	.import	ROM_IN,0x5A10A0,0x20
.align 4	::	file_5A10C0:	.import	ROM_IN,0x5A10C0,0x20
.align 4	::	file_5A10E0:	.import	ROM_IN,0x5A10E0,0x20
.align 4	::	file_5A1100:	.import	ROM_IN,0x5A1100,0x20
.align 4	::	file_5A1120:	.import	ROM_IN,0x5A1120,0x20
.align 4	::	file_5A1140:	.import	ROM_IN,0x5A1140,0x20
.align 4	::	file_5A1160:	.import	ROM_IN,0x5A1160,0x20
.align 4	::	file_5A1180:	.import	ROM_IN,0x5A1180,0x20
.align 4	::	file_5A11A0:	.import	ROM_IN,0x5A11A0,0x20
.align 4	::	file_5A11C0:	.import	ROM_IN,0x5A11C0,0x20
.align 4	::	file_5A11E0:	.import	ROM_IN,0x5A11E0,0x20
.align 4	::	file_5A1200:	.import	ROM_IN,0x5A1200,0x20
.align 4	::	file_5A1220:	.import	ROM_IN,0x5A1220,0x20
.align 4	::	file_5A1240:	.import	ROM_IN,0x5A1240,0x44
.align 4	::	file_5A1284:	.import	ROM_IN,0x5A1284,0x20
.align 4	::	file_5A12A4:	.import	ROM_IN,0x5A12A4,0x20
.align 4	::	file_5A12C4:	.import	ROM_IN,0x5A12C4,0x20
.align 4	::	file_5A12E4:	.import	ROM_IN,0x5A12E4,0x24
.align 4	::	file_5A1308:	.import	ROM_IN,0x5A1308,0xC0
.align 4	::	file_5A13C8:	.import	ROM_IN,0x5A13C8,0x20
.align 4	::	file_5A13E8:	.import	ROM_IN,0x5A13E8,0x20
.align 4	::	file_5A1408:	.import	ROM_IN,0x5A1408,0x20
.align 4	::	file_5A1428:	.import	ROM_IN,0x5A1428,0x20
.align 4	::	file_5A1448:	.import	ROM_IN,0x5A1448,0xC4
.align 4	::	file_5A150C:	.import	ROM_IN,0x5A150C,0x20
.align 4	::	file_5A152C:	.import	ROM_IN,0x5A152C,0x20
.align 4	::	file_5A154C:	.import	ROM_IN,0x5A154C,0x20
.align 4	::	file_5A156C:	.import	ROM_IN,0x5A156C,0x20
.align 4	::	file_5A158C:	.import	ROM_IN,0x5A158C,0x20
.align 4	::	file_5A15AC:	.import	ROM_IN,0x5A15AC,0x20
.align 4	::	file_5A15CC:	.import	ROM_IN,0x5A15CC,0x20
.align 4	::	file_5A15EC:	.import	ROM_IN,0x5A15EC,0x20
.align 4	::	file_5A160C:	.import	ROM_IN,0x5A160C,0x20
.align 4	::	file_5A162C:	.import	ROM_IN,0x5A162C,0x20
.align 4	::	file_5A164C:	.import	ROM_IN,0x5A164C,0x20
.align 4	::	file_5A166C:	.import	ROM_IN,0x5A166C,0x20
.align 4	::	file_5A168C:	.import	ROM_IN,0x5A168C,0x20
.align 4	::	file_5A16AC:	.import	ROM_IN,0x5A16AC,0x20
.align 4	::	file_5A16CC:	.import	ROM_IN,0x5A16CC,0x44
.align 4	::	file_5A1710:	.import	ROM_IN,0x5A1710,0x20
.align 4	::	file_5A1730:	.import	ROM_IN,0x5A1730,0x20
.align 4	::	file_5A1750:	.import	ROM_IN,0x5A1750,0x20
.align 4	::	file_5A1770:	.import	ROM_IN,0x5A1770,0x24
.align 4	::	file_5A1794:	.import	ROM_IN,0x5A1794,0x20
.align 4	::	file_5A17B4:	.import	ROM_IN,0x5A17B4,0x20
.align 4	::	file_5A17D4:	.import	ROM_IN,0x5A17D4,0x20
.align 4	::	file_5A17F4:	.import	ROM_IN,0x5A17F4,0x20
.align 4	::	file_5A1814:	.import	ROM_IN,0x5A1814,0x20
.align 4	::	file_5A1834:	.import	ROM_IN,0x5A1834,0x20
.align 4	::	file_5A1854:	.import	ROM_IN,0x5A1854,0x20
.align 4	::	file_5A1874:	.import	ROM_IN,0x5A1874,0x20
.align 4	::	file_5A1894:	.import	ROM_IN,0x5A1894,0x20
.align 4	::	file_5A18B4:	.import	ROM_IN,0x5A18B4,0x20
.align 4	::	file_5A18D4:	.import	ROM_IN,0x5A18D4,0x20
.align 4	::	file_5A18F4:	.import	ROM_IN,0x5A18F4,0x20
.align 4	::	file_5A1914:	.import	ROM_IN,0x5A1914,0x20
.align 4	::	file_5A1934:	.import	ROM_IN,0x5A1934,0x20
.align 4	::	file_5A1954:	.import	ROM_IN,0x5A1954,0x44
.align 4	::	file_5A1998:	.import	ROM_IN,0x5A1998,0x20
.align 4	::	file_5A19B8:	.import	ROM_IN,0x5A19B8,0x20
.align 4	::	file_5A19D8:	.import	ROM_IN,0x5A19D8,0x20
.align 4	::	file_5A19F8:	.import	ROM_IN,0x5A19F8,0x20
.align 4	::	file_5A1A18:	.import	ROM_IN,0x5A1A18,0x20
.align 4	::	file_5A1A38:	.import	ROM_IN,0x5A1A38,0x20
.align 4	::	file_5A1A58:	.import	ROM_IN,0x5A1A58,0x20
.align 4	::	file_5A1A78:	.import	ROM_IN,0x5A1A78,0x20
.align 4	::	file_5A1A98:	.import	ROM_IN,0x5A1A98,0x20
.align 4	::	file_5A1AB8:	.import	ROM_IN,0x5A1AB8,0x20
.align 4	::	file_5A1AD8:	.import	ROM_IN,0x5A1AD8,0x20
.align 4	::	file_5A1AF8:	.import	ROM_IN,0x5A1AF8,0x20
.align 4	::	file_5A1B18:	.import	ROM_IN,0x5A1B18,0x20
.align 4	::	file_5A1B38:	.import	ROM_IN,0x5A1B38,0x20
.align 4	::	file_5A1B58:	.import	ROM_IN,0x5A1B58,0x44
.align 4	::	file_5A1B9C:	.import	ROM_IN,0x5A1B9C,0x20
.align 4	::	file_5A1BBC:	.import	ROM_IN,0x5A1BBC,0x20
.align 4	::	file_5A1BDC:	.import	ROM_IN,0x5A1BDC,0x20
.align 4	::	file_5A1BFC:	.import	ROM_IN,0x5A1BFC,0x20
.align 4	::	file_5A1C1C:	.import	ROM_IN,0x5A1C1C,0x24
.align 4	::	file_5A1C40:	.import	ROM_IN,0x5A1C40,0x20
.align 4	::	file_5A1C60:	.import	ROM_IN,0x5A1C60,0x20
.align 4	::	file_5A1C80:	.import	ROM_IN,0x5A1C80,0x20
.align 4	::	file_5A1CA0:	.import	ROM_IN,0x5A1CA0,0x20
.align 4	::	file_5A1CC0:	.import	ROM_IN,0x5A1CC0,0x20
.align 4	::	file_5A1CE0:	.import	ROM_IN,0x5A1CE0,0x20
.align 4	::	file_5A1D00:	.import	ROM_IN,0x5A1D00,0x20
.align 4	::	file_5A1D20:	.import	ROM_IN,0x5A1D20,0x20
.align 4	::	file_5A1D40:	.import	ROM_IN,0x5A1D40,0x20
.align 4	::	file_5A1D60:	.import	ROM_IN,0x5A1D60,0x24
.align 4	::	file_5A1D84:	.import	ROM_IN,0x5A1D84,0x20
.align 4	::	file_5A1DA4:	.import	ROM_IN,0x5A1DA4,0x20
.align 4	::	file_5A1DC4:	.import	ROM_IN,0x5A1DC4,0x20
.align 4	::	file_5A1DE4:	.import	ROM_IN,0x5A1DE4,0x20
.align 4	::	file_5A1E04:	.import	ROM_IN,0x5A1E04,0x20
.align 4	::	file_5A1E24:	.import	ROM_IN,0x5A1E24,0x20
.align 4	::	file_5A1E44:	.import	ROM_IN,0x5A1E44,0x20
.align 4	::	file_5A1E64:	.import	ROM_IN,0x5A1E64,0x20
.align 4	::	file_5A1E84:	.import	ROM_IN,0x5A1E84,0x24
.align 4	::	file_5A1EA8:	.import	ROM_IN,0x5A1EA8,0x20
.align 4	::	file_5A1EC8:	.import	ROM_IN,0x5A1EC8,0x20
.align 4	::	file_5A1EE8:	.import	ROM_IN,0x5A1EE8,0x20
.align 4	::	file_5A1F08:	.import	ROM_IN,0x5A1F08,0x20
.align 4	::	file_5A1F28:	.import	ROM_IN,0x5A1F28,0x204
.align 4	::	file_5A212C:	.import	ROM_IN,0x5A212C,0x204
.align 4	::	file_5A2330:	.import	ROM_IN,0x5A2330,0x204
.align 4	::	file_5A2534:	.import	ROM_IN,0x5A2534,0x204
.align 4	::	file_5A2738:	.import	ROM_IN,0x5A2738,0x208
.align 4	::	file_5A2940:	.import	ROM_IN,0x5A2940,0x204
.align 4	::	file_5A2B44:	.import	ROM_IN,0x5A2B44,0x204
.align 4	::	file_5A2D48:	.import	ROM_IN,0x5A2D48,0x204
.align 4	::	file_5A2F4C:	.import	ROM_IN,0x5A2F4C,0x204
.align 4	::	file_5A3150:	.import	ROM_IN,0x5A3150,0x204
.align 4	::	file_5A3354:	.import	ROM_IN,0x5A3354,0x204
.align 4	::	file_5A3558:	.import	ROM_IN,0x5A3558,0x20
.align 4	::	file_5A3578:	.import	ROM_IN,0x5A3578,0x20
.align 4	::	file_5A3598:	.import	ROM_IN,0x5A3598,0x20
.align 4	::	file_5A35B8:	.import	ROM_IN,0x5A35B8,0x44
.align 4	::	file_5A35FC:	.import	ROM_IN,0x5A35FC,0x80
.align 4	::	file_5A367C:	.import	ROM_IN,0x5A367C,0x44
.align 4	::	file_5A36C0:	.import	ROM_IN,0x5A36C0,0x20
.align 4	::	file_5A36E0:	.import	ROM_IN,0x5A36E0,0x20
.align 4	::	file_5A3700:	.import	ROM_IN,0x5A3700,0x20
.align 4	::	file_5A3720:	.import	ROM_IN,0x5A3720,0x44
.align 4	::	file_5A3764:	.import	ROM_IN,0x5A3764,0x20
.align 4	::	file_5A3784:	.import	ROM_IN,0x5A3784,0x20
.align 4	::	file_5A37A4:	.import	ROM_IN,0x5A37A4,0x20
.align 4	::	file_5A37C4:	.import	ROM_IN,0x5A37C4,0x44
.align 4	::	file_5A3808:	.import	ROM_IN,0x5A3808,0x80
.align 4	::	file_5A3888:	.import	ROM_IN,0x5A3888,0x44
.align 4	::	file_5A38CC:	.import	ROM_IN,0x5A38CC,0x20
.align 4	::	file_5A38EC:	.import	ROM_IN,0x5A38EC,0x20
.align 4	::	file_5A390C:	.import	ROM_IN,0x5A390C,0x20
.align 4	::	file_5A392C:	.import	ROM_IN,0x5A392C,0x44
.align 4	::	file_5A3970:	.import	ROM_IN,0x5A3970,0x20
.align 4	::	file_5A3990:	.import	ROM_IN,0x5A3990,0x20
.align 4	::	file_5A39B0:	.import	ROM_IN,0x5A39B0,0x20
.align 4	::	file_5A39D0:	.import	ROM_IN,0x5A39D0,0x44
.align 4	::	file_5A3A14:	.import	ROM_IN,0x5A3A14,0x80
.align 4	::	file_5A3A94:	.import	ROM_IN,0x5A3A94,0x44
.align 4	::	file_5A3AD8:	.import	ROM_IN,0x5A3AD8,0x20
.align 4	::	file_5A3AF8:	.import	ROM_IN,0x5A3AF8,0x20
.align 4	::	file_5A3B18:	.import	ROM_IN,0x5A3B18,0x20
.align 4	::	file_5A3B38:	.import	ROM_IN,0x5A3B38,0x40
.align 4	::	file_5A3B78:	.import	ROM_IN,0x5A3B78,0x654
.align 4	::	file_5A41CC:	.import	ROM_IN,0x5A41CC,0x4
.align 4	::	file_5A41D0:	.import	ROM_IN,0x5A41D0,0x24
.align 4	::	file_5A41F4:	.import	ROM_IN,0x5A41F4,0x20
.align 4	::	file_5A4214:	.import	ROM_IN,0x5A4214,0x31C
.align 4	::	file_5A4530:	.import	ROM_IN,0x5A4530,0x4
.align 4	::	file_5A4534:	.import	ROM_IN,0x5A4534,0x24
.align 4	::	file_5A4558:	.import	ROM_IN,0x5A4558,0x20
.align 4	::	file_5A4578:	.import	ROM_IN,0x5A4578,0x4
.align 4	::	file_5A457C:	.import	ROM_IN,0x5A457C,0x24
.align 4	::	file_5A45A0:	.import	ROM_IN,0x5A45A0,0x20
.align 4	::	file_5A45C0:	.import	ROM_IN,0x5A45C0,0x274
.align 4	::	file_5A4834:	.import	ROM_IN,0x5A4834,0x24
.align 4	::	file_5A4858:	.import	ROM_IN,0x5A4858,0x1C0
.align 4	::	file_5A4A18:	.import	ROM_IN,0x5A4A18,0x224
.align 4	::	file_5A4C3C:	.import	ROM_IN,0x5A4C3C,0x518
.align 4	::	file_5A5154:	.import	ROM_IN,0x5A5154,0x24
.align 4	::	file_5A5178:	.import	ROM_IN,0x5A5178,0xC60
.align 4	::	file_5A5DD8:	.import	ROM_IN,0x5A5DD8,0x584
.align 4	::	file_5A635C:	.import	ROM_IN,0x5A635C,0x4
.align 4	::	file_5A6360:	.import	ROM_IN,0x5A6360,0x20
.align 4	::	file_5A6380:	.import	ROM_IN,0x5A6380,0x304
.align 4	::	file_5A6684:	.import	ROM_IN,0x5A6684,0x20
.align 4	::	file_5A66A4:	.import	ROM_IN,0x5A66A4,0x20
.align 4	::	file_5A66C4:	.import	ROM_IN,0x5A66C4,0x20
.align 4	::	file_5A66E4:	.import	ROM_IN,0x5A66E4,0x20
.align 4	::	file_5A6704:	.import	ROM_IN,0x5A6704,0x1D5C
.align 4	::	file_5A8460:	.import	ROM_IN,0x5A8460,0x434
.align 4	::	file_5A8894:	.import	ROM_IN,0x5A8894,0x24
.align 4	::	file_5A88B8:	.import	ROM_IN,0x5A88B8,0x460
.align 4	::	file_5A8D18:	.import	ROM_IN,0x5A8D18,0x800
.align 4	::	file_5A9518:	.import	ROM_IN,0x5A9518,0x654
.align 4	::	file_5A9B6C:	.import	ROM_IN,0x5A9B6C,0x24
.align 4	::	file_5A9B90:	.import	ROM_IN,0x5A9B90,0x440
.align 4	::	file_5A9FD0:	.import	ROM_IN,0x5A9FD0,0x330
.align 4	::	file_5AA300:	.import	ROM_IN,0x5AA300,0x394
.align 4	::	file_5AA694:	.import	ROM_IN,0x5AA694,0x28
.align 4	::	file_5AA6BC:	.import	ROM_IN,0x5AA6BC,0x20
.align 4	::	file_5AA6DC:	.import	ROM_IN,0x5AA6DC,0x20
.align 4	::	file_5AA6FC:	.import	ROM_IN,0x5AA6FC,0x20
.align 4	::	file_5AA71C:	.import	ROM_IN,0x5AA71C,0x20
.align 4	::	file_5AA73C:	.import	ROM_IN,0x5AA73C,0x20
.align 4	::	file_5AA75C:	.import	ROM_IN,0x5AA75C,0x20
.align 4	::	file_5AA77C:	.import	ROM_IN,0x5AA77C,0x20
.align 4	::	file_5AA79C:	.import	ROM_IN,0x5AA79C,0x20
.align 4	::	file_5AA7BC:	.import	ROM_IN,0x5AA7BC,0x20
.align 4	::	file_5AA7DC:	.import	ROM_IN,0x5AA7DC,0x20
.align 4	::	file_5AA7FC:	.import	ROM_IN,0x5AA7FC,0x20
.align 4	::	file_5AA81C:	.import	ROM_IN,0x5AA81C,0x20
.align 4	::	file_5AA83C:	.import	ROM_IN,0x5AA83C,0x20
.align 4	::	file_5AA85C:	.import	ROM_IN,0x5AA85C,0x20
.align 4	::	file_5AA87C:	.import	ROM_IN,0x5AA87C,0x20
.align 4	::	file_5AA89C:	.import	ROM_IN,0x5AA89C,0x24
.align 4	::	file_5AA8C0:	.import	ROM_IN,0x5AA8C0,0x20
.align 4	::	file_5AA8E0:	.import	ROM_IN,0x5AA8E0,0x20
.align 4	::	file_5AA900:	.import	ROM_IN,0x5AA900,0x20
.align 4	::	file_5AA920:	.import	ROM_IN,0x5AA920,0x20
.align 4	::	file_5AA940:	.import	ROM_IN,0x5AA940,0x20
.align 4	::	file_5AA960:	.import	ROM_IN,0x5AA960,0x20
.align 4	::	file_5AA980:	.import	ROM_IN,0x5AA980,0x2A4
.align 4	::	file_5AAC24:	.import	ROM_IN,0x5AAC24,0x464
.align 4	::	file_5AB088:	.import	ROM_IN,0x5AB088,0x24
.align 4	::	file_5AB0AC:	.import	ROM_IN,0x5AB0AC,0x400
.align 4	::	file_5AB4AC:	.import	ROM_IN,0x5AB4AC,0x484
.align 4	::	file_5AB930:	.import	ROM_IN,0x5AB930,0x24
.align 4	::	file_5AB954:	.import	ROM_IN,0x5AB954,0x4E0
.align 4	::	file_5ABE34:	.import	ROM_IN,0x5ABE34,0x494
.align 4	::	file_5AC2C8:	.import	ROM_IN,0x5AC2C8,0x24
.align 4	::	file_5AC2EC:	.import	ROM_IN,0x5AC2EC,0x7C0
.align 4	::	file_5ACAAC:	.import	ROM_IN,0x5ACAAC,0x234
.align 4	::	file_5ACCE0:	.import	ROM_IN,0x5ACCE0,0x410
.align 4	::	file_5AD0F0:	.import	ROM_IN,0x5AD0F0,0x24
.align 4	::	file_5AD114:	.import	ROM_IN,0x5AD114,0x468
.align 4	::	file_5AD57C:	.import	ROM_IN,0x5AD57C,0x24
.align 4	::	file_5AD5A0:	.import	ROM_IN,0x5AD5A0,0x400
.align 4	::	file_5AD9A0:	.import	ROM_IN,0x5AD9A0,0x480
.align 4	::	file_5ADE20:	.import	ROM_IN,0x5ADE20,0x24
.align 4	::	file_5ADE44:	.import	ROM_IN,0x5ADE44,0x7A0
.align 4	::	file_5AE5E4:	.import	ROM_IN,0x5AE5E4,0x260
.align 4	::	file_5AE844:	.import	ROM_IN,0x5AE844,0x564
.align 4	::	file_5AEDA8:	.import	ROM_IN,0x5AEDA8,0x4
.align 4	::	file_5AEDAC:	.import	ROM_IN,0x5AEDAC,0x24
.align 4	::	file_5AEDD0:	.import	ROM_IN,0x5AEDD0,0x20
.align 4	::	file_5AEDF0:	.import	ROM_IN,0x5AEDF0,0x20
.align 4	::	file_5AEE10:	.import	ROM_IN,0x5AEE10,0x20
.align 4	::	file_5AEE30:	.import	ROM_IN,0x5AEE30,0x20
.align 4	::	file_5AEE50:	.import	ROM_IN,0x5AEE50,0x20
.align 4	::	file_5AEE70:	.import	ROM_IN,0x5AEE70,0x2AC
.align 4	::	file_5AF11C:	.import	ROM_IN,0x5AF11C,0x2C8
.align 4	::	file_5AF3E4:	.import	ROM_IN,0x5AF3E4,0x24
.align 4	::	file_5AF408:	.import	ROM_IN,0x5AF408,0x224
.align 4	::	file_5AF62C:	.import	ROM_IN,0x5AF62C,0x20
.align 4	::	file_5AF64C:	.import	ROM_IN,0x5AF64C,0x20
.align 4	::	file_5AF66C:	.import	ROM_IN,0x5AF66C,0x20
.align 4	::	file_5AF68C:	.import	ROM_IN,0x5AF68C,0x224
.align 4	::	file_5AF8B0:	.import	ROM_IN,0x5AF8B0,0x34C
.align 4	::	file_5AFBFC:	.import	ROM_IN,0x5AFBFC,0x24
.align 4	::	file_5AFC20:	.import	ROM_IN,0x5AFC20,0x360
.align 4	::	file_5AFF80:	.import	ROM_IN,0x5AFF80,0x24C
.align 4	::	file_5B01CC:	.import	ROM_IN,0x5B01CC,0x24
.align 4	::	file_5B01F0:	.import	ROM_IN,0x5B01F0,0x24
.align 4	::	file_5B0214:	.import	ROM_IN,0x5B0214,0x24
.align 4	::	file_5B0238:	.import	ROM_IN,0x5B0238,0x3A0
.align 4	::	file_5B05D8:	.import	ROM_IN,0x5B05D8,0x24
.align 4	::	file_5B05FC:	.import	ROM_IN,0x5B05FC,0x24
.align 4	::	file_5B0620:	.import	ROM_IN,0x5B0620,0x24
.align 4	::	file_5B0644:	.import	ROM_IN,0x5B0644,0x268
.align 4	::	file_5B08AC:	.import	ROM_IN,0x5B08AC,0x24
.align 4	::	file_5B08D0:	.import	ROM_IN,0x5B08D0,0x120
.align 4	::	file_5B09F0:	.import	ROM_IN,0x5B09F0,0x42C
.align 4	::	file_5B0E1C:	.import	ROM_IN,0x5B0E1C,0x24
.align 4	::	file_5B0E40:	.import	ROM_IN,0x5B0E40,0x340
.align 4	::	file_5B1180:	.import	ROM_IN,0x5B1180,0x224
.align 4	::	file_5B13A4:	.import	ROM_IN,0x5B13A4,0x178
.align 4	::	file_5B151C:	.import	ROM_IN,0x5B151C,0x308
.align 4	::	file_5B1824:	.import	ROM_IN,0x5B1824,0x4
.align 4	::	file_5B1828:	.import	ROM_IN,0x5B1828,0x20
.align 4	::	file_5B1848:	.import	ROM_IN,0x5B1848,0x584
.align 4	::	file_5B1DCC:	.import	ROM_IN,0x5B1DCC,0x20
.align 4	::	file_5B1DEC:	.import	ROM_IN,0x5B1DEC,0x20
.align 4	::	file_5B1E0C:	.import	ROM_IN,0x5B1E0C,0x24
.align 4	::	file_5B1E30:	.import	ROM_IN,0x5B1E30,0x24
.align 4	::	file_5B1E54:	.import	ROM_IN,0x5B1E54,0x20
.align 4	::	file_5B1E74:	.import	ROM_IN,0x5B1E74,0x20
.align 4	::	file_5B1E94:	.import	ROM_IN,0x5B1E94,0x20
.align 4	::	file_5B1EB4:	.import	ROM_IN,0x5B1EB4,0x308
.align 4	::	file_5B21BC:	.import	ROM_IN,0x5B21BC,0xAC
.align 4	::	file_5B2268:	.import	ROM_IN,0x5B2268,0x22C
.align 4	::	file_5B2494:	.import	ROM_IN,0x5B2494,0x24
.align 4	::	file_5B24B8:	.import	ROM_IN,0x5B24B8,0x324
.align 4	::	file_5B27DC:	.import	ROM_IN,0x5B27DC,0x20
.align 4	::	file_5B27FC:	.import	ROM_IN,0x5B27FC,0x22C
.align 4	::	file_5B2A28:	.import	ROM_IN,0x5B2A28,0x110
.align 4	::	file_5B2B38:	.import	ROM_IN,0x5B2B38,0x238
.align 4	::	file_5B2D70:	.import	ROM_IN,0x5B2D70,0x24
.align 4	::	file_5B2D94:	.import	ROM_IN,0x5B2D94,0x4A4
.align 4	::	file_5B3238:	.import	ROM_IN,0x5B3238,0x20
.align 4	::	file_5B3258:	.import	ROM_IN,0x5B3258,0x238
.align 4	::	file_5B3490:	.import	ROM_IN,0x5B3490,0x48
.align 4	::	file_5B34D8:	.import	ROM_IN,0x5B34D8,0x218
.align 4	::	file_5B36F0:	.import	ROM_IN,0x5B36F0,0x24
.align 4	::	file_5B3714:	.import	ROM_IN,0x5B3714,0x1A0
.align 4	::	file_5B38B4:	.import	ROM_IN,0x5B38B4,0x218
.align 4	::	file_5B3ACC:	.import	ROM_IN,0x5B3ACC,0xC0
.align 4	::	file_5B3B8C:	.import	ROM_IN,0x5B3B8C,0x26C
.align 4	::	file_5B3DF8:	.import	ROM_IN,0x5B3DF8,0x24
.align 4	::	file_5B3E1C:	.import	ROM_IN,0x5B3E1C,0x404
.align 4	::	file_5B4220:	.import	ROM_IN,0x5B4220,0x20
.align 4	::	file_5B4240:	.import	ROM_IN,0x5B4240,0x11C
.align 4	::	file_5B435C:	.import	ROM_IN,0x5B435C,0x240
.align 4	::	file_5B459C:	.import	ROM_IN,0x5B459C,0x24
.align 4	::	file_5B45C0:	.import	ROM_IN,0x5B45C0,0x124
.align 4	::	file_5B46E4:	.import	ROM_IN,0x5B46E4,0x20
.align 4	::	file_5B4704:	.import	ROM_IN,0x5B4704,0x19C
.align 4	::	file_5B48A0:	.import	ROM_IN,0x5B48A0,0x254
.align 4	::	file_5B4AF4:	.import	ROM_IN,0x5B4AF4,0x4
.align 4	::	file_5B4AF8:	.import	ROM_IN,0x5B4AF8,0x24
.align 4	::	file_5B4B1C:	.import	ROM_IN,0x5B4B1C,0x20
.align 4	::	file_5B4B3C:	.import	ROM_IN,0x5B4B3C,0x20
.align 4	::	file_5B4B5C:	.import	ROM_IN,0x5B4B5C,0x20
.align 4	::	file_5B4B7C:	.import	ROM_IN,0x5B4B7C,0x24
.align 4	::	file_5B4BA0:	.import	ROM_IN,0x5B4BA0,0x24
.align 4	::	file_5B4BC4:	.import	ROM_IN,0x5B4BC4,0x20
.align 4	::	file_5B4BE4:	.import	ROM_IN,0x5B4BE4,0x20
.align 4	::	file_5B4C04:	.import	ROM_IN,0x5B4C04,0x20
.align 4	::	file_5B4C24:	.import	ROM_IN,0x5B4C24,0x20
.align 4	::	file_5B4C44:	.import	ROM_IN,0x5B4C44,0x150
.align 4	::	file_5B4D94:	.import	ROM_IN,0x5B4D94,0x2B8
.align 4	::	file_5B504C:	.import	ROM_IN,0x5B504C,0x24
.align 4	::	file_5B5070:	.import	ROM_IN,0x5B5070,0xB64
.align 4	::	file_5B5BD4:	.import	ROM_IN,0x5B5BD4,0x20
.align 4	::	file_5B5BF4:	.import	ROM_IN,0x5B5BF4,0xC0
.align 4	::	file_5B5CB4:	.import	ROM_IN,0x5B5CB4,0x26C
.align 4	::	file_5B5F20:	.import	ROM_IN,0x5B5F20,0x24
.align 4	::	file_5B5F44:	.import	ROM_IN,0x5B5F44,0x404
.align 4	::	file_5B6348:	.import	ROM_IN,0x5B6348,0x20
.align 4	::	file_5B6368:	.import	ROM_IN,0x5B6368,0x194
.align 4	::	file_5B64FC:	.import	ROM_IN,0x5B64FC,0x23C
.align 4	::	file_5B6738:	.import	ROM_IN,0x5B6738,0x4
.align 4	::	file_5B673C:	.import	ROM_IN,0x5B673C,0x24
.align 4	::	file_5B6760:	.import	ROM_IN,0x5B6760,0x20
.align 4	::	file_5B6780:	.import	ROM_IN,0x5B6780,0x20
.align 4	::	file_5B67A0:	.import	ROM_IN,0x5B67A0,0x20
.align 4	::	file_5B67C0:	.import	ROM_IN,0x5B67C0,0x20
.align 4	::	file_5B67E0:	.import	ROM_IN,0x5B67E0,0x20
.align 4	::	file_5B6800:	.import	ROM_IN,0x5B6800,0x20
.align 4	::	file_5B6820:	.import	ROM_IN,0x5B6820,0x20
.align 4	::	file_5B6840:	.import	ROM_IN,0x5B6840,0x20
.align 4	::	file_5B6860:	.import	ROM_IN,0x5B6860,0x20
.align 4	::	file_5B6880:	.import	ROM_IN,0x5B6880,0x20
.align 4	::	file_5B68A0:	.import	ROM_IN,0x5B68A0,0x20
.align 4	::	file_5B68C0:	.import	ROM_IN,0x5B68C0,0x24
.align 4	::	file_5B68E4:	.import	ROM_IN,0x5B68E4,0x20
.align 4	::	file_5B6904:	.import	ROM_IN,0x5B6904,0x1AC
.align 4	::	file_5B6AB0:	.import	ROM_IN,0x5B6AB0,0x264
.align 4	::	file_5B6D14:	.import	ROM_IN,0x5B6D14,0x24
.align 4	::	file_5B6D38:	.import	ROM_IN,0x5B6D38,0xCE4
.align 4	::	file_5B7A1C:	.import	ROM_IN,0x5B7A1C,0x20
.align 4	::	file_5B7A3C:	.import	ROM_IN,0x5B7A3C,0x260
.align 4	::	file_5B7C9C:	.import	ROM_IN,0x5B7C9C,0x28
.align 4	::	file_5B7CC4:	.import	ROM_IN,0x5B7CC4,0x20
.align 4	::	file_5B7CE4:	.import	ROM_IN,0x5B7CE4,0x28
.align 4	::	file_5B7D0C:	.import	ROM_IN,0x5B7D0C,0x20
.align 4	::	file_5B7D2C:	.import	ROM_IN,0x5B7D2C,0x239C
.align 4	::	file_5BA0C8:	.import	ROM_IN,0x5BA0C8,0x1F84
.align 4	::	file_5BC04C:	.import	ROM_IN,0x5BC04C,0x15FC
.align 4	::	file_5BD648:	.import	ROM_IN,0x5BD648,0x1F14
.align 4	::	file_5BF55C:	.import	ROM_IN,0x5BF55C,0x29E0
.align 4	::	file_5C1F3C:	.import	ROM_IN,0x5C1F3C,0x1E48
.align 4	::	file_5C3D84:	.import	ROM_IN,0x5C3D84,0x31A4
.align 4	::	file_5C6F28:	.import	ROM_IN,0x5C6F28,0x3E5C
.align 4	::	file_5CAD84:	.import	ROM_IN,0x5CAD84,0x2414
.align 4	::	file_5CD198:	.import	ROM_IN,0x5CD198,0x2BA4
.align 4	::	file_5CFD3C:	.import	ROM_IN,0x5CFD3C,0x2740
.align 4	::	file_5D247C:	.import	ROM_IN,0x5D247C,0x4ED8
.align 4	::	file_5D7354:	.import	ROM_IN,0x5D7354,0x3CEC
.align 4	::	file_5DB040:	.import	ROM_IN,0x5DB040,0x508C
.align 4	::	file_5E00CC:	.import	ROM_IN,0x5E00CC,0x10
					.import	"inc/undernet3-wallmap.lz"
.align 4	::	file_5E70A0:	.import	ROM_IN,0x5E70A0,0x5618
.align 4	::	file_5EC6B8:	.import	ROM_IN,0x5EC6B8,0x5944
.align 4	::	file_5F1FFC:	.import	ROM_IN,0x5F1FFC,0x421C
.align 4	::	file_5F6218:	.import	ROM_IN,0x5F6218,0x458
.align 4	::	file_5F6670:	.import	ROM_IN,0x5F6670,0x67C
.align 4	::	file_5F6CEC:	.import	ROM_IN,0x5F6CEC,0xF48
.align 4	::	file_5F7C34:	.import	ROM_IN,0x5F7C34,0xEEC
.align 4	::	file_5F8B20:	.import	ROM_IN,0x5F8B20,0x6E8
.align 4	::	file_5F9208:	.import	ROM_IN,0x5F9208,0x670
.align 4	::	file_5F9878:	.import	ROM_IN,0x5F9878,0x620
.align 4	::	file_5F9E98:	.import	ROM_IN,0x5F9E98,0x610
.align 4	::	file_5FA4A8:	.import	ROM_IN,0x5FA4A8,0x684
.align 4	::	file_5FAB2C:	.import	ROM_IN,0x5FAB2C,0xF68
.align 4	::	file_5FBA94:	.import	ROM_IN,0x5FBA94,0xEE0
.align 4	::	file_5FC974:	.import	ROM_IN,0x5FC974,0xF18
.align 4	::	file_5FD88C:	.import	ROM_IN,0x5FD88C,0x670
.align 4	::	file_5FDEFC:	.import	ROM_IN,0x5FDEFC,0x684
.align 4	::	file_5FE580:	.import	ROM_IN,0x5FE580,0x5E4
.align 4	::	file_5FEB64:	.import	ROM_IN,0x5FEB64,0xE80
.align 4	::	file_5FF9E4:	.import	ROM_IN,0x5FF9E4,0xEE4
.align 4	::	file_6008C8:	.import	ROM_IN,0x6008C8,0x40
.align 4	::	file_600908:	.import	ROM_IN,0x600908,0x20
.align 4	::	file_600928:	.import	ROM_IN,0x600928,0x4B0
.align 4	::	file_600DD8:	.import	ROM_IN,0x600DD8,0x180
.align 4	::	file_600F58:	.import	ROM_IN,0x600F58,0x180
.align 4	::	file_6010D8:	.import	ROM_IN,0x6010D8,0x180
.align 4	::	file_601258:	.import	ROM_IN,0x601258,0x100
.align 4	::	file_601358:	.import	ROM_IN,0x601358,0x180
.align 4	::	file_6014D8:	.import	ROM_IN,0x6014D8,0x80
.align 4	::	file_601558:	.import	ROM_IN,0x601558,0x100
.align 4	::	file_601658:	.import	ROM_IN,0x601658,0x20
.align 4	::	file_601678:	.import	ROM_IN,0x601678,0x20
.align 4	::	file_601698:	.import	ROM_IN,0x601698,0x20
.align 4	::	file_6016B8:	.import	ROM_IN,0x6016B8,0x20
.align 4	::	file_6016D8:	.import	ROM_IN,0x6016D8,0x20
.align 4	::	file_6016F8:	.import	ROM_IN,0x6016F8,0x20
.align 4	::	file_601718:	.import	ROM_IN,0x601718,0x20
.align 4	::	file_601738:	.import TEMP+"/601738.img.bin"
.align 4	::	file_607F38:	.import	ROM_IN,0x607F38,0x20
.align 4	::	file_607F58:	.import	ROM_IN,0x607F58,0x800
.align 4	::	file_608758:	.import	TEMP+"/608758.font.bin"
.align 4	::	file_612CB8:	.import	ROM_IN,0x612CB8,0x40
.align 4	::	file_612CF8:	.import	ROM_IN,0x612CF8,0xE0
.align 4	::	file_612DD8:	.import	ROM_IN,0x612DD8,0x40
.align 4	::	file_612E18:	.import	ROM_IN,0x612E18,0x20
.align 4	::	file_612E38:	.import TEMP+"/612E38.img.bin"
.align 4	::	file_619E38:	.import	ROM_IN,0x619E38,0xC0
.align 4	::	file_619EF8:	.import TEMP+"/619EF8.img.bin"
.align 4	::	file_620EF8:	.import	ROM_IN,0x620EF8,0x20
.align 4	::	file_620F18:	.import	ROM_IN,0x620F18,0x60
.align 4	::	file_620F78:	.import	ROM_IN,0x620F78,0x20
.align 4	::	file_620F98:	.import	ROM_IN,0x620F98,0x40
.align 4	::	file_620FD8:	.import	ROM_IN,0x620FD8,0x20
.align 4	::	file_620FF8:	.import	ROM_IN,0x620FF8,0x40
.align 4	::	file_621038:	.import	ROM_IN,0x621038,0x40
.align 4	::	file_621078:	.import	ROM_IN,0x621078,0x20
.align 4	::	file_621098:	.import	ROM_IN,0x621098,0x20
.align 4	::	file_6210B8:	.import	ROM_IN,0x6210B8,0x20
.align 4	::	file_6210D8:	.import	ROM_IN,0x6210D8,0x20
.align 4	::	file_6210F8:	.import	TEMP+"/6210F8.pal.bin"
.align 4	::	file_621158:	.import	TEMP+"/621158.img.bin"
.align 4	::	file_622098:	.import	ROM_IN,0x622098,0x20
.align 4	::	file_6220B8:	.import	ROM_IN,0x6220B8,0x20
.align 4	::	file_6220D8:	.import	ROM_IN,0x6220D8,0x20
.align 4	::	file_6220F8:	.import	ROM_IN,0x6220F8,0x20
.align 4	::	file_622118:	.import	ROM_IN,0x622118,0x3314
.align 4	::	file_62542C:	.import	ROM_IN,0x62542C,0x3624
.align 4	::	file_628A50:	.import	ROM_IN,0x628A50,0x34C8
.align 4	::	file_62BF18:	.import	ROM_IN,0x62BF18,0x321C
.align 4	::	file_62F134:	.import	TEMP+"/62F134.img.lz"
.align 4	::	file_62FA94:	.import	TEMP+"/62FA94.pal.bin"
.align 4	::	file_62FAB4:	.import	TEMP+"/62FAB4.map.bin"
.align 4	::	file_62FFB4:	.import	ROM_IN,0x62FFB4,0x1FC
.align 4	::	file_6301B0:	.import	ROM_IN,0x6301B0,0x100
.align 4	::	file_6302B0:	.import	ROM_IN,0x6302B0,0xB8
.align 4	::	file_630368:	.import	ROM_IN,0x630368,0x30
.align 4	::	file_630398:	.import	TEMP+"/630398.dmp"
.align 4	::	file_631798:	.import	TEMP+"/631798.dmp"
.align 4	::	file_631DF8:	.import	ROM_IN,0x631DF8,0xF4
.align 4	::	file_631EEC:	.import	ROM_IN,0x631EEC,0x14
.align 4	::	file_631F00:	.import	TEMP+"/631F00.img.lz"
.align 4	::	file_631F80:	.import	ROM_IN,0x631F80,0x54
.align 4	::	file_631FD4:	.import	ROM_IN,0x631FD4,0x88
.align 4	::	file_63205C:	.import	ROM_IN,0x63205C,0x6C
.align 4	::	file_6320C8:	.import	ROM_IN,0x6320C8,0x8C
.align 4	::	file_632154:	.import	ROM_IN,0x632154,0x74
.align 4	::	file_6321C8:	.import	ROM_IN,0x6321C8,0x80
.align 4	::	file_632248:	.import	TEMP+"/632248.img.lz"
.align 4	::	file_6322B0:	.import	ROM_IN,0x6322B0,0x8C
.align 4	::	file_63233C:	.import	ROM_IN,0x63233C,0x78
.align 4	::	file_6323B4:	.import	ROM_IN,0x6323B4,0x78
.align 4	::	file_63242C:	.import	ROM_IN,0x63242C,0x7C
.align 4	::	file_6324A8:	.import	ROM_IN,0x6324A8,0x78
.align 4	::	file_632520:	.import	ROM_IN,0x632520,0x78
.align 4	::	file_632598:	.import	ROM_IN,0x632598,0x84
.align 4	::	file_63261C:	.import	ROM_IN,0x63261C,0x78
.align 4	::	file_632694:	.import	ROM_IN,0x632694,0x78
.align 4	::	file_63270C:	.import	ROM_IN,0x63270C,0x74
.align 4	::	file_632780:	.import	ROM_IN,0x632780,0x7C
.align 4	::	file_6327FC:	.import	ROM_IN,0x6327FC,0x80
.align 4	::	file_63287C:	.import	TEMP+"/63287C.img.lz"
.align 4	::	file_6328E4:	.import	ROM_IN,0x6328E4,0x300
.align 4	::	file_632BE4:	.import	ROM_IN,0x632BE4,0x200
.align 4	::	file_632DE4:	.import	TEMP+"/632DE4.img.bin"
.align 4	::	file_632FA4:	.import	TEMP+"/632FA4.img.bin"
.align 4	::	file_6330A4:	.import	TEMP+"/6330A4.img.bin"
.align 4	::	file_6331A4:	.import	TEMP+"/6331A4.img.bin"
.align 4	::	file_6332A4:	.import	TEMP+"/6332A4.img.bin"
.align 4	::	file_6333A4:	.import	TEMP+"/6333A4.img.bin"
.align 4	::	file_6334A4:	.import	TEMP+"/6334A4.img.bin"
.align 4	::	file_6335A4:	.import	TEMP+"/6335A4.img.bin"
.align 4	::	file_6336A4:	.import	ROM_IN,0x6336A4,0x20
.align 4	::	file_6336C4:	.import	ROM_IN,0x6336C4,0x28C
.align 4	::	file_633950:	.import	ROM_IN,0x633950,0x400
.align 4	::	file_633D50:	.import	ROM_IN,0x633D50,0x100
.align 4	::	file_633E50:	.import	ROM_IN,0x633E50,0x20
.align 4	::	file_633E70:	.import	ROM_IN,0x633E70,0xC8
.align 4	::	file_633F38:	.import	ROM_IN,0x633F38,0xBC
.align 4	::	file_633FF4:	.import	ROM_IN,0x633FF4,0xA4
.align 4	::	file_634098:	.import	ROM_IN,0x634098,0xA8
.align 4	::	file_634140:	.import	ROM_IN,0x634140,0x64
.align 4	::	file_6341A4:	.import	ROM_IN,0x6341A4,0x40
.align 4	::	file_6341E4:	.import	ROM_IN,0x6341E4,0x8C
.align 4	::	file_634270:	.import	ROM_IN,0x634270,0x278
.align 4	::	file_6344E8:	.import	ROM_IN,0x6344E8,0x30
.align 4	::	file_634518:	.import	ROM_IN,0x634518,0x154
.align 4	::	file_63466C:	.import	TEMP+"/63466C.img.lz"
.align 4	::	file_634B8C:	.import	ROM_IN,0x634B8C,0x2C
.align 4	::	file_634BB8:	.import	TEMP+"/634BB8.map.lz"
.align 4	::	file_634D88:	.import	ROM_IN,0x634D88,0x494
.align 4	::	file_63521C:	.import	ROM_IN,0x63521C,0x24
.align 4	::	file_635240:	.import	ROM_IN,0x635240,0x19C
.align 4	::	file_6353DC:	.import	ROM_IN,0x6353DC,0xFC
.align 4	::	file_6354D8:	.import	ROM_IN,0x6354D8,0x54
.align 4	::	file_63552C:	.import	ROM_IN,0x63552C,0xC4
.align 4	::	file_6355F0:	.import	ROM_IN,0x6355F0,0xA0
.align 4	::	file_635690:	.import	ROM_IN,0x635690,0x1E0
.align 4	::	file_635870:	.import	ROM_IN,0x635870,0x160
.align 4	::	file_6359D0:	.import	TEMP+"/6359D0.img.bin"
.align 4	::	file_635DD0:	.import	TEMP+"/635DD0.img.bin"
.align 4	::	file_6363D0:	.import	ROM_IN,0x6363D0,0x80
.align 4	::	file_636450:	.import	ROM_IN,0x636450,0x80
.align 4	::	file_6364D0:	.import	TEMP+"/6364D0.img.lz"
.align 4	::	file_6365B8:	.import	TEMP+"/6365B8.img.lz"
.align 4	::	file_63673C:	.import	TEMP+"/63673C.img.lz"
.align 4	::	file_6368E8:	.import TEMP+"/6368E8.msg"
.align 4	::	file_63720C:	.import TEMP+"/63720C.msg"
.align 4	::	file_63746C:	.import TEMP+"/63746C.msg"
.align 4	::	file_63756C:
.area max(filesize(TEMP+"/63756C_E.img.bin"), filesize(TEMP+"/63756C_U.img.bin")),0x00
	.if VAR_CALENDAR_MONDAY	::	.import	TEMP+"/63756C_E.img.bin"
	.else			::	.import	TEMP+"/63756C_U.img.bin"
	.endif
.endarea
.align 4	::	file_63814C:	.import	ROM_IN,0x63814C,0x20
.align 4	::	file_63816C:
.area max(filesize(TEMP+"/63816C_E.map.bin"), filesize(TEMP+"/63816C_U.map.bin")),0x00
	.if VAR_CALENDAR_MONDAY	::	.import	TEMP+"/63816C_E.map.bin"
	.else			::	.import	TEMP+"/63816C_U.map.bin"
	.endif
.endarea
.align 4	::	file_63861C:	.import	ROM_IN,0x63861C,0xE8
.align 4	::	file_638704:	.import	ROM_IN,0x638704,0x24
.align 4	::	file_638728:	.import	ROM_IN,0x638728,0xC0
.align 4	::	file_6387E8:	.import	ROM_IN,0x6387E8,0x338
.align 4	::	file_638B20:	.import	ROM_IN,0x638B20,0x30
.align 4	::	file_638B50:	.import	ROM_IN,0x638B50,0x174
.align 4	::	file_638CC4:	.import	ROM_IN,0x638CC4,0x154
.align 4	::	file_638E18:	.import	ROM_IN,0x638E18,0x28
.align 4	::	file_638E40:	.import	ROM_IN,0x638E40,0xD4
.align 4	::	file_638F14:	.import	ROM_IN,0x638F14,0xF8
.align 4	::	file_63900C:	.import	ROM_IN,0x63900C,0x1C
.align 4	::	file_639028:	.import	ROM_IN,0x639028,0xD8
.align 4	::	file_639100:	.import	ROM_IN,0x639100,0xD8
.align 4	::	file_6391D8:	.import	ROM_IN,0x6391D8,0x30
.align 4	::	file_639208:	.import	TEMP+"/639208.img.lz"
.align 4	::	file_639620:	.import	ROM_IN,0x639620,0x45C	// BN4 Navi emblem spinners
.align 4	::	file_639A7C:	.import	ROM_IN,0x639A7C,0x284	// 4.5 Navi emblem spinners
.align 4	::	file_639D00:	.import	ROM_IN,0x639D00,0xA0
.align 4	::	file_639DA0:	.import	ROM_IN,0x639DA0,0x190
.align 4	::	file_639F30:	.import	ROM_IN,0x639F30,0x24
.align 4	::	file_639F54:	.import	ROM_IN,0x639F54,0xF8
.align 4	::	file_63A04C:	.import	ROM_IN,0x63A04C,0x108
.align 4	::	file_63A154:	.import	ROM_IN,0x63A154,0x18
.align 4	::	file_63A16C:	.import	ROM_IN,0x63A16C,0xCC
.align 4	::	file_63A238:	.import	ROM_IN,0x63A238,0xCC
.align 4	::	file_63A304:	.import	ROM_IN,0x63A304,0xD4
.align 4	::	file_63A3D8:	.import	ROM_IN,0x63A3D8,0x1C
.align 4	::	file_63A3F4:	.import	ROM_IN,0x63A3F4,0xD8
.align 4	::	file_63A4CC:	.import	ROM_IN,0x63A4CC,0x154
.align 4	::	file_63A620:	.import	ROM_IN,0x63A620,0x28
.align 4	::	file_63A648:	.import	ROM_IN,0x63A648,0xD4
.align 4	::	file_63A71C:	.import	ROM_IN,0x63A71C,0x154
.align 4	::	file_63A870:	.import	ROM_IN,0x63A870,0x28
.align 4	::	file_63A898:	.import	ROM_IN,0x63A898,0xD0
.align 4	::	file_63A968:	.import	ROM_IN,0x63A968,0x178
.align 4	::	file_63AAE0:	.import	ROM_IN,0x63AAE0,0x28
.align 4	::	file_63AB08:	.import	ROM_IN,0x63AB08,0xEC
.align 4	::	file_63ABF4:	.import	TEMP+"/63ABF4.img.bin"
.align 4	::	file_63D174:	.import	TEMP+"/63D174.img.bin"
.align 4	::	file_63F654:	.import	ROM_IN,0x63F654,0x1C40
.align 4	::	file_641294:	.import	ROM_IN,0x641294,0x20
.align 4	::	file_6412B4:	.import	ROM_IN,0x6412B4,0x20
.align 4	::	file_6412D4:	.import	TEMP+"/6412D4.map.bin"
.align 4	::	file_641784:	.import	TEMP+"/641784.map.bin"
.align 4	::	file_641C34:	.import	ROM_IN,0x641C34,0x4B0
.align 4	::	file_6420E4:	.import	ROM_IN,0x6420E4,0x20
.align 4	::	file_642104:	.import	ROM_IN,0x642104,0x300
.align 4	::	file_642404:	.import	ROM_IN,0x642404,0x400
.align 4	::	file_642804:	.import	ROM_IN,0x642804,0xAA0
.align 4	::	file_6432A4:	.import	ROM_IN,0x6432A4,0x50
.align 4	::	file_6432F4:	.import	ROM_IN,0x6432F4,0x3A4
.align 4	::	file_643698:	.import	ROM_IN,0x643698,0x990
.align 4	::	file_644028:	.import	ROM_IN,0x644028,0x70
.align 4	::	file_644098:	.import	ROM_IN,0x644098,0x1A0
.align 4	::	file_644238:	.import	ROM_IN,0x644238,0xC98
.align 4	::	file_644ED0:	.import	ROM_IN,0x644ED0,0x78
.align 4	::	file_644F48:	.import	ROM_IN,0x644F48,0x200
.align 4	::	file_645148:	.import	ROM_IN,0x645148,0xF14
.align 4	::	file_64605C:	.import	ROM_IN,0x64605C,0x78
.align 4	::	file_6460D4:	.import	ROM_IN,0x6460D4,0x284
.align 4	::	file_646358:	.import	ROM_IN,0x646358,0x11CC
.align 4	::	file_647524:	.import	ROM_IN,0x647524,0x60
.align 4	::	file_647584:	.import	ROM_IN,0x647584,0x260
.align 4	::	file_6477E4:	.import	ROM_IN,0x6477E4,0xD3C
.align 4	::	file_648520:	.import	ROM_IN,0x648520,0x84
.align 4	::	file_6485A4:	.import	ROM_IN,0x6485A4,0x1DC
.align 4	::	file_648780:	.import	ROM_IN,0x648780,0xD48
.align 4	::	file_6494C8:	.import	ROM_IN,0x6494C8,0x58
.align 4	::	file_649520:	.import	ROM_IN,0x649520,0x218
.align 4	::	file_649738:	.import	ROM_IN,0x649738,0x1510
.align 4	::	file_64AC48:	.import	ROM_IN,0x64AC48,0x5C
.align 4	::	file_64ACA4:	.import	ROM_IN,0x64ACA4,0x2C0
.align 4	::	file_64AF64:	.import	ROM_IN,0x64AF64,0xE1C
.align 4	::	file_64BD80:	.import	ROM_IN,0x64BD80,0x74
.align 4	::	file_64BDF4:	.import	ROM_IN,0x64BDF4,0x224
.align 4	::	file_64C018:	.import	ROM_IN,0x64C018,0xB68
.align 4	::	file_64CB80:	.import	ROM_IN,0x64CB80,0x68
.align 4	::	file_64CBE8:	.import	ROM_IN,0x64CBE8,0x1DC
.align 4	::	file_64CDC4:	.import	ROM_IN,0x64CDC4,0x12A0
.align 4	::	file_64E064:	.import	ROM_IN,0x64E064,0x64
.align 4	::	file_64E0C8:	.import	ROM_IN,0x64E0C8,0x27C
.align 4	::	file_64E344:	.import	ROM_IN,0x64E344,0x14F0
.align 4	::	file_64F834:	.import	ROM_IN,0x64F834,0x60
.align 4	::	file_64F894:	.import	ROM_IN,0x64F894,0x298
.align 4	::	file_64FB2C:	.import	ROM_IN,0x64FB2C,0x130
.align 4	::	file_64FC5C:	.import	ROM_IN,0x64FC5C,0x690
.align 4	::	file_6502EC:	.import	ROM_IN,0x6502EC,0x5C
.align 4	::	file_650348:	.import	ROM_IN,0x650348,0x1080
.align 4	::	file_6513C8:	.import	ROM_IN,0x6513C8,0x58
.align 4	::	file_651420:	.import	ROM_IN,0x651420,0x27C
.align 4	::	file_65169C:	.import	ROM_IN,0x65169C,0xD04
.align 4	::	file_6523A0:	.import	ROM_IN,0x6523A0,0x6C
.align 4	::	file_65240C:	.import	ROM_IN,0x65240C,0x218
.align 4	::	file_652624:	.import	ROM_IN,0x652624,0xBBC
.align 4	::	file_6531E0:	.import	ROM_IN,0x6531E0,0x58
.align 4	::	file_653238:	.import	ROM_IN,0x653238,0x210
.align 4	::	file_653448:	.import	ROM_IN,0x653448,0x103C
.align 4	::	file_654484:	.import	ROM_IN,0x654484,0x60
.align 4	::	file_6544E4:	.import	ROM_IN,0x6544E4,0x298
.align 4	::	file_65477C:	.import	ROM_IN,0x65477C,0x1134
.align 4	::	file_6558B0:	.import	ROM_IN,0x6558B0,0x6C
.align 4	::	file_65591C:	.import	ROM_IN,0x65591C,0x27C
.align 4	::	file_655B98:	.import	ROM_IN,0x655B98,0x6F0
.align 4	::	file_656288:	.import	ROM_IN,0x656288,0x70
.align 4	::	file_6562F8:	.import	ROM_IN,0x6562F8,0x140
.align 4	::	file_656438:	.import	ROM_IN,0x656438,0x12C8
.align 4	::	file_657700:	.import	ROM_IN,0x657700,0x64
.align 4	::	file_657764:	.import	ROM_IN,0x657764,0x260
.align 4	::	file_6579C4:	.import	ROM_IN,0x6579C4,0x1208
.align 4	::	file_658BCC:	.import	ROM_IN,0x658BCC,0x64
.align 4	::	file_658C30:	.import	ROM_IN,0x658C30,0x278
.align 4	::	file_658EA8:	.import	ROM_IN,0x658EA8,0xB94
.align 4	::	file_659A3C:	.import	ROM_IN,0x659A3C,0x78
.align 4	::	file_659AB4:	.import	ROM_IN,0x659AB4,0x204
.align 4	::	file_659CB8:	.import TEMP+"/659CB8.msg"
.align 4	::	file_65A578:	.import TEMP+"/65A578.msg"
.align 4	::	file_65A608:	.import TEMP+"/65A608.msg"
.align 4	::	file_65AA80:	.import TEMP+"/65AA80.msg"
.align 4	::	file_65AAE0:	.import TEMP+"/65AAE0.msg"
.align 4	::	file_65AF54:	.import TEMP+"/65AF54.msg"
.align 4	::	file_65AFA0:	.import TEMP+"/65AFA0.msg"
.align 4	::	file_65B220:	.import TEMP+"/65B220.msg"
.align 4	::	file_65B74C:	.import TEMP+"/65B74C.msg"
.align 4	::	file_65B8E4:	.import TEMP+"/65B8E4.msg"
.align 4	::	file_65B9E8:	.import TEMP+"/65B9E8.msg"
.align 4	::	file_65CC78:	.import TEMP+"/65CC78.msg"
.align 4	::	file_65E384:	.import TEMP+"/65E384.msg"
.align 4	::	file_65E438:	.import TEMP+"/65E438.msg"
.align 4	::	file_65E828:	.import TEMP+"/65E828.msg"
.align 4	::	file_65E8B8:	.import TEMP+"/65E8B8.msg"
.align 4	::	file_65F11C:	.import TEMP+"/65F11C.msg"
.align 4	::	file_65F9AC:	.import TEMP+"/65F9AC.msg"
.align 4	::	file_65FA58:	.import TEMP+"/65FA58.msg"
.align 4	::	file_65FEC0:	.import TEMP+"/65FEC0.msg"
.align 4	::	file_65FF3C:	.import TEMP+"/65FF3C.msg"
.align 4	::	file_660CA8:	.import TEMP+"/660CA8.msg"
.align 4	::	file_660D90:	.import TEMP+"/660D90.msg"
.align 4	::	file_661060:	.import TEMP+"/661060.msg"
.align 4	::	file_6615A8:	.import TEMP+"/6615A8.msg"
.align 4	::	file_661754:	.import TEMP+"/661754.msg"
.align 4	::	file_661858:	.import TEMP+"/661858.msg"
.align 4	::	file_662C5C:	.import TEMP+"/662C5C.msg"
.align 4	::	file_664804:	.import TEMP+"/664804.msg"
.align 4	::	file_6648D0:	.import TEMP+"/6648D0.msg"
.align 4	::	file_664D84:	.import TEMP+"/664D84.msg"
.align 4	::	file_664E28:	.import TEMP+"/664E28.msg"
.align 4	::	file_665698:	.import TEMP+"/665698.msg"
.align 4	::	file_665EB8:	.import TEMP+"/665EB8.msg"
.align 4	::	file_665F3C:	.import TEMP+"/665F3C.msg"
.align 4	::	file_6663B8:	.import TEMP+"/6663B8.msg"
.align 4	::	file_666430:	.import TEMP+"/666430.msg"
.align 4	::	file_6664D0:	.import TEMP+"/6664D0.msg"
.align 4	::	file_66651C:	.import TEMP+"/66651C.msg"
.align 4	::	file_666820:	.import TEMP+"/666820.msg"
.align 4	::	file_666D5C:	.import TEMP+"/666D5C.msg"
.align 4	::	file_666F38:	.import TEMP+"/666F38.msg"
.align 4	::	file_667044:	.import TEMP+"/667044.msg"
.align 4	::	file_6684B0:	.import TEMP+"/6684B0.msg"
.align 4	::	file_66A160:	.import TEMP+"/66A160.msg"
.align 4	::	file_66A234:	.import TEMP+"/66A234.msg"
.align 4	::	file_66A7A8:	.import TEMP+"/66A7A8.msg"
.align 4	::	file_66A844:	.import TEMP+"/66A844.msg"
.align 4	::	file_66B0D4:	.import TEMP+"/66B0D4.msg"
.align 4	::	file_66B8B0:	.import TEMP+"/66B8B0.msg"
.align 4	::	file_66B950:	.import TEMP+"/66B950.msg"
.align 4	::	file_66BDE0:	.import TEMP+"/66BDE0.msg"
.align 4	::	file_66BE58:	.import TEMP+"/66BE58.msg"
.align 4	::	file_66BEF8:	.import TEMP+"/66BEF8.msg"
.align 4	::	file_66BF44:	.import TEMP+"/66BF44.msg"
.align 4	::	file_66C264:	.import TEMP+"/66C264.msg"
.align 4	::	file_66C7D8:	.import TEMP+"/66C7D8.msg"
.align 4	::	file_66C978:	.import TEMP+"/66C978.msg"
.align 4	::	file_66CA84:	.import TEMP+"/66CA84.msg"
.align 4	::	file_66DDD0:	.import TEMP+"/66DDD0.msg"
.align 4	::	file_66F6A0:	.import TEMP+"/66F6A0.msg"
.align 4	::	file_66F78C:	.import TEMP+"/66F78C.msg"
.align 4	::	file_66FC98:	.import TEMP+"/66FC98.msg"
.align 4	::	file_66FD14:	.import TEMP+"/66FD14.msg"
.align 4	::	file_670568:	.import TEMP+"/670568.msg"
.align 4	::	file_670DF4:	.import TEMP+"/670DF4.msg"
.align 4	::	file_670E9C:	.import TEMP+"/670E9C.msg"
.align 4	::	file_67133C:	.import TEMP+"/67133C.msg"
.align 4	::	file_6713B8:	.import TEMP+"/6713B8.msg"
.align 4	::	file_671638:	.import TEMP+"/671638.msg"
.align 4	::	file_671684:	.import TEMP+"/671684.msg"
.align 4	::	file_671958:	.import TEMP+"/671958.msg"
.align 4	::	file_671F24:	.import TEMP+"/671F24.msg"
.align 4	::	file_672124:	.import TEMP+"/672124.msg"
.align 4	::	file_672238:	.import TEMP+"/672238.msg"
.align 4	::	file_673770:	.import TEMP+"/673770.msg"
.align 4	::	file_675338:	.import TEMP+"/675338.msg"
.align 4	::	file_675440:	.import TEMP+"/675440.msg"
.align 4	::	file_67593C:	.import TEMP+"/67593C.msg"
.align 4	::	file_675A20:	.import TEMP+"/675A20.msg"
.align 4	::	file_6762A8:	.import TEMP+"/6762A8.msg"
.align 4	::	file_676AE4:	.import TEMP+"/676AE4.msg"
.align 4	::	file_676BA8:	.import TEMP+"/676BA8.msg"
.align 4	::	file_677028:	.import TEMP+"/677028.msg"
.align 4	::	file_6770B8:	.import TEMP+"/6770B8.msg"
.align 4	::	file_677318:	.import TEMP+"/677318.msg"
.align 4	::	file_677364:	.import TEMP+"/677364.msg"
.align 4	::	file_677774:	.import TEMP+"/677774.msg"
.align 4	::	file_677C94:	.import TEMP+"/677C94.msg"
.align 4	::	file_677E58:	.import TEMP+"/677E58.msg"
.align 4	::	file_677F64:	.import TEMP+"/677F64.msg"
.align 4	::	file_679424:	.import TEMP+"/679424.msg"
.align 4	::	file_67AD3C:	.import TEMP+"/67AD3C.msg"
.align 4	::	file_67AE2C:	.import TEMP+"/67AE2C.msg"
.align 4	::	file_67B3D0:	.import TEMP+"/67B3D0.msg"
.align 4	::	file_67B47C:	.import TEMP+"/67B47C.msg"
.align 4	::	file_67BCF4:	.import TEMP+"/67BCF4.msg"
.align 4	::	file_67C4CC:	.import TEMP+"/67C4CC.msg"
.align 4	::	file_67C578:	.import TEMP+"/67C578.msg"
.align 4	::	file_67C9FC:	.import TEMP+"/67C9FC.msg"
.align 4	::	file_67CA84:	.import TEMP+"/67CA84.msg"
.align 4	::	file_67CB24:	.import TEMP+"/67CB24.msg"
.align 4	::	file_67CB70:	.import TEMP+"/67CB70.msg"
.align 4	::	file_67CED8:	.import TEMP+"/67CED8.msg"
.align 4	::	file_67D44C:	.import TEMP+"/67D44C.msg"
.align 4	::	file_67D5F8:	.import TEMP+"/67D5F8.msg"
.align 4	::	file_67D708:	.import TEMP+"/67D708.msg"
.align 4	::	file_67EA58:	.import TEMP+"/67EA58.msg"
.align 4	::	file_680370:	.import TEMP+"/680370.msg"
.align 4	::	file_680454:	.import TEMP+"/680454.msg"
.align 4	::	file_6808C4:	.import TEMP+"/6808C4.msg"
.align 4	::	file_68097C:	.import TEMP+"/68097C.msg"
.align 4	::	file_6811F0:	.import TEMP+"/6811F0.msg"
.align 4	::	file_681AB8:	.import TEMP+"/681AB8.msg"
.align 4	::	file_681B3C:	.import TEMP+"/681B3C.msg"
.align 4	::	file_681FD4:	.import TEMP+"/681FD4.msg"
.align 4	::	file_682054:	.import TEMP+"/682054.msg"
.align 4	::	file_6824B8:	.import TEMP+"/6824B8.msg"
.align 4	::	file_682504:	.import TEMP+"/682504.msg"
.align 4	::	file_6827F8:	.import TEMP+"/6827F8.msg"
.align 4	::	file_682D68:	.import TEMP+"/682D68.msg"
.align 4	::	file_682F44:	.import TEMP+"/682F44.msg"
.align 4	::	file_683054:	.import TEMP+"/683054.msg"
.align 4	::	file_6842F8:	.import TEMP+"/6842F8.msg"
.align 4	::	file_685B7C:	.import TEMP+"/685B7C.msg"
.align 4	::	file_685C68:	.import TEMP+"/685C68.msg"
.align 4	::	file_68611C:	.import TEMP+"/68611C.msg"
.align 4	::	file_6861B8:	.import TEMP+"/6861B8.msg"
.align 4	::	file_686A60:	.import TEMP+"/686A60.msg"
.align 4	::	file_6872B8:	.import TEMP+"/6872B8.msg"
.align 4	::	file_6873F4:	.import TEMP+"/6873F4.msg"
.align 4	::	file_68787C:	.import TEMP+"/68787C.msg"
.align 4	::	file_687910:	.import TEMP+"/687910.msg"
.align 4	::	file_687E3C:	.import TEMP+"/687E3C.msg"
.align 4	::	file_687E88:	.import TEMP+"/687E88.msg"
.align 4	::	file_6881C4:	.import TEMP+"/6881C4.msg"
.align 4	::	file_6886F0:	.import TEMP+"/6886F0.msg"
.align 4	::	file_688900:	.import TEMP+"/688900.msg"
.align 4	::	file_688A10:	.import TEMP+"/688A10.msg"
.align 4	::	file_689DF8:	.import TEMP+"/689DF8.msg"
.align 4	::	file_68BAAC:	.import TEMP+"/68BAAC.msg"
.align 4	::	file_68BBB4:	.import TEMP+"/68BBB4.msg"
.align 4	::	file_68C2CC:	.import TEMP+"/68C2CC.msg"
.align 4	::	file_68C368:	.import TEMP+"/68C368.msg"
.align 4	::	file_68CBFC:	.import TEMP+"/68CBFC.msg"
.align 4	::	file_68D3C8:	.import TEMP+"/68D3C8.msg"
.align 4	::	file_68D454:	.import TEMP+"/68D454.msg"
.align 4	::	file_68D8F8:	.import TEMP+"/68D8F8.msg"
.align 4	::	file_68D96C:	.import TEMP+"/68D96C.msg"
.align 4	::	file_68DD4C:	.import TEMP+"/68DD4C.msg"
.align 4	::	file_68DD98:	.import TEMP+"/68DD98.msg"
.align 4	::	file_68E0B4:	.import TEMP+"/68E0B4.msg"
.align 4	::	file_68E5E0:	.import TEMP+"/68E5E0.msg"
.align 4	::	file_68E7BC:	.import TEMP+"/68E7BC.msg"
.align 4	::	file_68E8C4:	.import TEMP+"/68E8C4.msg"
.align 4	::	file_68FB1C:	.import TEMP+"/68FB1C.msg"
.align 4	::	file_691994:	.import TEMP+"/691994.msg"
.align 4	::	file_691A64:	.import TEMP+"/691A64.msg"
.align 4	::	file_691F80:	.import TEMP+"/691F80.msg"
.align 4	::	file_692020:	.import TEMP+"/692020.msg"
.align 4	::	file_692874:	.import TEMP+"/692874.msg"
.align 4	::	file_69303C:	.import TEMP+"/69303C.msg"
.align 4	::	file_6930F8:	.import TEMP+"/6930F8.msg"
.align 4	::	file_693590:	.import TEMP+"/693590.msg"
.align 4	::	file_69360C:	.import TEMP+"/69360C.msg"
.align 4	::	file_693778:	.import TEMP+"/693778.msg"
.align 4	::	file_6937C4:	.import TEMP+"/6937C4.msg"
.align 4	::	file_693AA4:	.import TEMP+"/693AA4.msg"
.align 4	::	file_693FEC:	.import TEMP+"/693FEC.msg"
.align 4	::	file_6941DC:	.import TEMP+"/6941DC.msg"
.align 4	::	file_6942F0:	.import TEMP+"/6942F0.msg"
.align 4	::	file_69561C:	.import TEMP+"/69561C.msg"
.align 4	::	file_696CF4:	.import TEMP+"/696CF4.msg"
.align 4	::	file_696DD8:	.import TEMP+"/696DD8.msg"
.align 4	::	file_697268:	.import TEMP+"/697268.msg"
.align 4	::	file_697310:	.import TEMP+"/697310.msg"
.align 4	::	file_697B70:	.import TEMP+"/697B70.msg"
.align 4	::	file_698424:	.import TEMP+"/698424.msg"
.align 4	::	file_698508:	.import TEMP+"/698508.msg"
.align 4	::	file_6989B0:	.import TEMP+"/6989B0.msg"
.align 4	::	file_698A2C:	.import TEMP+"/698A2C.msg"
.align 4	::	file_698CB0:	.import TEMP+"/698CB0.msg"
.align 4	::	file_698CFC:	.import TEMP+"/698CFC.msg"
.align 4	::	file_699194:	.import TEMP+"/699194.msg"
.align 4	::	file_6996DC:	.import TEMP+"/6996DC.msg"
.align 4	::	file_6998DC:	.import TEMP+"/6998DC.msg"
.align 4	::	file_6999F4:	.import TEMP+"/6999F4.msg"
.align 4	::	file_69B134:	.import TEMP+"/69B134.msg"
.align 4	::	file_69C8FC:	.import TEMP+"/69C8FC.msg"
.align 4	::	file_69C9F4:	.import TEMP+"/69C9F4.msg"
.align 4	::	file_69CF44:	.import TEMP+"/69CF44.msg"
.align 4	::	file_69D020:	.import TEMP+"/69D020.msg"
.align 4	::	file_69D8D4:	.import TEMP+"/69D8D4.msg"
.align 4	::	file_69E088:	.import TEMP+"/69E088.msg"
.align 4	::	file_69E12C:	.import TEMP+"/69E12C.msg"
.align 4	::	file_69E5A8:	.import TEMP+"/69E5A8.msg"
.align 4	::	file_69E61C:	.import TEMP+"/69E61C.msg"
.align 4	::	file_69E6BC:	.import TEMP+"/69E6BC.msg"
.align 4	::	file_69E708:	.import TEMP+"/69E708.msg"
.align 4	::	file_69EA0C:	.import TEMP+"/69EA0C.msg"
.align 4	::	file_69EF48:	.import TEMP+"/69EF48.msg"
.align 4	::	file_69F11C:	.import TEMP+"/69F11C.msg"
.align 4	::	file_69F220:	.import TEMP+"/69F220.msg"
.align 4	::	file_6A0640:	.import TEMP+"/6A0640.msg"
.align 4	::	file_6A207C:	.import TEMP+"/6A207C.msg"
.align 4	::	file_6A2184:	.import TEMP+"/6A2184.msg"
.align 4	::	file_6A26C8:	.import TEMP+"/6A26C8.msg"
.align 4	::	file_6A276C:	.import TEMP+"/6A276C.msg"
.align 4	::	file_6A2FBC:	.import TEMP+"/6A2FBC.msg"
.align 4	::	file_6A383C:	.import TEMP+"/6A383C.msg"
.align 4	::	file_6A38E8:	.import TEMP+"/6A38E8.msg"
.align 4	::	file_6A3D48:	.import TEMP+"/6A3D48.msg"
.align 4	::	file_6A3DD0:	.import TEMP+"/6A3DD0.msg"
.align 4	::	file_6A4BF0:	.import TEMP+"/6A4BF0.msg"
.align 4	::	file_6A4CC8:	.import TEMP+"/6A4CC8.msg"
.align 4	::	file_6A504C:	.import TEMP+"/6A504C.msg"
.align 4	::	file_6A5578:	.import TEMP+"/6A5578.msg"
.align 4	::	file_6A570C:	.import TEMP+"/6A570C.msg"
.align 4	::	file_6A5814:	.import TEMP+"/6A5814.msg"
.align 4	::	file_6A6C64:	.import TEMP+"/6A6C64.msg"
.align 4	::	file_6A8A08:	.import TEMP+"/6A8A08.msg"
.align 4	::	file_6A8ADC:	.import TEMP+"/6A8ADC.msg"
.align 4	::	file_6A907C:	.import TEMP+"/6A907C.msg"
.align 4	::	file_6A911C:	.import TEMP+"/6A911C.msg"
.align 4	::	file_6A9970:	.import TEMP+"/6A9970.msg"
.align 4	::	file_6AA1A0:	.import TEMP+"/6AA1A0.msg"
.align 4	::	file_6AA214:	.import TEMP+"/6AA214.msg"
.align 4	::	file_6AA6A0:	.import TEMP+"/6AA6A0.msg"
.align 4	::	file_6AA730:	.import TEMP+"/6AA730.msg"
.align 4	::	file_6AAB08:	.import TEMP+"/6AAB08.msg"
.align 4	::	file_6AAB54:	.import TEMP+"/6AAB54.msg"
.align 4	::	file_6AAEB0:	.import TEMP+"/6AAEB0.msg"
.align 4	::	file_6AB458:	.import TEMP+"/6AB458.msg"
.align 4	::	file_6AB600:	.import TEMP+"/6AB600.msg"
.align 4	::	file_6AB70C:	.import TEMP+"/6AB70C.msg"
.align 4	::	file_6ACCA8:	.import TEMP+"/6ACCA8.msg"
.align 4	::	file_6AE758:	.import TEMP+"/6AE758.msg"
.align 4	::	file_6AE834:	.import TEMP+"/6AE834.msg"
.align 4	::	file_6AED8C:	.import TEMP+"/6AED8C.msg"
.align 4	::	file_6AEE68:	.import TEMP+"/6AEE68.msg"
//.align 4	::	file_6AF6C8:	.import TEMP+"/6BB2A4.msg"	// DUPE
//.align 4	::	file_6AFF1C:	.import TEMP+"/6BBAF8.msg"	// DUPE
//.align 4	::	file_6AFFE0:	.import TEMP+"/6BBBBC.msg"	// DUPE
//.align 4	::	file_6B0458:	.import TEMP+"/6BC034.msg"	// DUPE
//.align 4	::	file_6B04EC:	.import TEMP+"/6BC0C8.msg"	// DUPE
//.align 4	::	file_6B071C:	.import TEMP+"/6BC2F8.msg"	// DUPE
//.align 4	::	file_6B0768:	.import TEMP+"/6BC344.msg"	// DUPE
//.align 4	::	file_6B0B70:	.import TEMP+"/6BC74C.msg"	// DUPE
//.align 4	::	file_6B10F4:	.import TEMP+"/6BCCD0.msg"	// DUPE
//.align 4	::	file_6B12D8:	.import TEMP+"/6BCEB4.msg"	// DUPE
//.align 4	::	file_6B13E0:	.import TEMP+"/6BCFBC.msg"	// DUPE
//.align 4	::	file_6B2950:	.import TEMP+"/6BE52C.msg"	// DUPE
//.align 4	::	file_6B4374:	.import TEMP+"/6BFF50.msg"	// DUPE
//.align 4	::	file_6B4470:	.import TEMP+"/6C004C.msg"	// DUPE
//.align 4	::	file_6B4920:	.import TEMP+"/6C04FC.msg"	// DUPE
//.align 4	::	file_6B49E8:	.import TEMP+"/6C05C4.msg"	// DUPE
.align 4	::	file_6B525C:	.import TEMP+"/6B525C.msg"
.align 4	::	file_6B5A70:	.import TEMP+"/6B5A70.msg"
.align 4	::	file_6B5B1C:	.import TEMP+"/6B5B1C.msg"
.align 4	::	file_6B5FB0:	.import TEMP+"/6B5FB0.msg"
.align 4	::	file_6B6050:	.import TEMP+"/6B6050.msg"
.align 4	::	file_6B60F0:	.import TEMP+"/6B60F0.msg"
.align 4	::	file_6B613C:	.import TEMP+"/6B613C.msg"
.align 4	::	file_6B6474:	.import TEMP+"/6B6474.msg"
.align 4	::	file_6B69A0:	.import TEMP+"/6B69A0.msg"
.align 4	::	file_6B6B98:	.import TEMP+"/6B6B98.msg"
.align 4	::	file_6B6CA4:	.import TEMP+"/6B6CA4.msg"
.align 4	::	file_6B8478:	.import TEMP+"/6B8478.msg"
.align 4	::	file_6BA2BC:	.import TEMP+"/6BA2BC.msg"
.align 4	::	file_6BA3AC:	.import TEMP+"/6BA3AC.msg"
.align 4	::	file_6BA910:	.import TEMP+"/6BA910.msg"
.align 4	::	file_6BA9F8:	.import TEMP+"/6BA9F8.msg"
.align 4	::	file_6BB2A4:	.import TEMP+"/6BB2A4.msg"
.align 4	::	file_6BBAF8:	.import TEMP+"/6BBAF8.msg"
.align 4	::	file_6BBBBC:	.import TEMP+"/6BBBBC.msg"
.align 4	::	file_6BC034:	.import TEMP+"/6BC034.msg"
.align 4	::	file_6BC0C8:	.import TEMP+"/6BC0C8.msg"
.align 4	::	file_6BC2F8:	.import TEMP+"/6BC2F8.msg"
.align 4	::	file_6BC344:	.import TEMP+"/6BC344.msg"
.align 4	::	file_6BC74C:	.import TEMP+"/6BC74C.msg"
.align 4	::	file_6BCCD0:	.import TEMP+"/6BCCD0.msg"
.align 4	::	file_6BCEB4:	.import TEMP+"/6BCEB4.msg"
.align 4	::	file_6BCFBC:	.import TEMP+"/6BCFBC.msg"
.align 4	::	file_6BE52C:	.import TEMP+"/6BE52C.msg"
.align 4	::	file_6BFF50:	.import TEMP+"/6BFF50.msg"
.align 4	::	file_6C004C:	.import TEMP+"/6C004C.msg"
.align 4	::	file_6C04FC:	.import TEMP+"/6C04FC.msg"
.align 4	::	file_6C05C4:	.import TEMP+"/6C05C4.msg"
.align 4	::	file_6C0E38:	.import TEMP+"/6C0E38.msg"
.align 4	::	file_6C167C:	.import TEMP+"/6C167C.msg"
.align 4	::	file_6C1710:	.import TEMP+"/6C1710.msg"
.align 4	::	file_6C1B84:	.import TEMP+"/6C1B84.msg"
.align 4	::	file_6C1BFC:	.import TEMP+"/6C1BFC.msg"
.align 4	::	file_6C231C:	.import TEMP+"/6C231C.msg"
.align 4	::	file_6C2368:	.import TEMP+"/6C2368.msg"
.align 4	::	file_6C2660:	.import TEMP+"/6C2660.msg"
.align 4	::	file_6C2B8C:	.import TEMP+"/6C2B8C.msg"
.align 4	::	file_6C2D3C:	.import TEMP+"/6C2D3C.msg"
.align 4	::	file_6C2E4C:	.import TEMP+"/6C2E4C.msg"
.align 4	::	file_6C40AC:	.import TEMP+"/6C40AC.msg"
.align 4	::	file_6C5994:	.import TEMP+"/6C5994.msg"
.align 4	::	file_6C5A88:	.import TEMP+"/6C5A88.msg"
.align 4	::	file_6C5F28:	.import TEMP+"/6C5F28.msg"
.align 4	::	file_6C5FCC:	.import TEMP+"/6C5FCC.msg"
.align 4	::	file_6C6828:	.import TEMP+"/6C6828.msg"
.align 4	::	file_6C7084:	.import TEMP+"/6C7084.msg"
.align 4	::	file_6C7128:	.import TEMP+"/6C7128.msg"
.align 4	::	file_6C7594:	.import TEMP+"/6C7594.msg"
.align 4	::	file_6C7608:	.import TEMP+"/6C7608.msg"
.align 4	::	file_6C79E8:	.import TEMP+"/6C79E8.msg"
.align 4	::	file_6C7A34:	.import TEMP+"/6C7A34.msg"
.align 4	::	file_6C7D04:	.import TEMP+"/6C7D04.msg"
.align 4	::	file_6C8230:	.import TEMP+"/6C8230.msg"
.align 4	::	file_6C83BC:	.import TEMP+"/6C83BC.msg"
.align 4	::	file_6C84C8:	.import TEMP+"/6C84C8.msg"
.align 4	::	file_6C982C:	.import TEMP+"/6C982C.msg"
.align 4	::	file_6CB080:	.import TEMP+"/6CB080.msg"
.align 4	::	file_6CB184:	.import TEMP+"/6CB184.msg"
.align 4	::	file_6CB6C0:	.import TEMP+"/6CB6C0.msg"
.align 4	::	file_6CB75C:	.import TEMP+"/6CB75C.msg"
.align 4	::	file_6CBFC0:	.import TEMP+"/6CBFC0.msg"
.align 4	::	file_6CC808:	.import TEMP+"/6CC808.msg"
.align 4	::	file_6CC8D0:	.import TEMP+"/6CC8D0.msg"
.align 4	::	file_6CCD40:	.import TEMP+"/6CCD40.msg"
.align 4	::	file_6CCDC0:	.import TEMP+"/6CCDC0.msg"
.align 4	::	file_6CD068:	.import TEMP+"/6CD068.msg"
.align 4	::	file_6CD0B4:	.import TEMP+"/6CD0B4.msg"
.align 4	::	file_6CD48C:	.import TEMP+"/6CD48C.msg"
.align 4	::	file_6CD9E4:	.import TEMP+"/6CD9E4.msg"
.align 4	::	file_6CDBC8:	.import TEMP+"/6CDBC8.msg"
.align 4	::	file_6CDCD0:	.import TEMP+"/6CDCD0.msg"
.align 4	::	file_6CF0A0:	.import TEMP+"/6CF0A0.msg"
.align 4	::	file_6D0A08:	.import TEMP+"/6D0A08.msg"
.align 4	::	file_6D0ADC:	.import TEMP+"/6D0ADC.msg"
.align 4	::	file_6D1068:	.import TEMP+"/6D1068.msg"
.align 4	::	file_6D10F0:	.import TEMP+"/6D10F0.msg"
.align 4	::	file_6D1984:	.import TEMP+"/6D1984.msg"
.align 4	::	file_6D2180:	.import TEMP+"/6D2180.msg"
.align 4	::	file_6D2230:	.import TEMP+"/6D2230.msg"
.align 4	::	file_6D26A0:	.import TEMP+"/6D26A0.msg"
.align 4	::	file_6D2700:	.import TEMP+"/6D2700.msg"
.align 4	::	file_6D27A0:	.import TEMP+"/6D27A0.msg"
.align 4	::	file_6D27EC:	.import TEMP+"/6D27EC.msg"
.align 4	::	file_6D2B34:	.import TEMP+"/6D2B34.msg"
.align 4	::	file_6D3050:	.import TEMP+"/6D3050.msg"
.align 4	::	file_6D31E4:	.import TEMP+"/6D31E4.msg"
.align 4	::	file_6D32EC:	.import TEMP+"/6D32EC.msg"
.align 4	::	file_6D44D4:	.import TEMP+"/6D44D4.msg"
.align 4	::	file_6D59B8:	.import TEMP+"/6D59B8.msg"
.align 4	::	file_6D5A9C:	.import TEMP+"/6D5A9C.msg"
.align 4	::	file_6D5EB0:	.import TEMP+"/6D5EB0.msg"
.align 4	::	file_6D5F34:	.import TEMP+"/6D5F34.msg"
.align 4	::	file_6D6780:	.import	ROM_IN,0x6D6780,0xF0
.align 4	::	file_6D6870:	.import	ROM_IN,0x6D6870,0x20
.align 4	::	file_6D6890:	.import	ROM_IN,0x6D6890,0x160
.align 4	::	file_6D69F0:	.import	ROM_IN,0x6D69F0,0x144
.align 4	::	file_6D6B34:	.import	ROM_IN,0x6D6B34,0x28
.align 4	::	file_6D6B5C:	.import	ROM_IN,0x6D6B5C,0x162C
.align 4	::	file_6D8188:	.import	TEMP+"/6D8188.lz"
.align 4	::	file_6D8620:	.import	ROM_IN,0x6D8620,0x40C
.align 4	::	file_6D8A2C:	.import	ROM_IN,0x6D8A2C,0x12C8
.align 4	::	file_6D9CF4:	.import	ROM_IN,0x6D9CF4,0x1AC
.align 4	::	file_6D9EA0:	.import	ROM_IN,0x6D9EA0,0x20
.align 4	::	file_6D9EC0:	.import TEMP+"/6D9EC0.msg"
.align 4	::	file_6D9EF4:	.import	ROM_IN,0x6D9EF4,0x100
.align 4	::	file_6D9FF4:	.import	ROM_IN,0x6D9FF4,0x24
.align 4	::	file_6DA018:	.import	ROM_IN,0x6DA018,0x54
.align 4	::	file_6DA06C:	.import	ROM_IN,0x6DA06C,0x1B0
.align 4	::	file_6DA21C:	.import TEMP+"/6DA21C.msg"
.align 4	::	file_6DC54C:	.import	ROM_IN,0x6DC54C,0x1FC
.align 4	::	file_6DC748:	.import	ROM_IN,0x6DC748,0x1C
.align 4	::	file_6DC764:	.import	ROM_IN,0x6DC764,0xB0
.align 4	::	file_6DC814:	.import	ROM_IN,0x6DC814,0xBC
.align 4	::	file_6DC8D0:	.import	ROM_IN,0x6DC8D0,0xCC
.align 4	::	file_6DC99C:	.import	ROM_IN,0x6DC99C,0xD8
.align 4	::	file_6DCA74:	.import	ROM_IN,0x6DCA74,0xDC
.align 4	::	file_6DCB50:	.import	ROM_IN,0x6DCB50,0xDC
.align 4	::	file_6DCC2C:	.import	ROM_IN,0x6DCC2C,0xDC
.align 4	::	file_6DCD08:	.import	ROM_IN,0x6DCD08,0x330
.align 4	::	file_6DD038:	.import	ROM_IN,0x6DD038,0x1C
.align 4	::	file_6DD054:	.import	ROM_IN,0x6DD054,0x2C
.align 4	::	file_6DD080:	.import	ROM_IN,0x6DD080,0x14
.align 4	::	file_6DD094:	.import	ROM_IN,0x6DD094,0x24
.align 4	::	file_6DD0B8:	.import TEMP+"/6DD0B8.msg"
.align 4	::	file_6DD63C:	.import TEMP+"/6DD63C.msg"
.align 4	::	file_6DD718:	.import TEMP+"/6DD718.msg"
.align 4	::	file_6DD798:	.import TEMP+"/6DD798.msg"
.align 4	::	file_6DD804:	.import TEMP+"/6DD804.msg"
.align 4	::	file_6DD864:	.import TEMP+"/6DD864.msg"
.align 4	::	file_6DD91C:	.import TEMP+"/6DD91C.msg"
.align 4	::	file_6DD9AC:	.import TEMP+"/6DD9AC.msg"
.align 4	::	file_6DE2C8:	.import TEMP+"/6DE2C8.msg"
.align 4	::	file_6DE3E0:	.import TEMP+"/6DE3E0.msg"
.align 4	::	file_6DED88:	.import TEMP+"/6DED88.msg"
.align 4	::	file_6DF988:	.import TEMP+"/6DF988.msg"
.align 4	::	file_6E01AC:	.import TEMP+"/6E01AC.msg"
.align 4	::	file_6E09D8:	.import	ROM_IN,0x6E09D8,0x690
.align 4	::	file_6E1068:	.import TEMP+"/6E1068.msg"
.align 4	::	file_6E12DC:	.import TEMP+"/6E12DC.msg"
.align 4	::	file_6E1554:	.import TEMP+"/6E1554.msg"
.align 4	::	file_6E17CC:	.import TEMP+"/6E17CC.msg"
.align 4	::	file_6E1A48:	.import TEMP+"/6E1A48.msg"
.align 4	::	file_6E1CC0:	.import TEMP+"/6E1CC0.msg"
.align 4	::	file_6E1F38:	.import TEMP+"/6E1F38.msg"
.align 4	::	file_6E21B0:	.import TEMP+"/6E21B0.msg"
.align 4	::	file_6E2428:	.import TEMP+"/6E2428.msg"
.align 4	::	file_6E26A0:	.import TEMP+"/6E26A0.msg"
.align 4	::	file_6E2914:	.import TEMP+"/6E2914.msg"
.align 4	::	file_6E2B9C:	.import TEMP+"/6E2B9C.msg"
.align 4	::	file_6E2E18:	.import TEMP+"/6E2E18.msg"
.align 4	::	file_6E308C:	.import TEMP+"/6E308C.msg"
.align 4	::	file_6E32FC:	.import TEMP+"/6E32FC.msg"
.align 4	::	file_6E3574:	.import TEMP+"/6E3574.msg"
.align 4	::	file_6E37EC:	.import TEMP+"/6E37EC.msg"
.align 4	::	file_6E3A64:	.import TEMP+"/6E3A64.msg"
.align 4	::	file_6E3CD8:	.import TEMP+"/6E3CD8.msg"
.align 4	::	file_6E3F4C:	.import TEMP+"/6E3F4C.msg"
.align 4	::	file_6E41C4:	.import TEMP+"/6E41C4.msg"
.align 4	::	file_6E443C:	.import	TEMP+"/6E443C.img.lz"
.align 4	::	file_6E540C:	.import	TEMP+"/6E540C.pal.lz"
.align 4	::	file_6E5480:	.import	TEMP+"/6E5480.map.lz"
.align 4	::	file_6E5518:	.import	TEMP+"/6E5518.map.lz"
.align 4	::	file_6E55B0:	.import	TEMP+"/6E55B0.map.lz"
.align 4	::	file_6E5648:	.import	TEMP+"/6E5648.map.lz"
.align 4	::	file_6E56F4:	.import	TEMP+"/6E56F4.map.lz"
.align 4	::	file_6E57AC:	.import	ROM_IN,0x6E57AC,0xAC
.align 4	::	file_6E5858:	.import	ROM_IN,0x6E5858,0xBC
.align 4	::	file_6E5914:	.import	ROM_IN,0x6E5914,0xC0
.align 4	::	file_6E59D4:	.import	ROM_IN,0x6E59D4,0xC0
.align 4	::	file_6E5A94:	.import	ROM_IN,0x6E5A94,0xC0
.align 4	::	file_6E5B54:	.import	ROM_IN,0x6E5B54,0xC0
.align 4	::	file_6E5C14:	.import	ROM_IN,0x6E5C14,0xC0
.align 4	::	file_6E5CD4:	.import	TEMP+"/6E5CD4.img.lz"
.align 4	::	file_6E6EB8:	.import	ROM_IN,0x6E6EB8,0x94
.align 4	::	file_6E6F4C:	.import	TEMP+"/6E6F4C.map.lz"
.align 4	::	file_6E70D0:	.import	TEMP+"/6E70D0.map.lz"
.align 4	::	file_6E7254:	.import	TEMP+"/6E7254.map.lz"
.align 4	::	file_6E73D8:	.import	TEMP+"/6E73D8.map.lz"
.align 4	::	file_6E7590:	.import	TEMP+"/6E7590.map.lz"
.align 4	::	file_6E7754:	.import	ROM_IN,0x6E7754,0x50C
.align 4	::	file_6E7C60:	.import	ROM_IN,0x6E7C60,0x4C
.align 4	::	file_6E7CAC:	.import	ROM_IN,0x6E7CAC,0x1BC
.align 4	::	file_6E7E68:	.import	ROM_IN,0x6E7E68,0x50C
.align 4	::	file_6E8374:	.import	ROM_IN,0x6E8374,0x4C
.align 4	::	file_6E83C0:	.import	ROM_IN,0x6E83C0,0x50C
.align 4	::	file_6E88CC:	.import	ROM_IN,0x6E88CC,0x4C
.align 4	::	file_6E8918:	.import	ROM_IN,0x6E8918,0x50C
.align 4	::	file_6E8E24:	.import	ROM_IN,0x6E8E24,0x4C
.align 4	::	file_6E8E70:	.import	ROM_IN,0x6E8E70,0x50C
.align 4	::	file_6E937C:	.import	ROM_IN,0x6E937C,0x4C
.align 4	::	file_6E93C8:	.import TEMP+"/6E93C8.msg"
.align 4	::	file_6EAD18:	.import TEMP+"/6EAD18.msg"
.align 4	::	file_6EDC88:	.import	ROM_IN,0x6EDC88,0xBFC
.align 4	::	file_6EE884:	.import	ROM_IN,0x6EE884,0xBC
.align 4	::	file_6EE940:	.import	ROM_IN,0x6EE940,0xF8
.align 4	::	file_6EEA38:	.import	ROM_IN,0x6EEA38,0x7A8
.align 4	::	file_6EF1E0:	.import	ROM_IN,0x6EF1E0,0x8C
.align 4	::	file_6EF26C:	.import	ROM_IN,0x6EF26C,0xF0
.align 4	::	file_6EF35C:	.import	ROM_IN,0x6EF35C,0xD6C
.align 4	::	file_6F00C8:	.import	ROM_IN,0x6F00C8,0x88
.align 4	::	file_6F0150:	.import	ROM_IN,0x6F0150,0xFC
.align 4	::	file_6F024C:	.import	ROM_IN,0x6F024C,0xD40
.align 4	::	file_6F0F8C:	.import	ROM_IN,0x6F0F8C,0x88
.align 4	::	file_6F1014:	.import	ROM_IN,0x6F1014,0xFC
.align 4	::	file_6F1110:	.import	ROM_IN,0x6F1110,0x394
.align 4	::	file_6F14A4:	.import	ROM_IN,0x6F14A4,0x54
.align 4	::	file_6F14F8:	.import	ROM_IN,0x6F14F8,0xB4
.align 4	::	file_6F15AC:	.import	ROM_IN,0x6F15AC,0xB4
.align 4	::	file_6F1660:	.import	TEMP+"/6F1660.img.lz"
.align 4	::	file_6F189C:	.import	ROM_IN,0x6F189C,0x18
.align 4	::	file_6F18B4:	.import	TEMP+"/6F18B4.map.lz"
.align 4	::	file_6F1904:	.import	ROM_IN,0x6F1904,0x2FC
.align 4	::	file_6F1C00:	.import	ROM_IN,0x6F1C00,0x30
.align 4	::	file_6F1C30:	.import	ROM_IN,0x6F1C30,0x188
.align 4	::	file_6F1DB8:	.import	ROM_IN,0x6F1DB8,0x74
.align 4	::	file_6F1E2C:	.import	ROM_IN,0x6F1E2C,0x20
.align 4	::	file_6F1E4C:	.import	ROM_IN,0x6F1E4C,0x1490
.align 4	::	file_6F32DC:	.import	ROM_IN,0x6F32DC,0x180
.align 4	::	file_6F345C:	.import	ROM_IN,0x6F345C,0x47C
.align 4	::	file_6F38D8:	.import	ROM_IN,0x6F38D8,0x6D4
.align 4	::	file_6F3FAC:	.import	ROM_IN,0x6F3FAC,0x44
.align 4	::	file_6F3FF0:	.import	ROM_IN,0x6F3FF0,0x138
.align 4	::	file_6F4128:	.import	ROM_IN,0x6F4128,0x20
.align 4	::	file_6F4148:	.import	ROM_IN,0x6F4148,0x20
.align 4	::	file_6F4168:	.import	ROM_IN,0x6F4168,0x20
.align 4	::	file_6F4188:	.import	ROM_IN,0x6F4188,0x20
.align 4	::	file_6F41A8:	.import	ROM_IN,0x6F41A8,0x20
.align 4	::	file_6F41C8:	.import	ROM_IN,0x6F41C8,0x20
.align 4	::	file_6F41E8:	.import	ROM_IN,0x6F41E8,0x20
.align 4	::	file_6F4208:	.import	ROM_IN,0x6F4208,0x20
.align 4	::	file_6F4228:	.import	ROM_IN,0x6F4228,0x20
.align 4	::	file_6F4248:	.import	ROM_IN,0x6F4248,0x20
.align 4	::	file_6F4268:	.import	ROM_IN,0x6F4268,0x20
.align 4	::	file_6F4288:	.import	ROM_IN,0x6F4288,0x20
.align 4	::	file_6F42A8:	.import	ROM_IN,0x6F42A8,0x20
.align 4	::	file_6F42C8:	.import	ROM_IN,0x6F42C8,0x4
.align 4	::	file_6F42CC:	.import	ROM_IN,0x6F42CC,0x20
.align 4	::	file_6F42EC:	.import	ROM_IN,0x6F42EC,0x20
.align 4	::	file_6F430C:	.import	ROM_IN,0x6F430C,0x264
.align 4	::	file_6F4570:	.import	ROM_IN,0x6F4570,0x20
.align 4	::	file_6F4590:	.import	ROM_IN,0x6F4590,0x20
.align 4	::	file_6F45B0:	.import	ROM_IN,0x6F45B0,0x20
.align 4	::	file_6F45D0:	.import	ROM_IN,0x6F45D0,0x20
.align 4	::	file_6F45F0:	.import	ROM_IN,0x6F45F0,0x20
.align 4	::	file_6F4610:	.import	ROM_IN,0x6F4610,0x20
.align 4	::	file_6F4630:	.import	ROM_IN,0x6F4630,0x20
.align 4	::	file_6F4650:	.import	ROM_IN,0x6F4650,0x20
.align 4	::	file_6F4670:	.import	ROM_IN,0x6F4670,0x20
.align 4	::	file_6F4690:	.import	ROM_IN,0x6F4690,0x20
.align 4	::	file_6F46B0:	.import	ROM_IN,0x6F46B0,0x20
.align 4	::	file_6F46D0:	.import	ROM_IN,0x6F46D0,0x20
.align 4	::	file_6F46F0:	.import	ROM_IN,0x6F46F0,0x4B0
.align 4	::	file_6F4BA0:	.import	ROM_IN,0x6F4BA0,0x4B0
.align 4	::	file_6F5050:	.import	ROM_IN,0x6F5050,0x4B0
.align 4	::	file_6F5500:	.import	ROM_IN,0x6F5500,0xA0
.align 4	::	file_6F55A0:	.import	ROM_IN,0x6F55A0,0x20
.align 4	::	file_6F55C0:	.import	ROM_IN,0x6F55C0,0x20
.align 4	::	file_6F55E0:	.import	ROM_IN,0x6F55E0,0xB0
.align 4	::	file_6F5690:	.import	ROM_IN,0x6F5690,0x28
.align 4	::	file_6F56B8:	.import TEMP+"/6F56B8.msg"
.align 4	::	file_6F59F8:	.import TEMP+"/6F59F8.msg"
.align 4	::	file_6F5D38:	.import TEMP+"/6F5D38.msg"
.align 4	::	file_6F605C:	.import TEMP+"/6F605C.msg"
.align 4	::	file_6F63A8:	.import TEMP+"/6F63A8.msg"
.align 4	::	file_6F66C8:	.import TEMP+"/6F66C8.msg"
.align 4	::	file_6F6A04:	.import TEMP+"/6F6A04.msg"
.align 4	::	file_6F6D5C:	.import TEMP+"/6F6D5C.msg"
.align 4	::	file_6F7084:	.import TEMP+"/6F7084.msg"
.align 4	::	file_6F73C4:	.import TEMP+"/6F73C4.msg"
.align 4	::	file_6F76FC:	.import TEMP+"/6F76FC.msg"
.align 4	::	file_6F7A04:	.import TEMP+"/6F7A04.msg"
.align 4	::	file_6F7D10:	.import TEMP+"/6F7D10.msg"
.align 4	::	file_6F8018:	.import TEMP+"/6F8018.msg"
.align 4	::	file_6F8344:	.import TEMP+"/6F8344.msg"
.align 4	::	file_6F8698:	.import TEMP+"/6F8698.msg"
.align 4	::	file_6F89D0:	.import TEMP+"/6F89D0.msg"
.align 4	::	file_6F8D00:	.import TEMP+"/6F8D00.msg"
.align 4	::	file_6F9038:	.import TEMP+"/6F9038.msg"
.align 4	::	file_6F9358:	.import TEMP+"/6F9358.msg"
.align 4	::	file_6F9698:	.import TEMP+"/6F9698.msg"
.align 4	::	file_6F99AC:	.import	ROM_IN,0x6F99AC,0x188
.align 4	::	file_6F9B34:	.import	ROM_IN,0x6F9B34,0x18
.align 4	::	file_6F9B4C:	.import TEMP+"/6F9B4C.msg"
.align 4	::	file_6F9CA8:	.import TEMP+"/6F9CA8.msg"
.align 4	::	file_6F9E00:	.import TEMP+"/6F9E00.msg"
.align 4	::	file_6F9F5C:	.import TEMP+"/6F9F5C.msg"
.align 4	::	file_6FA0B8:	.import TEMP+"/6FA0B8.msg"
.align 4	::	file_6FA228:	.import TEMP+"/6FA228.msg"
.align 4	::	file_6FA388:	.import TEMP+"/6FA388.msg"
.align 4	::	file_6FA4E4:	.import TEMP+"/6FA4E4.msg"
.align 4	::	file_6FA654:	.import TEMP+"/6FA654.msg"
.align 4	::	file_6FA7B8:	.import TEMP+"/6FA7B8.msg"
.align 4	::	file_6FA910:	.import TEMP+"/6FA910.msg"
.align 4	::	file_6FAA80:	.import TEMP+"/6FAA80.msg"
.align 4	::	file_6FABEC:	.import TEMP+"/6FABEC.msg"
.align 4	::	file_6FAD44:	.import TEMP+"/6FAD44.msg"
.align 4	::	file_6FAEA0:	.import TEMP+"/6FAEA0.msg"
.align 4	::	file_6FB000:	.import TEMP+"/6FB000.msg"
.align 4	::	file_6FB164:	.import TEMP+"/6FB164.msg"
.align 4	::	file_6FB2C4:	.import TEMP+"/6FB2C4.msg"
.align 4	::	file_6FB41C:	.import TEMP+"/6FB41C.msg"
.align 4	::	file_6FB574:	.import TEMP+"/6FB574.msg"
.align 4	::	file_6FB6D4:	.import TEMP+"/6FB6D4.msg"
.align 4	::	file_6FB82C:	.import	TEMP+"/6FB82C.img.lz"
.align 4	::	file_6FBC38:	.import	ROM_IN,0x6FBC38,0x30
.align 4	::	file_6FBC68:	.import	TEMP+"/6FBC68.map.lz"
.align 4	::	file_6FBDAC:	.import	TEMP+"/6FBDAC.map.lz"
.align 4	::	file_6FBDD8:	.import	TEMP+"/6FBDD8.map.lz"
.align 4	::	file_6FBE08:	.import	TEMP+"/6FBE08.map.lz"
.align 4	::	file_6FBE38:	.import	TEMP+"/6FBE38.map.lz"
.align 4	::	file_6FBE68:	.import	TEMP+"/6FBE68.img.lz"
.align 4	::	file_6FC0E0:	.import	ROM_IN,0x6FC0E0,0x20
.align 4	::	file_6FC100:	.import	TEMP+"/6FC100.map.lz"
.align 4	::	file_6FC178:	.import	ROM_IN,0x6FC178,0x23C
.align 4	::	file_6FC3B4:	.import	ROM_IN,0x6FC3B4,0x1A0
.align 4	::	file_6FC554:	.import	ROM_IN,0x6FC554,0x20
.align 4	::	file_6FC574:	.import	ROM_IN,0x6FC574,0x20
.align 4	::	file_6FC594:	.import	ROM_IN,0x6FC594,0x20
.align 4	::	file_6FC5B4:	.import	ROM_IN,0x6FC5B4,0x20
.align 4	::	file_6FC5D4:	.import	ROM_IN,0x6FC5D4,0x20
.align 4	::	file_6FC5F4:	.import	ROM_IN,0x6FC5F4,0x20
.align 4	::	file_6FC614:	.import	ROM_IN,0x6FC614,0xA4
.align 4	::	file_6FC6B8:	.import	ROM_IN,0x6FC6B8,0x30
.align 4	::	file_6FC6E8:	.import	ROM_IN,0x6FC6E8,0xB4
.align 4	::	file_6FC79C:	.import	ROM_IN,0x6FC79C,0x108
.align 4	::	file_6FC8A4:	.import	ROM_IN,0x6FC8A4,0x20
.align 4	::	file_6FC8C4:	.import	ROM_IN,0x6FC8C4,0x7C
.align 4	::	file_6FC940:	.import	ROM_IN,0x6FC940,0x70
.align 4	::	file_6FC9B0:	.import	ROM_IN,0x6FC9B0,0x64
.align 4	::	file_6FCA14:	.import	TEMP+"/6FCA14.img.lz"
.align 4	::	file_6FCD34:	.import	ROM_IN,0x6FCD34,0x20
.align 4	::	file_6FCD54:	.import	TEMP+"/6FCD54.map.lz"
.align 4	::	file_6FCDEC:	.import	ROM_IN,0x6FCDEC,0x720
.align 4	::	file_6FD50C:	.import	ROM_IN,0x6FD50C,0x20
.align 4	::	file_6FD52C:	.import	ROM_IN,0x6FD52C,0x4B0
.align 4	::	file_6FD9DC:	.import	ROM_IN,0x6FD9DC,0x178
.align 4	::	file_6FDB54:	.import	ROM_IN,0x6FDB54,0x7F8
.align 4	::	file_6FE34C:	.import	ROM_IN,0x6FE34C,0x1B0
.align 4	::	file_6FE4FC:	.import	ROM_IN,0x6FE4FC,0x1B0
.align 4	::	file_6FE6AC:	.import	ROM_IN,0x6FE6AC,0x228
.align 4	::	file_6FE8D4:	.import TEMP+"/6FE8D4.msg"
.align 4	::	file_6FEF5C:	.import	ROM_IN,0x6FEF5C,0x41C
.align 4	::	file_6FF378:	.import TEMP+"/6FF378.img.lz"
.align 4	::	file_6FF604:	.import	ROM_IN,0x6FF604,0xB4
.align 4	::	file_6FF6B8:	.import	ROM_IN,0x6FF6B8,0x20
.align 4	::	file_6FF6D8:	.import	ROM_IN,0x6FF6D8,0x4B0
.align 4	::	file_6FFB88:	.import	ROM_IN,0x6FFB88,0x1E0
.align 4	::	file_6FFD68:	.import TEMP+"/6FFD68.map.bin"
.align 4	::	file_6FFDAC:	.import TEMP+"/6FFDAC.map.bin"
.align 4	::	file_6FFDF0:	.import	ROM_IN,0x6FFDF0,0x180
.align 4	::	file_6FFF70:	.import	ROM_IN,0x6FFF70,0xAC
.align 4	::	file_70001C:	.import	ROM_IN,0x70001C,0x90
.align 4	::	file_7000AC:	.import TEMP+"/7000AC.msg"
.align 4	::	file_700F6C:	.import TEMP+"/700F6C.msg"
.align 4	::	file_7011F0:	.import TEMP+"/7011F0.msg"
.align 4	::	file_701C94:	.import TEMP+"/701C94.msg"
.align 4	::	file_701ED8:	.import TEMP+"/701ED8.msg"
.align 4	::	file_70272C:	.import TEMP+"/70272C.msg"
.align 4	::	file_7028FC:	.import TEMP+"/7028FC.msg"
.align 4	::	file_703080:	.import TEMP+"/703080.msg"
//.align 4	::	file_70324C:	.import TEMP+"/70324C.msg"
//.align 4	::	file_7039B4:	.import TEMP+"/7039B4.msg"
//.align 4	::	file_703B88:	.import TEMP+"/703B88.msg"
//.align 4	::	file_7041C4:	.import TEMP+"/7041C4.msg"
.align 4	::	file_704368:	.import TEMP+"/704368.msg"
.align 4	::	file_704B70:	.import	ROM_IN,0x704B70,0x800
.align 4	::	file_705370:	.import	TEMP+"/705370.map.bin"
.align 4	::	file_705568:	.import	TEMP+"/705568.map.bin"
.align 4	::	file_7055C4:	.import	TEMP+"/7055C4.map.bin"
.align 4	::	file_705620:	.import	TEMP+"/705620.map.bin"
.align 4	::	file_70567C:	.import	TEMP+"/70567C.map.bin"
.align 4	::	file_7056D8:	.import	ROM_IN,0x7056D8,0x220
.align 4	::	file_7058F8:	.import	ROM_IN,0x7058F8,0x20
.align 4	::	file_705918:	.import	TEMP+"/705918.img.bin"
.align 4	::	file_705E38:	.import	ROM_IN,0x705E38,0x20
.align 4	::	file_705E58:	.import	TEMP+"/705E58.img.bin"
.align 4	::	file_706158:	.import	ROM_IN,0x706158,0x20
.align 4	::	file_706178:	.import	TEMP+"/706178.img.bin"
.align 4	::	file_706478:	.import	ROM_IN,0x706478,0x20
.align 4	::	file_706498:	.import TEMP+"/706498.msg"
.align 4	::	file_706C78:	.import TEMP+"/706C78.msg"
.align 4	::	file_707450:	.import TEMP+"/707450.msg"
.align 4	::	file_707C30:	.import TEMP+"/707C30.msg"
.align 4	::	file_70844C:	.import	ROM_IN,0x70844C,0x20
.align 4	::	file_70846C:	.import	ROM_IN,0x70846C,0x340
.align 4	::	file_7087AC:	.import	ROM_IN,0x7087AC,0x80
//.align 4	::	file_70882C:	.import	ROM_IN,0x70882C,0x7A0	// Old Sort Chip menu
.align 4	::	file_708FCC:	.import	ROM_IN,0x708FCC,0x20
.align 4	::	file_708FEC:	.import TEMP+"/708FEC.msg"
.align 4	::	file_708FF0:	.import TEMP+"/708FF0.msg"
.align 4	::	file_70904C:	.import TEMP+"/70904C.msg"
.align 4	::	file_709408:	.import TEMP+"/709408.msg"
.align 4	::	file_709704:	.import TEMP+"/709704.msg"
.align 4	::	file_7097D8:	.import TEMP+"/7097D8.msg"
.align 4	::	file_709A34:	.import TEMP+"/709A34.msg"
.align 4	::	file_709D88:	.import TEMP+"/709D88.msg"
//.align 4	::	file_709E94:	.import	ROM_IN,0x709E94,0x680	// BN3 E-mail mugs
.align 4	::	file_70A514:	.import	ROM_IN,0x70A514,0x500
.align 4	::	file_70AA14:	.import	TEMP+"/70AA14.img.bin"
.align 4	::	file_70ABD4:	.import	TEMP+"/70ABD4.dmp"
.align 4	::	file_70BC34:	.import	ROM_IN,0x70BC34,0x668
.align 4	::	file_70C29C:	.import	ROM_IN,0x70C29C,0x2B0
.align 4	::	file_70C54C:	.import	ROM_IN,0x70C54C,0x18
.align 4	::	file_70C564:	.import	ROM_IN,0x70C564,0x190
.align 4	::	file_70C6F4:	.import	ROM_IN,0x70C6F4,0x1C
.align 4	::	file_70C710:	.import	ROM_IN,0x70C710,0x64
.align 4	::	file_70C774:	.import	ROM_IN,0x70C774,0xE0
.align 4	::	file_70C854:	.import	ROM_IN,0x70C854,0x120
.align 4	::	file_70C974:	.import	ROM_IN,0x70C974,0xD8
.align 4	::	file_70CA4C:	.import	ROM_IN,0x70CA4C,0x14
.align 4	::	file_70CA60:	.import	ROM_IN,0x70CA60,0x54
.align 4	::	file_70CAB4:	.import	ROM_IN,0x70CAB4,0x6C
.align 4	::	file_70CB20:	.import	ROM_IN,0x70CB20,0x84
.align 4	::	file_70CBA4:	.import	ROM_IN,0x70CBA4,0x9C
.align 4	::	file_70CC40:	.import	ROM_IN,0x70CC40,0x80
.align 4	::	file_70CCC0:	.import	ROM_IN,0x70CCC0,0x15C4
.align 4	::	file_70E284:	.import	ROM_IN,0x70E284,0xD4
.align 4	::	file_70E358:	.import	ROM_IN,0x70E358,0xF0
.align 4	::	file_70E448:	.import	ROM_IN,0x70E448,0x688
.align 4	::	file_70EAD0:	.import	ROM_IN,0x70EAD0,0x58
.align 4	::	file_70EB28:	.import	ROM_IN,0x70EB28,0x1F0
.align 4	::	file_70ED18:	.import	ROM_IN,0x70ED18,0x20
.align 4	::	file_70ED38:	.import	ROM_IN,0x70ED38,0x20
.align 4	::	file_70ED58:	.import	ROM_IN,0x70ED58,0x20
.align 4	::	file_70ED78:	.import	ROM_IN,0x70ED78,0x80
.align 4	::	file_70EDF8:	.import	ROM_IN,0x70EDF8,0x80
.align 4	::	file_70EE78:	.import	ROM_IN,0x70EE78,0x20
.align 4	::	file_70EE98:	.import	ROM_IN,0x70EE98,0x20
.align 4	::	file_70EEB8:	.import	ROM_IN,0x70EEB8,0x200
.align 4	::	file_70F0B8:	.import	ROM_IN,0x70F0B8,0x200
.align 4	::	file_70F2B8:	.import	ROM_IN,0x70F2B8,0x20
.align 4	::	file_70F2D8:	.import	ROM_IN,0x70F2D8,0x40
.align 4	::	file_70F318:	.import	ROM_IN,0x70F318,0x20
.align 4	::	file_70F338:	.import	ROM_IN,0x70F338,0x20
.align 4	::	file_70F358:	.import	ROM_IN,0x70F358,0x20
.align 4	::	file_70F378:	.import	ROM_IN,0x70F378,0x60
.align 4	::	file_70F3D8:	.import	ROM_IN,0x70F3D8,0x140
.align 4	::	file_70F518:	.import	ROM_IN,0x70F518,0x40
.align 4	::	file_70F558:	.import	ROM_IN,0x70F558,0x40
.align 4	::	file_70F598:	.import	ROM_IN,0x70F598,0x20
.align 4	::	file_70F5B8:	.import	ROM_IN,0x70F5B8,0x20
.align 4	::	file_70F5D8:	.import	ROM_IN,0x70F5D8,0x80
.align 4	::	file_70F658:	.import	ROM_IN,0x70F658,0x20
.align 4	::	file_70F678:	.import	ROM_IN,0x70F678,0x20
.align 4	::	file_70F698:	.import	ROM_IN,0x70F698,0x40
.align 4	::	file_70F6D8:	.import	ROM_IN,0x70F6D8,0x20
.align 4	::	file_70F6F8:	.import	ROM_IN,0x70F6F8,0x20
.align 4	::	file_70F718:	.import	ROM_IN,0x70F718,0x40
.align 4	::	file_70F758:	.import	ROM_IN,0x70F758,0x40
.align 4	::	file_70F798:	.import	ROM_IN,0x70F798,0x60
.align 4	::	file_70F7F8:	.import	ROM_IN,0x70F7F8,0x80
.align 4	::	file_70F878:	.import	ROM_IN,0x70F878,0x80
.align 4	::	file_70F8F8:	.import	ROM_IN,0x70F8F8,0x118
.align 4	::	file_70FA10:	.import	ROM_IN,0x70FA10,0xDC
.align 4	::	file_70FAEC:	.import	ROM_IN,0x70FAEC,0x2C
.align 4	::	file_70FB18:	.import	ROM_IN,0x70FB18,0x178
.align 4	::	file_70FC90:	.import	ROM_IN,0x70FC90,0x55C
.align 4	::	file_7101EC:	.import	ROM_IN,0x7101EC,0x68
.align 4	::	file_710254:	.import	ROM_IN,0x710254,0x188
.align 4	::	file_7103DC:	.import	ROM_IN,0x7103DC,0x84
.align 4	::	file_710460:	.import	ROM_IN,0x710460,0x44
.align 4	::	file_7104A4:	.import	ROM_IN,0x7104A4,0x560
.align 4	::	file_710A04:	.import	ROM_IN,0x710A04,0x2AB8
.align 4	::	file_7134BC:	.import	ROM_IN,0x7134BC,0x70
.align 4	::	file_71352C:	.import	ROM_IN,0x71352C,0x158
.align 4	::	file_713684:	.import	ROM_IN,0x713684,0x160
.align 4	::	file_7137E4:	.import	ROM_IN,0x7137E4,0x30
.align 4	::	file_713814:	.import	ROM_IN,0x713814,0xC4
.align 4	::	file_7138D8:	.import	ROM_IN,0x7138D8,0x70
.align 4	::	file_713948:	.import	ROM_IN,0x713948,0x30
.align 4	::	file_713978:	.import	ROM_IN,0x713978,0x108
.align 4	::	file_713A80:	.import	ROM_IN,0x713A80,0x4E4
.align 4	::	file_713F64:	.import	ROM_IN,0x713F64,0x50
.align 4	::	file_713FB4:	.import	ROM_IN,0x713FB4,0x11C
.align 4	::	file_7140D0:	.import	ROM_IN,0x7140D0,0x548
.align 4	::	file_714618:	.import	ROM_IN,0x714618,0x50
.align 4	::	file_714668:	.import	ROM_IN,0x714668,0x108
.align 4	::	file_714770:	.import	ROM_IN,0x714770,0x510
.align 4	::	file_714C80:	.import	ROM_IN,0x714C80,0x50
.align 4	::	file_714CD0:	.import	ROM_IN,0x714CD0,0x118
.align 4	::	file_714DE8:	.import	ROM_IN,0x714DE8,0xBC
.align 4	::	file_714EA4:	.import	ROM_IN,0x714EA4,0x30
.align 4	::	file_714ED4:	.import	ROM_IN,0x714ED4,0x78
.align 4	::	file_714F4C:	.import	ROM_IN,0x714F4C,0x8C
.align 4	::	file_714FD8:	.import	ROM_IN,0x714FD8,0x50
.align 4	::	file_715028:	.import	ROM_IN,0x715028,0x3C
.align 4	::	file_715064:	.import TEMP+"/715064.msg"
.align 4	::	file_71551C:	.import TEMP+"/71551C.msg"
.align 4	::	file_716DE4:	.import TEMP+"/716DE4.msg"
.align 4	::	file_71A37C:	.import TEMP+"/71A37C.msg"
.align 4	::	file_71A66C:	.import TEMP+"/71A66C.msg"
.align 4	::	file_71BE98:	.import TEMP+"/71BE98.msg"
.align 4	::	file_71C67C:	.import	ROM_IN,0x71C67C,0x460
.align 4	::	file_71CADC:	.import	ROM_IN,0x71CADC,0x20
.align 4	::	file_71CAFC:	.import	ROM_IN,0x71CAFC,0x1FE0
.align 4	::	file_71EADC:	.import	ROM_IN,0x71EADC,0x900
.align 4	::	file_71F3DC:	.import	ROM_IN,0x71F3DC,0x20
.align 4	::	file_71F3FC:	.import	ROM_IN,0x71F3FC,0x40
.align 4	::	file_71F43C:	.import	ROM_IN,0x71F43C,0x20
.align 4	::	file_71F45C:	.import	ROM_IN,0x71F45C,0x20
.align 4	::	file_71F47C:	.import	ROM_IN,0x71F47C,0x20
.align 4	::	file_71F49C:	.import	ROM_IN,0x71F49C,0x20
.align 4	::	file_71F4BC:	.import	ROM_IN,0x71F4BC,0x20
.align 4	::	file_71F4DC:	.import	ROM_IN,0x71F4DC,0x20
.align 4	::	file_71F4FC:	.import	ROM_IN,0x71F4FC,0x20
.align 4	::	file_71F51C:	.import	ROM_IN,0x71F51C,0x20
.align 4	::	file_71F53C:	.import	ROM_IN,0x71F53C,0x20
.align 4	::	file_71F55C:	.import	ROM_IN,0x71F55C,0x20
.align 4	::	file_71F57C:	.import	ROM_IN,0x71F57C,0x20
.align 4	::	file_71F59C:	.import	ROM_IN,0x71F59C,0x20
.align 4	::	file_71F5BC:	.import	ROM_IN,0x71F5BC,0x20
.align 4	::	file_71F5DC:	.import	ROM_IN,0x71F5DC,0x20
.align 4	::	file_71F5FC:	.import	ROM_IN,0x71F5FC,0x20
.align 4	::	file_71F61C:	.import	ROM_IN,0x71F61C,0x20
.align 4	::	file_71F63C:	.import	ROM_IN,0x71F63C,0x20
.align 4	::	file_71F65C:	.import	ROM_IN,0x71F65C,0x20
.align 4	::	file_71F67C:	.import	ROM_IN,0x71F67C,0x20
.align 4	::	file_71F69C:	.import	ROM_IN,0x71F69C,0x20
.align 4	::	file_71F6BC:	.import	ROM_IN,0x71F6BC,0x20
.align 4	::	file_71F6DC:	.import	ROM_IN,0x71F6DC,0x20
.align 4	::	file_71F6FC:	.import	ROM_IN,0x71F6FC,0x20
.align 4	::	file_71F71C:	.import	ROM_IN,0x71F71C,0x20
.align 4	::	file_71F73C:	.import	ROM_IN,0x71F73C,0x20
.align 4	::	file_71F75C:	.import	ROM_IN,0x71F75C,0x20
.align 4	::	file_71F77C:	.import	ROM_IN,0x71F77C,0x20
.align 4	::	file_71F79C:	.import	ROM_IN,0x71F79C,0x20
.align 4	::	file_71F7BC:	.import	ROM_IN,0x71F7BC,0x20
.align 4	::	file_71F7DC:	.import	ROM_IN,0x71F7DC,0x20
.align 4	::	file_71F7FC:	.import	ROM_IN,0x71F7FC,0x20
.align 4	::	file_71F81C:	.import	ROM_IN,0x71F81C,0x20
.align 4	::	file_71F83C:	.import	ROM_IN,0x71F83C,0x20
.align 4	::	file_71F85C:	.import	ROM_IN,0x71F85C,0x40
.align 4	::	file_71F89C:	.import	ROM_IN,0x71F89C,0x20
.align 4	::	file_71F8BC:	.import	ROM_IN,0x71F8BC,0x20
.align 4	::	file_71F8DC:	.import	ROM_IN,0x71F8DC,0x40
.align 4	::	file_71F91C:	.import	ROM_IN,0x71F91C,0x20
.align 4	::	file_71F93C:	.import	ROM_IN,0x71F93C,0x20
.align 4	::	file_71F95C:	.import	ROM_IN,0x71F95C,0x20
.align 4	::	file_71F97C:	.import	ROM_IN,0x71F97C,0x20
.align 4	::	file_71F99C:	.import	ROM_IN,0x71F99C,0x80
.align 4	::	file_71FA1C:	.import	ROM_IN,0x71FA1C,0x40
.align 4	::	file_71FA5C:	.import	ROM_IN,0x71FA5C,0x40
.align 4	::	file_71FA9C:	.import	ROM_IN,0x71FA9C,0x40
.align 4	::	file_71FADC:	.import	ROM_IN,0x71FADC,0x40
.align 4	::	file_71FB1C:	.import	ROM_IN,0x71FB1C,0x40
.align 4	::	file_71FB5C:	.import	ROM_IN,0x71FB5C,0x40
.align 4	::	file_71FB9C:	.import	ROM_IN,0x71FB9C,0x40
.align 4	::	file_71FBDC:	.import	ROM_IN,0x71FBDC,0x40
.align 4	::	file_71FC1C:	.import	ROM_IN,0x71FC1C,0x40
.align 4	::	file_71FC5C:	.import	ROM_IN,0x71FC5C,0x40
.align 4	::	file_71FC9C:	.import	ROM_IN,0x71FC9C,0x20
.align 4	::	file_71FCBC:	.import	ROM_IN,0x71FCBC,0x300
.align 4	::	file_71FFBC:	.import	ROM_IN,0x71FFBC,0x40
.align 4	::	file_71FFFC:	.import	ROM_IN,0x71FFFC,0x40
.align 4	::	file_72003C:	.import	ROM_IN,0x72003C,0x40
.align 4	::	file_72007C:	.import	ROM_IN,0x72007C,0x40
.align 4	::	file_7200BC:	.import	ROM_IN,0x7200BC,0x40
.align 4	::	file_7200FC:	.import	ROM_IN,0x7200FC,0x40
.align 4	::	file_72013C:	.import	ROM_IN,0x72013C,0x40
.align 4	::	file_72017C:	.import	ROM_IN,0x72017C,0x40
.align 4	::	file_7201BC:	.import	ROM_IN,0x7201BC,0x40
.align 4	::	file_7201FC:	.import	ROM_IN,0x7201FC,0x40
.align 4	::	file_72023C:	.import	ROM_IN,0x72023C,0x40
.align 4	::	file_72027C:	.import	ROM_IN,0x72027C,0x40
.align 4	::	file_7202BC:	.import	ROM_IN,0x7202BC,0x40
.align 4	::	file_7202FC:	.import	ROM_IN,0x7202FC,0x60
.align 4	::	file_72035C:	.import	ROM_IN,0x72035C,0x60
.align 4	::	file_7203BC:	.import	ROM_IN,0x7203BC,0x700
.align 4	::	file_720ABC:	.import	ROM_IN,0x720ABC,0x680
.align 4	::	file_72113C:	.import	ROM_IN,0x72113C,0x2C0
.align 4	::	file_7213FC:	.import	ROM_IN,0x7213FC,0x20
.align 4	::	file_72141C:	.import	ROM_IN,0x72141C,0x380
.align 4	::	file_72179C:	.import	ROM_IN,0x72179C,0x180
.align 4	::	file_72191C:	.import	ROM_IN,0x72191C,0xC0
.align 4	::	file_7219DC:	.import	ROM_IN,0x7219DC,0x100
.align 4	::	file_721ADC:	.import	TEMP+"/721ADC.img.bin"
.align 4	::	file_721C5C:	.import	TEMP+"/721C5C.img.bin"
.align 4	::	file_721DDC:	.import	TEMP+"/721DDC.img.bin"
.align 4	::	file_721F5C:	.import	TEMP+"/721F5C.img.bin"
.align 4	::	file_7220DC:	.import	ROM_IN,0x7220DC,0x20
.align 4	::	file_7220FC:	.import	ROM_IN,0x7220FC,0x20
.align 4	::	file_72211C:	.import	ROM_IN,0x72211C,0x20
.align 4	::	file_72213C:	.import	TEMP+"/72213C.img.bin"
.align 4	::	file_72235C:	.import	ROM_IN,0x72235C,0x40
.align 4	::	file_72239C:	.import	ROM_IN,0x72239C,0x100
.align 4	::	file_72249C:	.import	ROM_IN,0x72249C,0x780
.align 4	::	file_722C1C:	.import	ROM_IN,0x722C1C,0x600
.align 4	::	file_72321C:	.import	ROM_IN,0x72321C,0x300
.align 4	::	file_72351C:	.import	ROM_IN,0x72351C,0x180
.align 4	::	file_72369C:	.import	ROM_IN,0x72369C,0x20
.align 4	::	file_7236BC:	.import	ROM_IN,0x7236BC,0x20
.align 4	::	file_7236DC:	.import	ROM_IN,0x7236DC,0x20
.align 4	::	file_7236FC:	.import	ROM_IN,0x7236FC,0x180
.align 4	::	file_72387C:	.import	ROM_IN,0x72387C,0x180
.align 4	::	file_7239FC:	.import	ROM_IN,0x7239FC,0x100
.align 4	::	file_723AFC:	.import	ROM_IN,0x723AFC,0x80
.align 4	::	file_723B7C:	.import	ROM_IN,0x723B7C,0x100
.align 4	::	file_723C7C:	.import	ROM_IN,0x723C7C,0x40
.align 4	::	file_723CBC:	.import	ROM_IN,0x723CBC,0x80
.align 4	::	file_723D3C:	.import	ROM_IN,0x723D3C,0x80
.align 4	::	file_723DBC:	.import	ROM_IN,0x723DBC,0x80
.align 4	::	file_723E3C:	.import	ROM_IN,0x723E3C,0x80
.align 4	::	file_723EBC:	.import	ROM_IN,0x723EBC,0x80
.align 4	::	file_723F3C:	.import	ROM_IN,0x723F3C,0x80
.align 4	::	file_723FBC:	.import	ROM_IN,0x723FBC,0x80
.align 4	::	file_72403C:	.import	ROM_IN,0x72403C,0x80
.align 4	::	file_7240BC:	.import	ROM_IN,0x7240BC,0x80
.align 4	::	file_72413C:	.import	ROM_IN,0x72413C,0x80
.align 4	::	file_7241BC:	.import	ROM_IN,0x7241BC,0x80
.align 4	::	file_72423C:	.import	ROM_IN,0x72423C,0x80
.align 4	::	file_7242BC:	.import	ROM_IN,0x7242BC,0x80
.align 4	::	file_72433C:	.import	ROM_IN,0x72433C,0x80
.align 4	::	file_7243BC:	.import	ROM_IN,0x7243BC,0x80
.align 4	::	file_72443C:	.import	ROM_IN,0x72443C,0x80
.align 4	::	file_7244BC:	.import	ROM_IN,0x7244BC,0x80
.align 4	::	file_72453C:	.import	ROM_IN,0x72453C,0x80
.align 4	::	file_7245BC:	.import	ROM_IN,0x7245BC,0x80
.align 4	::	file_72463C:	.import	ROM_IN,0x72463C,0x80
.align 4	::	file_7246BC:	.import	ROM_IN,0x7246BC,0x80
.align 4	::	file_72473C:	.import	ROM_IN,0x72473C,0x20
.align 4	::	file_72475C:	.import	ROM_IN,0x72475C,0x20
.align 4	::	file_72477C:	.import	ROM_IN,0x72477C,0x20
.align 4	::	file_72479C:	.import	ROM_IN,0x72479C,0x20
.align 4	::	file_7247BC:	.import	ROM_IN,0x7247BC,0x20
.align 4	::	file_7247DC:	.import	ROM_IN,0x7247DC,0x20
.align 4	::	file_7247FC:	.import	ROM_IN,0x7247FC,0x20
.align 4	::	file_72481C:	.import	ROM_IN,0x72481C,0x20
.align 4	::	file_72483C:	.import	ROM_IN,0x72483C,0x20
.align 4	::	file_72485C:	.import	ROM_IN,0x72485C,0x20
.align 4	::	file_72487C:	.import	ROM_IN,0x72487C,0x20
.align 4	::	file_72489C:	.import	ROM_IN,0x72489C,0x20
.align 4	::	file_7248BC:	.import	ROM_IN,0x7248BC,0x20
.align 4	::	file_7248DC:	.import	ROM_IN,0x7248DC,0x20
.align 4	::	file_7248FC:	.import	ROM_IN,0x7248FC,0x20
.align 4	::	file_72491C:	.import	ROM_IN,0x72491C,0x20
.align 4	::	file_72493C:	.import	ROM_IN,0x72493C,0x20
.align 4	::	file_72495C:	.import	ROM_IN,0x72495C,0x20
.align 4	::	file_72497C:	.import	ROM_IN,0x72497C,0x20
.align 4	::	file_72499C:	.import	ROM_IN,0x72499C,0x20
.align 4	::	file_7249BC:	.import	ROM_IN,0x7249BC,0x20
.align 4	::	file_7249DC:	.import	ROM_IN,0x7249DC,0x20
.align 4	::	file_7249FC:	.import	ROM_IN,0x7249FC,0x20
.align 4	::	file_724A1C:	.import	ROM_IN,0x724A1C,0x20
.align 4	::	file_724A3C:	.import	ROM_IN,0x724A3C,0x20
.align 4	::	file_724A5C:	.import	ROM_IN,0x724A5C,0x20
.align 4	::	file_724A7C:	.import	ROM_IN,0x724A7C,0x20
.align 4	::	file_724A9C:	.import	ROM_IN,0x724A9C,0x20
.align 4	::	file_724ABC:	.import	ROM_IN,0x724ABC,0x20
.align 4	::	file_724ADC:	.import	ROM_IN,0x724ADC,0x20
.align 4	::	file_724AFC:	.import	ROM_IN,0x724AFC,0x280
.align 4	::	file_724D7C:	.import	ROM_IN,0x724D7C,0x60
.align 4	::	file_724DDC:	.import	ROM_IN,0x724DDC,0x154
.align 4	::	file_724F30:	.import	ROM_IN,0x724F30,0x9C0
.align 4	::	file_7258F0:	.import	ROM_IN,0x7258F0,0x24
.align 4	::	file_725914:	.import	ROM_IN,0x725914,0x21C
.align 4	::	file_725B30:	.import	ROM_IN,0x725B30,0x48
.align 4	::	file_725B78:	.import	ROM_IN,0x725B78,0x21C
.align 4	::	file_725D94:	.import	ROM_IN,0x725D94,0x24
.align 4	::	file_725DB8:	.import	ROM_IN,0x725DB8,0x700	// Chip codes
.align 4	::	file_7264B8:	.import	ROM_IN,0x7264B8,0x80	// Empty chip icon
.align 4	::	file_726538:	.import	ROM_IN,0x726538,0x140
.align 4	::	file_726678:	.import	ROM_IN,0x726678,0x258
.align 4	::	file_7268D0:	.import	ROM_IN,0x7268D0,0x20
.align 4	::	file_7268F0:	.import	ROM_IN,0x7268F0,0x540
.align 4	::	file_726E30:	.import	ROM_IN,0x726E30,0x540
.align 4	::	file_727370:	.import	ROM_IN,0x727370,0x540
.align 4	::	file_7278B0:	.import	ROM_IN,0x7278B0,0x540
.align 4	::	file_727DF0:	.import	ROM_IN,0x727DF0,0x540
.align 4	::	file_728330:	.import	ROM_IN,0x728330,0x540
.align 4	::	file_728870:	.import	ROM_IN,0x728870,0x540
.align 4	::	file_728DB0:	.import	ROM_IN,0x728DB0,0x540
.align 4	::	file_7292F0:	.import	ROM_IN,0x7292F0,0x540
.align 4	::	file_729830:	.import	ROM_IN,0x729830,0x540
.align 4	::	file_729D70:	.import	ROM_IN,0x729D70,0x540
.align 4	::	file_72A2B0:	.import	ROM_IN,0x72A2B0,0x540
.align 4	::	file_72A7F0:	.import	ROM_IN,0x72A7F0,0x540
.align 4	::	file_72AD30:	.import	ROM_IN,0x72AD30,0x540
.align 4	::	file_72B270:	.import	ROM_IN,0x72B270,0x540
.align 4	::	file_72B7B0:	.import	ROM_IN,0x72B7B0,0x540
.align 4	::	file_72BCF0:	.import	ROM_IN,0x72BCF0,0x540
.align 4	::	file_72C230:	.import	ROM_IN,0x72C230,0x540
.align 4	::	file_72C770:	.import	ROM_IN,0x72C770,0x540
.align 4	::	file_72CCB0:	.import	ROM_IN,0x72CCB0,0x540
.align 4	::	file_72D1F0:	.import	ROM_IN,0x72D1F0,0x540
.align 4	::	file_72D730:	.import	ROM_IN,0x72D730,0x540
.align 4	::	file_72DC70:	.import	ROM_IN,0x72DC70,0x540
.align 4	::	file_72E1B0:	.import	ROM_IN,0x72E1B0,0x540
.align 4	::	file_72E6F0:	.import	ROM_IN,0x72E6F0,0x540
.align 4	::	file_72EC30:	.import	ROM_IN,0x72EC30,0x540
.align 4	::	file_72F170:	.import	ROM_IN,0x72F170,0x540
.align 4	::	file_72F6B0:	.import	ROM_IN,0x72F6B0,0x540
.align 4	::	file_72FBF0:	.import	ROM_IN,0x72FBF0,0x540
.align 4	::	file_730130:	.import	ROM_IN,0x730130,0x540
.align 4	::	file_730670:	.import	ROM_IN,0x730670,0x540
.align 4	::	file_730BB0:	.import	ROM_IN,0x730BB0,0x540
.align 4	::	file_7310F0:	.import	ROM_IN,0x7310F0,0x540
.align 4	::	file_731630:	.import	ROM_IN,0x731630,0x540
.align 4	::	file_731B70:	.import	ROM_IN,0x731B70,0x540
.align 4	::	file_7320B0:	.import	ROM_IN,0x7320B0,0x540
.align 4	::	file_7325F0:	.import	ROM_IN,0x7325F0,0x540
.align 4	::	file_732B30:	.import	ROM_IN,0x732B30,0x540
.align 4	::	file_733070:	.import	ROM_IN,0x733070,0x540
.align 4	::	file_7335B0:	.import	ROM_IN,0x7335B0,0x540
.align 4	::	file_733AF0:	.import	ROM_IN,0x733AF0,0x540
.align 4	::	file_734030:	.import	ROM_IN,0x734030,0x540
.align 4	::	file_734570:	.import	ROM_IN,0x734570,0x540
.align 4	::	file_734AB0:	.import	ROM_IN,0x734AB0,0x540
.align 4	::	file_734FF0:	.import	ROM_IN,0x734FF0,0x540
.align 4	::	file_735530:	.import	ROM_IN,0x735530,0x540
.align 4	::	file_735A70:	.import	ROM_IN,0x735A70,0x540
.align 4	::	file_735FB0:	.import	ROM_IN,0x735FB0,0x540
.align 4	::	file_7364F0:	.import	ROM_IN,0x7364F0,0x540
.align 4	::	file_736A30:	.import	ROM_IN,0x736A30,0x540
.align 4	::	file_736F70:	.import	ROM_IN,0x736F70,0x540
.align 4	::	file_7374B0:	.import	ROM_IN,0x7374B0,0x540
.align 4	::	file_7379F0:	.import	ROM_IN,0x7379F0,0x540
.align 4	::	file_737F30:	.import	ROM_IN,0x737F30,0x540
.align 4	::	file_738470:	.import	ROM_IN,0x738470,0x540
.align 4	::	file_7389B0:	.import	ROM_IN,0x7389B0,0x540
.align 4	::	file_738EF0:	.import	ROM_IN,0x738EF0,0x540
.align 4	::	file_739430:	.import	ROM_IN,0x739430,0x540
.align 4	::	file_739970:	.import	ROM_IN,0x739970,0x540
.align 4	::	file_739EB0:	.import	ROM_IN,0x739EB0,0x540
.align 4	::	file_73A3F0:	.import	ROM_IN,0x73A3F0,0x540
.align 4	::	file_73A930:	.import	ROM_IN,0x73A930,0x540
.align 4	::	file_73AE70:	.import	ROM_IN,0x73AE70,0x540
.align 4	::	file_73B3B0:	.import	ROM_IN,0x73B3B0,0x540
.align 4	::	file_73B8F0:	.import	ROM_IN,0x73B8F0,0x540
.align 4	::	file_73BE30:	.import	ROM_IN,0x73BE30,0x540
.align 4	::	file_73C370:	.import	ROM_IN,0x73C370,0x540
.align 4	::	file_73C8B0:	.import	ROM_IN,0x73C8B0,0x540
.align 4	::	file_73CDF0:	.import	ROM_IN,0x73CDF0,0x540
.align 4	::	file_73D330:	.import	ROM_IN,0x73D330,0x540
.align 4	::	file_73D870:	.import	ROM_IN,0x73D870,0x540
.align 4	::	file_73DDB0:	.import	ROM_IN,0x73DDB0,0x540
.align 4	::	file_73E2F0:	.import	ROM_IN,0x73E2F0,0x540
.align 4	::	file_73E830:	.import	ROM_IN,0x73E830,0x540
.align 4	::	file_73ED70:	.import	ROM_IN,0x73ED70,0x540
.align 4	::	file_73F2B0:	.import	ROM_IN,0x73F2B0,0x540
.align 4	::	file_73F7F0:	.import	ROM_IN,0x73F7F0,0x540
.align 4	::	file_73FD30:	.import	ROM_IN,0x73FD30,0x540
.align 4	::	file_740270:	.import	ROM_IN,0x740270,0x540
.align 4	::	file_7407B0:	.import	ROM_IN,0x7407B0,0x540
.align 4	::	file_740CF0:	.import	ROM_IN,0x740CF0,0x540
.align 4	::	file_741230:	.import	ROM_IN,0x741230,0x540
.align 4	::	file_741770:	.import	ROM_IN,0x741770,0x540
.align 4	::	file_741CB0:	.import	ROM_IN,0x741CB0,0x540
.align 4	::	file_7421F0:	.import	ROM_IN,0x7421F0,0x540
.align 4	::	file_742730:	.import	ROM_IN,0x742730,0x540
.align 4	::	file_742C70:	.import	ROM_IN,0x742C70,0x540
.align 4	::	file_7431B0:	.import	ROM_IN,0x7431B0,0x540
.align 4	::	file_7436F0:	.import	ROM_IN,0x7436F0,0x540
.align 4	::	file_743C30:	.import	ROM_IN,0x743C30,0x540
.align 4	::	file_744170:	.import	ROM_IN,0x744170,0x540
.align 4	::	file_7446B0:	.import	ROM_IN,0x7446B0,0x540
.align 4	::	file_744BF0:	.import	ROM_IN,0x744BF0,0x540
.align 4	::	file_745130:	.import	ROM_IN,0x745130,0x540
.align 4	::	file_745670:	.import	ROM_IN,0x745670,0x540
.align 4	::	file_745BB0:	.import	ROM_IN,0x745BB0,0x540
.align 4	::	file_7460F0:	.import	ROM_IN,0x7460F0,0x540
.align 4	::	file_746630:	.import	ROM_IN,0x746630,0x540
.align 4	::	file_746B70:	.import	ROM_IN,0x746B70,0x540
.align 4	::	file_7470B0:	.import	ROM_IN,0x7470B0,0x540
.align 4	::	file_7475F0:	.import	ROM_IN,0x7475F0,0x540
.align 4	::	file_747B30:	.import	ROM_IN,0x747B30,0x540
.align 4	::	file_748070:	.import	ROM_IN,0x748070,0x540
.align 4	::	file_7485B0:	.import	ROM_IN,0x7485B0,0x540
.align 4	::	file_748AF0:	.import	ROM_IN,0x748AF0,0x540
.align 4	::	file_749030:	.import	ROM_IN,0x749030,0x540
.align 4	::	file_749570:	.import	ROM_IN,0x749570,0x540
.align 4	::	file_749AB0:	.import	ROM_IN,0x749AB0,0x540
.align 4	::	file_749FF0:	.import	ROM_IN,0x749FF0,0x540
.align 4	::	file_74A530:	.import	ROM_IN,0x74A530,0x540
.align 4	::	file_74AA70:	.import	ROM_IN,0x74AA70,0x540
.align 4	::	file_74AFB0:	.import	ROM_IN,0x74AFB0,0x540
.align 4	::	file_74B4F0:	.import	ROM_IN,0x74B4F0,0x540
.align 4	::	file_74BA30:	.import	ROM_IN,0x74BA30,0x540
.align 4	::	file_74BF70:	.import	ROM_IN,0x74BF70,0x540
.align 4	::	file_74C4B0:	.import	ROM_IN,0x74C4B0,0x540
.align 4	::	file_74C9F0:	.import	ROM_IN,0x74C9F0,0x540
.align 4	::	file_74CF30:	.import	ROM_IN,0x74CF30,0x540
.align 4	::	file_74D470:	.import	ROM_IN,0x74D470,0x540
.align 4	::	file_74D9B0:	.import	ROM_IN,0x74D9B0,0x540
.align 4	::	file_74DEF0:	.import	ROM_IN,0x74DEF0,0x540
.align 4	::	file_74E430:	.import	ROM_IN,0x74E430,0x540
.align 4	::	file_74E970:	.import	ROM_IN,0x74E970,0x540
.align 4	::	file_74EEB0:	.import	ROM_IN,0x74EEB0,0x540
.align 4	::	file_74F3F0:	.import	ROM_IN,0x74F3F0,0x540
.align 4	::	file_74F930:	.import	ROM_IN,0x74F930,0x540
.align 4	::	file_74FE70:	.import	ROM_IN,0x74FE70,0x540
.align 4	::	file_7503B0:	.import	ROM_IN,0x7503B0,0x540
.align 4	::	file_7508F0:	.import	TEMP+"/7508F0.img.bin"
.align 4	::	file_750E30:	.import	ROM_IN,0x750E30,0x540
.align 4	::	file_751370:	.import	ROM_IN,0x751370,0x540
.align 4	::	file_7518B0:	.import	ROM_IN,0x7518B0,0x540
.align 4	::	file_751DF0:	.import	ROM_IN,0x751DF0,0x540
.align 4	::	file_752330:	.import	ROM_IN,0x752330,0x540
.align 4	::	file_752870:	.import	ROM_IN,0x752870,0x540
.align 4	::	file_752DB0:	.import	ROM_IN,0x752DB0,0x540
.align 4	::	file_7532F0:	.import	ROM_IN,0x7532F0,0x540
.align 4	::	file_753830:	.import	ROM_IN,0x753830,0x540
.align 4	::	file_753D70:	.import	ROM_IN,0x753D70,0x540
.align 4	::	file_7542B0:	.import	ROM_IN,0x7542B0,0x540
.align 4	::	file_7547F0:	.import	ROM_IN,0x7547F0,0x540
.align 4	::	file_754D30:	.import	ROM_IN,0x754D30,0x540
.align 4	::	file_755270:	.import	ROM_IN,0x755270,0x540
.align 4	::	file_7557B0:	.import	ROM_IN,0x7557B0,0x540
.align 4	::	file_755CF0:	.import	ROM_IN,0x755CF0,0x540
.align 4	::	file_756230:	.import	ROM_IN,0x756230,0x540
.align 4	::	file_756770:	.import	ROM_IN,0x756770,0x540
.align 4	::	file_756CB0:	.import	ROM_IN,0x756CB0,0x540
.align 4	::	file_7571F0:	.import	ROM_IN,0x7571F0,0x540
.align 4	::	file_757730:	.import	ROM_IN,0x757730,0x540
.align 4	::	file_757C70:	.import	ROM_IN,0x757C70,0x540
.align 4	::	file_7581B0:	.import	ROM_IN,0x7581B0,0x540
.align 4	::	file_7586F0:	.import	ROM_IN,0x7586F0,0x540
.align 4	::	file_758C30:	.import	ROM_IN,0x758C30,0x540
.align 4	::	file_759170:	.import	ROM_IN,0x759170,0x540
.align 4	::	file_7596B0:	.import	ROM_IN,0x7596B0,0x540	// Chip Data Transmission
.align 4	::	file_759BF0:	.import	ROM_IN,0x759BF0,0x540	// No Data Selected
.align 4	::	file_75A130:	.import	ROM_IN,0x75A130,0x540	// Double Soul
.align 4	::	file_75A670:	.import	ROM_IN,0x75A670,0x540	// Shuffle
.align 4	::	file_75ABB0:	.import	ROM_IN,0x75ABB0,0x20
.align 4	::	file_75ABD0:	.import	ROM_IN,0x75ABD0,0x20
.align 4	::	file_75ABF0:	.import	ROM_IN,0x75ABF0,0x20
.align 4	::	file_75AC10:	.import	ROM_IN,0x75AC10,0x20
.align 4	::	file_75AC30:	.import	ROM_IN,0x75AC30,0x20
.align 4	::	file_75AC50:	.import	ROM_IN,0x75AC50,0x20
.align 4	::	file_75AC70:	.import	ROM_IN,0x75AC70,0x20
.align 4	::	file_75AC90:	.import	ROM_IN,0x75AC90,0x20
.align 4	::	file_75ACB0:	.import	ROM_IN,0x75ACB0,0x20
.align 4	::	file_75ACD0:	.import	ROM_IN,0x75ACD0,0x20
.align 4	::	file_75ACF0:	.import	ROM_IN,0x75ACF0,0x20
.align 4	::	file_75AD10:	.import	ROM_IN,0x75AD10,0x20
.align 4	::	file_75AD30:	.import	ROM_IN,0x75AD30,0x20
.align 4	::	file_75AD50:	.import	ROM_IN,0x75AD50,0x20
.align 4	::	file_75AD70:	.import	ROM_IN,0x75AD70,0x20
.align 4	::	file_75AD90:	.import	ROM_IN,0x75AD90,0x20
.align 4	::	file_75ADB0:	.import	ROM_IN,0x75ADB0,0x20
.align 4	::	file_75ADD0:	.import	ROM_IN,0x75ADD0,0x20
.align 4	::	file_75ADF0:	.import	ROM_IN,0x75ADF0,0x20
.align 4	::	file_75AE10:	.import	ROM_IN,0x75AE10,0x20
.align 4	::	file_75AE30:	.import	ROM_IN,0x75AE30,0x20
.align 4	::	file_75AE50:	.import	ROM_IN,0x75AE50,0x20
.align 4	::	file_75AE70:	.import	ROM_IN,0x75AE70,0x20
.align 4	::	file_75AE90:	.import	ROM_IN,0x75AE90,0x20
.align 4	::	file_75AEB0:	.import	ROM_IN,0x75AEB0,0x20
.align 4	::	file_75AED0:	.import	ROM_IN,0x75AED0,0x20
.align 4	::	file_75AEF0:	.import	ROM_IN,0x75AEF0,0x20
.align 4	::	file_75AF10:	.import	ROM_IN,0x75AF10,0x20
.align 4	::	file_75AF30:	.import	ROM_IN,0x75AF30,0x20
.align 4	::	file_75AF50:	.import	ROM_IN,0x75AF50,0x20
.align 4	::	file_75AF70:	.import	ROM_IN,0x75AF70,0x20
.align 4	::	file_75AF90:	.import	ROM_IN,0x75AF90,0x20
.align 4	::	file_75AFB0:	.import	ROM_IN,0x75AFB0,0x20
.align 4	::	file_75AFD0:	.import	ROM_IN,0x75AFD0,0x20
.align 4	::	file_75AFF0:	.import	ROM_IN,0x75AFF0,0x20
.align 4	::	file_75B010:	.import	ROM_IN,0x75B010,0x20
.align 4	::	file_75B030:	.import	ROM_IN,0x75B030,0x20
.align 4	::	file_75B050:	.import	ROM_IN,0x75B050,0x20
.align 4	::	file_75B070:	.import	ROM_IN,0x75B070,0x20
.align 4	::	file_75B090:	.import	ROM_IN,0x75B090,0x20
.align 4	::	file_75B0B0:	.import	ROM_IN,0x75B0B0,0x20
.align 4	::	file_75B0D0:	.import	ROM_IN,0x75B0D0,0x20
.align 4	::	file_75B0F0:	.import	ROM_IN,0x75B0F0,0x20
.align 4	::	file_75B110:	.import	ROM_IN,0x75B110,0x20
.align 4	::	file_75B130:	.import	ROM_IN,0x75B130,0x20
.align 4	::	file_75B150:	.import	ROM_IN,0x75B150,0x20
.align 4	::	file_75B170:	.import	ROM_IN,0x75B170,0x20
.align 4	::	file_75B190:	.import	ROM_IN,0x75B190,0x20
.align 4	::	file_75B1B0:	.import	ROM_IN,0x75B1B0,0x20
.align 4	::	file_75B1D0:	.import	ROM_IN,0x75B1D0,0x20
.align 4	::	file_75B1F0:	.import	ROM_IN,0x75B1F0,0x20
.align 4	::	file_75B210:	.import	ROM_IN,0x75B210,0x20
.align 4	::	file_75B230:	.import	ROM_IN,0x75B230,0x20
.align 4	::	file_75B250:	.import	ROM_IN,0x75B250,0x20
.align 4	::	file_75B270:	.import	ROM_IN,0x75B270,0x20
.align 4	::	file_75B290:	.import	ROM_IN,0x75B290,0x20
.align 4	::	file_75B2B0:	.import	ROM_IN,0x75B2B0,0x20
.align 4	::	file_75B2D0:	.import	ROM_IN,0x75B2D0,0x20
.align 4	::	file_75B2F0:	.import	ROM_IN,0x75B2F0,0x20
.align 4	::	file_75B310:	.import	ROM_IN,0x75B310,0x20
.align 4	::	file_75B330:	.import	ROM_IN,0x75B330,0x20
.align 4	::	file_75B350:	.import	ROM_IN,0x75B350,0x20
.align 4	::	file_75B370:	.import	ROM_IN,0x75B370,0x20
.align 4	::	file_75B390:	.import	ROM_IN,0x75B390,0x20
.align 4	::	file_75B3B0:	.import	ROM_IN,0x75B3B0,0x20
.align 4	::	file_75B3D0:	.import	ROM_IN,0x75B3D0,0x20
.align 4	::	file_75B3F0:	.import	ROM_IN,0x75B3F0,0x20
.align 4	::	file_75B410:	.import	ROM_IN,0x75B410,0x20
.align 4	::	file_75B430:	.import	ROM_IN,0x75B430,0x20
.align 4	::	file_75B450:	.import	ROM_IN,0x75B450,0x20
.align 4	::	file_75B470:	.import	ROM_IN,0x75B470,0x20
.align 4	::	file_75B490:	.import	ROM_IN,0x75B490,0x20
.align 4	::	file_75B4B0:	.import	ROM_IN,0x75B4B0,0x20
.align 4	::	file_75B4D0:	.import	ROM_IN,0x75B4D0,0x20
.align 4	::	file_75B4F0:	.import	ROM_IN,0x75B4F0,0x20
.align 4	::	file_75B510:	.import	ROM_IN,0x75B510,0x20
.align 4	::	file_75B530:	.import	ROM_IN,0x75B530,0x20
.align 4	::	file_75B550:	.import	ROM_IN,0x75B550,0x20
.align 4	::	file_75B570:	.import	ROM_IN,0x75B570,0x20
.align 4	::	file_75B590:	.import	ROM_IN,0x75B590,0x20
.align 4	::	file_75B5B0:	.import	ROM_IN,0x75B5B0,0x20
.align 4	::	file_75B5D0:	.import	ROM_IN,0x75B5D0,0x20
.align 4	::	file_75B5F0:	.import	ROM_IN,0x75B5F0,0x20
.align 4	::	file_75B610:	.import	ROM_IN,0x75B610,0x20
.align 4	::	file_75B630:	.import	ROM_IN,0x75B630,0x20
.align 4	::	file_75B650:	.import	ROM_IN,0x75B650,0x20
.align 4	::	file_75B670:	.import	ROM_IN,0x75B670,0x20
.align 4	::	file_75B690:	.import	ROM_IN,0x75B690,0x20
.align 4	::	file_75B6B0:	.import	ROM_IN,0x75B6B0,0x20
.align 4	::	file_75B6D0:	.import	ROM_IN,0x75B6D0,0x20
.align 4	::	file_75B6F0:	.import	ROM_IN,0x75B6F0,0x20
.align 4	::	file_75B710:	.import	ROM_IN,0x75B710,0x20
.align 4	::	file_75B730:	.import	ROM_IN,0x75B730,0x20
.align 4	::	file_75B750:	.import	ROM_IN,0x75B750,0x20
.align 4	::	file_75B770:	.import	ROM_IN,0x75B770,0x20
.align 4	::	file_75B790:	.import	ROM_IN,0x75B790,0x20
.align 4	::	file_75B7B0:	.import	ROM_IN,0x75B7B0,0x20
.align 4	::	file_75B7D0:	.import	ROM_IN,0x75B7D0,0x20
.align 4	::	file_75B7F0:	.import	ROM_IN,0x75B7F0,0x20
.align 4	::	file_75B810:	.import	ROM_IN,0x75B810,0x20
.align 4	::	file_75B830:	.import	ROM_IN,0x75B830,0x20
.align 4	::	file_75B850:	.import	ROM_IN,0x75B850,0x20
.align 4	::	file_75B870:	.import	ROM_IN,0x75B870,0x20
.align 4	::	file_75B890:	.import	ROM_IN,0x75B890,0x20
.align 4	::	file_75B8B0:	.import	ROM_IN,0x75B8B0,0x20
.align 4	::	file_75B8D0:	.import	ROM_IN,0x75B8D0,0x20
.align 4	::	file_75B8F0:	.import	ROM_IN,0x75B8F0,0x20
.align 4	::	file_75B910:	.import	ROM_IN,0x75B910,0x20
.align 4	::	file_75B930:	.import	ROM_IN,0x75B930,0x20
.align 4	::	file_75B950:	.import	ROM_IN,0x75B950,0x20
.align 4	::	file_75B970:	.import	ROM_IN,0x75B970,0x20
.align 4	::	file_75B990:	.import	ROM_IN,0x75B990,0x20
.align 4	::	file_75B9B0:	.import	ROM_IN,0x75B9B0,0x20
.align 4	::	file_75B9D0:	.import	ROM_IN,0x75B9D0,0x20
.align 4	::	file_75B9F0:	.import	ROM_IN,0x75B9F0,0x20
.align 4	::	file_75BA10:	.import	ROM_IN,0x75BA10,0x20
.align 4	::	file_75BA30:	.import	ROM_IN,0x75BA30,0x20
.align 4	::	file_75BA50:	.import	ROM_IN,0x75BA50,0x20
.align 4	::	file_75BA70:	.import	ROM_IN,0x75BA70,0x20
.align 4	::	file_75BA90:	.import	ROM_IN,0x75BA90,0x20
.align 4	::	file_75BAB0:	.import	ROM_IN,0x75BAB0,0x20
.align 4	::	file_75BAD0:	.import	ROM_IN,0x75BAD0,0x20
.align 4	::	file_75BAF0:	.import	ROM_IN,0x75BAF0,0x20
.align 4	::	file_75BB10:	.import	ROM_IN,0x75BB10,0x20
.align 4	::	file_75BB30:	.import	ROM_IN,0x75BB30,0x20
.align 4	::	file_75BB50:	.import	ROM_IN,0x75BB50,0x20
.align 4	::	file_75BB70:	.import	ROM_IN,0x75BB70,0x20
.align 4	::	file_75BB90:	.import	ROM_IN,0x75BB90,0x20
.align 4	::	file_75BBB0:	.import	ROM_IN,0x75BBB0,0x20
.align 4	::	file_75BBD0:	.import	ROM_IN,0x75BBD0,0x20
.align 4	::	file_75BBF0:	.import	ROM_IN,0x75BBF0,0x20
.align 4	::	file_75BC10:	.import	ROM_IN,0x75BC10,0x20
.align 4	::	file_75BC30:	.import	ROM_IN,0x75BC30,0x20
.align 4	::	file_75BC50:	.import	ROM_IN,0x75BC50,0x20
.align 4	::	file_75BC70:	.import	ROM_IN,0x75BC70,0x20
.align 4	::	file_75BC90:	.import	ROM_IN,0x75BC90,0x20
.align 4	::	file_75BCB0:	.import	ROM_IN,0x75BCB0,0x20
.align 4	::	file_75BCD0:	.import	ROM_IN,0x75BCD0,0x20
.align 4	::	file_75BCF0:	.import	ROM_IN,0x75BCF0,0x20
.align 4	::	file_75BD10:	.import	ROM_IN,0x75BD10,0x20
.align 4	::	file_75BD30:	.import	ROM_IN,0x75BD30,0x20
.align 4	::	file_75BD50:	.import	ROM_IN,0x75BD50,0x20
.align 4	::	file_75BD70:	.import	ROM_IN,0x75BD70,0x20
.align 4	::	file_75BD90:	.import	ROM_IN,0x75BD90,0x20
.align 4	::	file_75BDB0:	.import	ROM_IN,0x75BDB0,0x20
.align 4	::	file_75BDD0:	.import	ROM_IN,0x75BDD0,0x20
.align 4	::	file_75BDF0:	.import	ROM_IN,0x75BDF0,0x20
.align 4	::	file_75BE10:	.import	ROM_IN,0x75BE10,0x20
.align 4	::	file_75BE30:	.import	ROM_IN,0x75BE30,0x20
.align 4	::	file_75BE50:	.import	ROM_IN,0x75BE50,0x20
.align 4	::	file_75BE70:	.import	ROM_IN,0x75BE70,0x20
.align 4	::	file_75BE90:	.import	ROM_IN,0x75BE90,0x20
.align 4	::	file_75BEB0:	.import	ROM_IN,0x75BEB0,0x20
.align 4	::	file_75BED0:	.import	ROM_IN,0x75BED0,0x20
.align 4	::	file_75BEF0:	.import	ROM_IN,0x75BEF0,0x20
.align 4	::	file_75BF10:	.import	ROM_IN,0x75BF10,0x20
.align 4	::	file_75BF30:	.import	ROM_IN,0x75BF30,0x20
.align 4	::	file_75BF50:	.import	ROM_IN,0x75BF50,0x20
.align 4	::	file_75BF70:	.import	ROM_IN,0x75BF70,0x20
.align 4	::	file_75BF90:	.import	ROM_IN,0x75BF90,0x20
.align 4	::	file_75BFB0:	.import	ROM_IN,0x75BFB0,0x20
.align 4	::	file_75BFD0:	.import	ROM_IN,0x75BFD0,0x20
.align 4	::	file_75BFF0:	.import	ROM_IN,0x75BFF0,0x20
.align 4	::	file_75C010:	.import	ROM_IN,0x75C010,0x20
.align 4	::	file_75C030:	.import	ROM_IN,0x75C030,0x20
.align 4	::	file_75C050:	.import	ROM_IN,0x75C050,0x20
.align 4	::	file_75C070:	.import	ROM_IN,0x75C070,0x20
.align 4	::	file_75C090:	.import	ROM_IN,0x75C090,0x20
.align 4	::	file_75C0B0:	.import	ROM_IN,0x75C0B0,0x20
.align 4	::	file_75C0D0:	.import	ROM_IN,0x75C0D0,0x20
.align 4	::	file_75C0F0:	.import	ROM_IN,0x75C0F0,0x20
.align 4	::	file_75C110:	.import	ROM_IN,0x75C110,0x20
.align 4	::	file_75C130:	.import	ROM_IN,0x75C130,0x20
.align 4	::	file_75C150:	.import	ROM_IN,0x75C150,0x20
.align 4	::	file_75C170:	.import	ROM_IN,0x75C170,0x20
.align 4	::	file_75C190:	.import	ROM_IN,0x75C190,0x20
.align 4	::	file_75C1B0:	.import	ROM_IN,0x75C1B0,0x20
.align 4	::	file_75C1D0:	.import	ROM_IN,0x75C1D0,0x20
.align 4	::	file_75C1F0:	.import	ROM_IN,0x75C1F0,0x20
.align 4	::	file_75C210:	.import	ROM_IN,0x75C210,0x20
.align 4	::	file_75C230:	.import	ROM_IN,0x75C230,0x20
.align 4	::	file_75C250:	.import	ROM_IN,0x75C250,0x20
.align 4	::	file_75C270:	.import	ROM_IN,0x75C270,0x20
.align 4	::	file_75C290:	.import	ROM_IN,0x75C290,0x20
.align 4	::	file_75C2B0:	.import	ROM_IN,0x75C2B0,0x20
.align 4	::	file_75C2D0:	.import	ROM_IN,0x75C2D0,0x20
.align 4	::	file_75C2F0:	.import	ROM_IN,0x75C2F0,0x20
.align 4	::	file_75C310:	.import	ROM_IN,0x75C310,0x20
.align 4	::	file_75C330:	.import	ROM_IN,0x75C330,0x20
.align 4	::	file_75C350:	.import	ROM_IN,0x75C350,0x20
.align 4	::	file_75C370:	.import	ROM_IN,0x75C370,0x20
.align 4	::	file_75C390:	.import	ROM_IN,0x75C390,0x20
.align 4	::	file_75C3B0:	.import	ROM_IN,0x75C3B0,0x20
.align 4	::	file_75C3D0:	.import	ROM_IN,0x75C3D0,0x20
.align 4	::	file_75C3F0:	.import	ROM_IN,0x75C3F0,0x20
.align 4	::	file_75C410:	.import	ROM_IN,0x75C410,0x20
.align 4	::	file_75C430:	.import	ROM_IN,0x75C430,0x20
.align 4	::	file_75C450:	.import	ROM_IN,0x75C450,0x20
.align 4	::	file_75C470:	.import	ROM_IN,0x75C470,0x20
.align 4	::	file_75C490:	.import	ROM_IN,0x75C490,0x20
.align 4	::	file_75C4B0:	.import	ROM_IN,0x75C4B0,0x20
.align 4	::	file_75C4D0:	.import	ROM_IN,0x75C4D0,0x20
.align 4	::	file_75C4F0:	.import	ROM_IN,0x75C4F0,0x20
.align 4	::	file_75C510:	.import	ROM_IN,0x75C510,0x20
.align 4	::	file_75C530:	.import	ROM_IN,0x75C530,0x20
.align 4	::	file_75C550:	.import	ROM_IN,0x75C550,0x20
.align 4	::	file_75C570:	.import	ROM_IN,0x75C570,0x20
.align 4	::	file_75C590:	.import	ROM_IN,0x75C590,0x20
.align 4	::	file_75C5B0:	.import	ROM_IN,0x75C5B0,0x20
.align 4	::	file_75C5D0:	.import	ROM_IN,0x75C5D0,0x20
.align 4	::	file_75C5F0:	.import	ROM_IN,0x75C5F0,0x20
.align 4	::	file_75C610:	.import	ROM_IN,0x75C610,0x20
.align 4	::	file_75C630:	.import	ROM_IN,0x75C630,0x20
.align 4	::	file_75C650:	.import	ROM_IN,0x75C650,0x20
.align 4	::	file_75C670:	.import	ROM_IN,0x75C670,0x20
.align 4	::	file_75C690:	.import	ROM_IN,0x75C690,0x20
.align 4	::	file_75C6B0:	.import	ROM_IN,0x75C6B0,0x20
.align 4	::	file_75C6D0:	.import	ROM_IN,0x75C6D0,0x20
.align 4	::	file_75C6F0:	.import	ROM_IN,0x75C6F0,0x20
.align 4	::	file_75C710:	.import	ROM_IN,0x75C710,0x20
.align 4	::	file_75C730:	.import	ROM_IN,0x75C730,0x20
.align 4	::	file_75C750:	.import	ROM_IN,0x75C750,0x20
.align 4	::	file_75C770:	.import	ROM_IN,0x75C770,0x20
.align 4	::	file_75C790:	.import	ROM_IN,0x75C790,0x20
.align 4	::	file_75C7B0:	.import	ROM_IN,0x75C7B0,0x20
.align 4	::	file_75C7D0:	.import	ROM_IN,0x75C7D0,0x20
.align 4	::	file_75C7F0:	.import	ROM_IN,0x75C7F0,0x20
.align 4	::	file_75C810:	.import	ROM_IN,0x75C810,0x20
.align 4	::	file_75C830:	.import	ROM_IN,0x75C830,0x20
.align 4	::	file_75C850:	.import	ROM_IN,0x75C850,0x20
.align 4	::	file_75C870:	.import	ROM_IN,0x75C870,0x20
.align 4	::	file_75C890:	.import	ROM_IN,0x75C890,0x20
.align 4	::	file_75C8B0:	.import	ROM_IN,0x75C8B0,0x20
.align 4	::	file_75C8D0:	.import	ROM_IN,0x75C8D0,0x20
.align 4	::	file_75C8F0:	.import	ROM_IN,0x75C8F0,0x20
.align 4	::	file_75C910:	.import	ROM_IN,0x75C910,0x20
.align 4	::	file_75C930:	.import	ROM_IN,0x75C930,0x20
.align 4	::	file_75C950:	.import	ROM_IN,0x75C950,0x20
.align 4	::	file_75C970:	.import	ROM_IN,0x75C970,0x20
.align 4	::	file_75C990:	.import	ROM_IN,0x75C990,0x20
.align 4	::	file_75C9B0:	.import	ROM_IN,0x75C9B0,0x20
.align 4	::	file_75C9D0:	.import	ROM_IN,0x75C9D0,0x20
.align 4	::	file_75C9F0:	.import	ROM_IN,0x75C9F0,0x20
.align 4	::	file_75CA10:	.import	ROM_IN,0x75CA10,0x20
.align 4	::	file_75CA30:	.import	ROM_IN,0x75CA30,0x20
.align 4	::	file_75CA50:	.import	ROM_IN,0x75CA50,0x20
.align 4	::	file_75CA70:	.import	ROM_IN,0x75CA70,0x20
.align 4	::	file_75CA90:	.import	ROM_IN,0x75CA90,0x20
.align 4	::	file_75CAB0:	.import	ROM_IN,0x75CAB0,0x20
.align 4	::	file_75CAD0:	.import	ROM_IN,0x75CAD0,0x20
.align 4	::	file_75CAF0:	.import	ROM_IN,0x75CAF0,0x20
.align 4	::	file_75CB10:	.import	ROM_IN,0x75CB10,0x20
.align 4	::	file_75CB30:	.import	ROM_IN,0x75CB30,0x20
.align 4	::	file_75CB50:	.import	ROM_IN,0x75CB50,0x20
.align 4	::	file_75CB70:	.import	ROM_IN,0x75CB70,0x20
.align 4	::	file_75CB90:	.import	ROM_IN,0x75CB90,0x20
.align 4	::	file_75CBB0:	.import	ROM_IN,0x75CBB0,0x20
.align 4	::	file_75CBD0:	.import	ROM_IN,0x75CBD0,0x20
.align 4	::	file_75CBF0:	.import	ROM_IN,0x75CBF0,0x20
.align 4	::	file_75CC10:	.import	ROM_IN,0x75CC10,0x20
.align 4	::	file_75CC30:	.import	ROM_IN,0x75CC30,0x20
.align 4	::	file_75CC50:	.import	ROM_IN,0x75CC50,0x20
.align 4	::	file_75CC70:	.import	ROM_IN,0x75CC70,0x20
.align 4	::	file_75CC90:	.import	ROM_IN,0x75CC90,0x20
.align 4	::	file_75CCB0:	.import	ROM_IN,0x75CCB0,0x20
.align 4	::	file_75CCD0:	.import	ROM_IN,0x75CCD0,0x20
.align 4	::	file_75CCF0:	.import	ROM_IN,0x75CCF0,0x20
.align 4	::	file_75CD10:	.import	ROM_IN,0x75CD10,0x20
.align 4	::	file_75CD30:	.import	ROM_IN,0x75CD30,0x20
.align 4	::	file_75CD50:	.import	ROM_IN,0x75CD50,0x20
.align 4	::	file_75CD70:	.import	ROM_IN,0x75CD70,0x20
.align 4	::	file_75CD90:	.import	ROM_IN,0x75CD90,0x20
.align 4	::	file_75CDB0:	.import	ROM_IN,0x75CDB0,0x20
.align 4	::	file_75CDD0:	.import	ROM_IN,0x75CDD0,0x20
.align 4	::	file_75CDF0:	.import	ROM_IN,0x75CDF0,0x20
.align 4	::	file_75CE10:	.import	ROM_IN,0x75CE10,0x20
.align 4	::	file_75CE30:	.import	ROM_IN,0x75CE30,0x20
.align 4	::	file_75CE50:	.import	ROM_IN,0x75CE50,0x20
.align 4	::	file_75CE70:	.import	ROM_IN,0x75CE70,0x20
.align 4	::	file_75CE90:	.import	ROM_IN,0x75CE90,0x20
.align 4	::	file_75CEB0:	.import	ROM_IN,0x75CEB0,0x20
.align 4	::	file_75CED0:	.import	ROM_IN,0x75CED0,0x20
.align 4	::	file_75CEF0:	.import	ROM_IN,0x75CEF0,0x20
.align 4	::	file_75CF10:	.import	ROM_IN,0x75CF10,0x20
.align 4	::	file_75CF30:	.import	ROM_IN,0x75CF30,0x20
.align 4	::	file_75CF50:	.import	ROM_IN,0x75CF50,0x20
.align 4	::	file_75CF70:	.import	ROM_IN,0x75CF70,0x20
.align 4	::	file_75CF90:	.import	ROM_IN,0x75CF90,0x20
.align 4	::	file_75CFB0:	.import	ROM_IN,0x75CFB0,0x20
.align 4	::	file_75CFD0:	.import	ROM_IN,0x75CFD0,0x20
.align 4	::	file_75CFF0:	.import	ROM_IN,0x75CFF0,0x20
.align 4	::	file_75D010:	.import	ROM_IN,0x75D010,0x20
.align 4	::	file_75D030:	.import	ROM_IN,0x75D030,0x20
.align 4	::	file_75D050:	.import	ROM_IN,0x75D050,0x20
.align 4	::	file_75D070:	.import	ROM_IN,0x75D070,0x20
.align 4	::	file_75D090:	.import	ROM_IN,0x75D090,0x20
.align 4	::	file_75D0B0:	.import	ROM_IN,0x75D0B0,0x80
.align 4	::	file_75D130:	.import	ROM_IN,0x75D130,0x80
.align 4	::	file_75D1B0:	.import	ROM_IN,0x75D1B0,0x80
.align 4	::	file_75D230:	.import	ROM_IN,0x75D230,0x80
.align 4	::	file_75D2B0:	.import	ROM_IN,0x75D2B0,0x80
.align 4	::	file_75D330:	.import	ROM_IN,0x75D330,0x80
.align 4	::	file_75D3B0:	.import	ROM_IN,0x75D3B0,0x80
.align 4	::	file_75D430:	.import	ROM_IN,0x75D430,0x80
.align 4	::	file_75D4B0:	.import	ROM_IN,0x75D4B0,0x80
.align 4	::	file_75D530:	.import	ROM_IN,0x75D530,0x80
.align 4	::	file_75D5B0:	.import	ROM_IN,0x75D5B0,0x80
.align 4	::	file_75D630:	.import	ROM_IN,0x75D630,0x80
.align 4	::	file_75D6B0:	.import	ROM_IN,0x75D6B0,0x80
.align 4	::	file_75D730:	.import	ROM_IN,0x75D730,0x80
.align 4	::	file_75D7B0:	.import	ROM_IN,0x75D7B0,0x80
.align 4	::	file_75D830:	.import	ROM_IN,0x75D830,0x80
.align 4	::	file_75D8B0:	.import	ROM_IN,0x75D8B0,0x80
.align 4	::	file_75D930:	.import	ROM_IN,0x75D930,0x80
.align 4	::	file_75D9B0:	.import	ROM_IN,0x75D9B0,0x80
.align 4	::	file_75DA30:	.import	ROM_IN,0x75DA30,0x80
.align 4	::	file_75DAB0:	.import	ROM_IN,0x75DAB0,0x80
.align 4	::	file_75DB30:	.import	ROM_IN,0x75DB30,0x80
.align 4	::	file_75DBB0:	.import	ROM_IN,0x75DBB0,0x80
.align 4	::	file_75DC30:	.import	ROM_IN,0x75DC30,0x80
.align 4	::	file_75DCB0:	.import	ROM_IN,0x75DCB0,0x80
.align 4	::	file_75DD30:	.import	ROM_IN,0x75DD30,0x80
.align 4	::	file_75DDB0:	.import	ROM_IN,0x75DDB0,0x80
.align 4	::	file_75DE30:	.import	ROM_IN,0x75DE30,0x80
.align 4	::	file_75DEB0:	.import	ROM_IN,0x75DEB0,0x80
.align 4	::	file_75DF30:	.import	ROM_IN,0x75DF30,0x80
.align 4	::	file_75DFB0:	.import	ROM_IN,0x75DFB0,0x80
.align 4	::	file_75E030:	.import	ROM_IN,0x75E030,0x80
.align 4	::	file_75E0B0:	.import	ROM_IN,0x75E0B0,0x80
.align 4	::	file_75E130:	.import	ROM_IN,0x75E130,0x80
.align 4	::	file_75E1B0:	.import	ROM_IN,0x75E1B0,0x80
.align 4	::	file_75E230:	.import	ROM_IN,0x75E230,0x80
.align 4	::	file_75E2B0:	.import	ROM_IN,0x75E2B0,0x80
.align 4	::	file_75E330:	.import	ROM_IN,0x75E330,0x80
.align 4	::	file_75E3B0:	.import	ROM_IN,0x75E3B0,0x80
.align 4	::	file_75E430:	.import	ROM_IN,0x75E430,0x80
.align 4	::	file_75E4B0:	.import	ROM_IN,0x75E4B0,0x80
.align 4	::	file_75E530:	.import	ROM_IN,0x75E530,0x80
.align 4	::	file_75E5B0:	.import	ROM_IN,0x75E5B0,0x80
.align 4	::	file_75E630:	.import	ROM_IN,0x75E630,0x80
.align 4	::	file_75E6B0:	.import	ROM_IN,0x75E6B0,0x80
.align 4	::	file_75E730:	.import	ROM_IN,0x75E730,0x80
.align 4	::	file_75E7B0:	.import	ROM_IN,0x75E7B0,0x80
.align 4	::	file_75E830:	.import	ROM_IN,0x75E830,0x80
.align 4	::	file_75E8B0:	.import	ROM_IN,0x75E8B0,0x80
.align 4	::	file_75E930:	.import	ROM_IN,0x75E930,0x80
.align 4	::	file_75E9B0:	.import	ROM_IN,0x75E9B0,0x80
.align 4	::	file_75EA30:	.import	ROM_IN,0x75EA30,0x80
.align 4	::	file_75EAB0:	.import	ROM_IN,0x75EAB0,0x80
.align 4	::	file_75EB30:	.import	ROM_IN,0x75EB30,0x80
.align 4	::	file_75EBB0:	.import	ROM_IN,0x75EBB0,0x80
.align 4	::	file_75EC30:	.import	ROM_IN,0x75EC30,0x80
.align 4	::	file_75ECB0:	.import	ROM_IN,0x75ECB0,0x80
.align 4	::	file_75ED30:	.import	ROM_IN,0x75ED30,0x80
.align 4	::	file_75EDB0:	.import	ROM_IN,0x75EDB0,0x80
.align 4	::	file_75EE30:	.import	ROM_IN,0x75EE30,0x80
.align 4	::	file_75EEB0:	.import	ROM_IN,0x75EEB0,0x80
.align 4	::	file_75EF30:	.import	ROM_IN,0x75EF30,0x80
.align 4	::	file_75EFB0:	.import	ROM_IN,0x75EFB0,0x80
.align 4	::	file_75F030:	.import	ROM_IN,0x75F030,0x80
.align 4	::	file_75F0B0:	.import	ROM_IN,0x75F0B0,0x80
.align 4	::	file_75F130:	.import	ROM_IN,0x75F130,0x80
.align 4	::	file_75F1B0:	.import	ROM_IN,0x75F1B0,0x80
.align 4	::	file_75F230:	.import	ROM_IN,0x75F230,0x80
.align 4	::	file_75F2B0:	.import	ROM_IN,0x75F2B0,0x80
.align 4	::	file_75F330:	.import	ROM_IN,0x75F330,0x80
.align 4	::	file_75F3B0:	.import	ROM_IN,0x75F3B0,0x80
.align 4	::	file_75F430:	.import	ROM_IN,0x75F430,0x80
.align 4	::	file_75F4B0:	.import	ROM_IN,0x75F4B0,0x80
.align 4	::	file_75F530:	.import	ROM_IN,0x75F530,0x80
.align 4	::	file_75F5B0:	.import	ROM_IN,0x75F5B0,0x80
.align 4	::	file_75F630:	.import	ROM_IN,0x75F630,0x80
.align 4	::	file_75F6B0:	.import	ROM_IN,0x75F6B0,0x80
.align 4	::	file_75F730:	.import	ROM_IN,0x75F730,0x80
.align 4	::	file_75F7B0:	.import	ROM_IN,0x75F7B0,0x80
.align 4	::	file_75F830:	.import	ROM_IN,0x75F830,0x80
.align 4	::	file_75F8B0:	.import	ROM_IN,0x75F8B0,0x80
.align 4	::	file_75F930:	.import	ROM_IN,0x75F930,0x80
.align 4	::	file_75F9B0:	.import	ROM_IN,0x75F9B0,0x80
.align 4	::	file_75FA30:	.import	ROM_IN,0x75FA30,0x80
.align 4	::	file_75FAB0:	.import	ROM_IN,0x75FAB0,0x80
.align 4	::	file_75FB30:	.import	ROM_IN,0x75FB30,0x80
.align 4	::	file_75FBB0:	.import	ROM_IN,0x75FBB0,0x80
.align 4	::	file_75FC30:	.import	ROM_IN,0x75FC30,0x80
.align 4	::	file_75FCB0:	.import	ROM_IN,0x75FCB0,0x80
.align 4	::	file_75FD30:	.import	ROM_IN,0x75FD30,0x80
.align 4	::	file_75FDB0:	.import	ROM_IN,0x75FDB0,0x80
.align 4	::	file_75FE30:	.import	ROM_IN,0x75FE30,0x80
.align 4	::	file_75FEB0:	.import	ROM_IN,0x75FEB0,0x80
.align 4	::	file_75FF30:	.import	ROM_IN,0x75FF30,0x80
.align 4	::	file_75FFB0:	.import	ROM_IN,0x75FFB0,0x80
.align 4	::	file_760030:	.import	ROM_IN,0x760030,0x80
.align 4	::	file_7600B0:	.import	ROM_IN,0x7600B0,0x80
.align 4	::	file_760130:	.import	ROM_IN,0x760130,0x80
.align 4	::	file_7601B0:	.import	ROM_IN,0x7601B0,0x80
.align 4	::	file_760230:	.import	ROM_IN,0x760230,0x80
.align 4	::	file_7602B0:	.import	ROM_IN,0x7602B0,0x80
.align 4	::	file_760330:	.import	ROM_IN,0x760330,0x80
.align 4	::	file_7603B0:	.import	ROM_IN,0x7603B0,0x80
.align 4	::	file_760430:	.import	ROM_IN,0x760430,0x80
.align 4	::	file_7604B0:	.import	ROM_IN,0x7604B0,0x80
.align 4	::	file_760530:	.import	ROM_IN,0x760530,0x80
.align 4	::	file_7605B0:	.import	ROM_IN,0x7605B0,0x80
.align 4	::	file_760630:	.import	ROM_IN,0x760630,0x80
.align 4	::	file_7606B0:	.import	ROM_IN,0x7606B0,0x80
.align 4	::	file_760730:	.import	ROM_IN,0x760730,0x80
.align 4	::	file_7607B0:	.import	ROM_IN,0x7607B0,0x80
.align 4	::	file_760830:	.import	ROM_IN,0x760830,0x80
.align 4	::	file_7608B0:	.import	ROM_IN,0x7608B0,0x80
.align 4	::	file_760930:	.import	ROM_IN,0x760930,0x80
.align 4	::	file_7609B0:	.import	ROM_IN,0x7609B0,0x80
.align 4	::	file_760A30:	.import	ROM_IN,0x760A30,0x80
.align 4	::	file_760AB0:	.import	ROM_IN,0x760AB0,0x80
.align 4	::	file_760B30:	.import	ROM_IN,0x760B30,0x80
.align 4	::	file_760BB0:	.import	ROM_IN,0x760BB0,0x80
.align 4	::	file_760C30:	.import	ROM_IN,0x760C30,0x80
.align 4	::	file_760CB0:	.import	ROM_IN,0x760CB0,0x80
.align 4	::	file_760D30:	.import	ROM_IN,0x760D30,0x80
.align 4	::	file_760DB0:	.import	ROM_IN,0x760DB0,0x80
.align 4	::	file_760E30:	.import	ROM_IN,0x760E30,0x80
.align 4	::	file_760EB0:	.import	ROM_IN,0x760EB0,0x80
.align 4	::	file_760F30:	.import	ROM_IN,0x760F30,0x80
.align 4	::	file_760FB0:	.import	ROM_IN,0x760FB0,0x80
.align 4	::	file_761030:	.import	ROM_IN,0x761030,0x80
.align 4	::	file_7610B0:	.import	ROM_IN,0x7610B0,0x80
.align 4	::	file_761130:	.import	ROM_IN,0x761130,0x80
.align 4	::	file_7611B0:	.import	ROM_IN,0x7611B0,0x80
.align 4	::	file_761230:	.import	ROM_IN,0x761230,0x80
.align 4	::	file_7612B0:	.import	ROM_IN,0x7612B0,0x80
.align 4	::	file_761330:	.import	ROM_IN,0x761330,0x80
.align 4	::	file_7613B0:	.import	ROM_IN,0x7613B0,0x80
.align 4	::	file_761430:	.import	ROM_IN,0x761430,0x80
.align 4	::	file_7614B0:	.import	ROM_IN,0x7614B0,0x80
.align 4	::	file_761530:	.import	ROM_IN,0x761530,0x80
.align 4	::	file_7615B0:	.import	ROM_IN,0x7615B0,0x80
.align 4	::	file_761630:	.import	ROM_IN,0x761630,0x80
.align 4	::	file_7616B0:	.import	ROM_IN,0x7616B0,0x80
.align 4	::	file_761730:	.import	ROM_IN,0x761730,0x80
.align 4	::	file_7617B0:	.import	ROM_IN,0x7617B0,0x80
.align 4	::	file_761830:	.import	ROM_IN,0x761830,0x80
.align 4	::	file_7618B0:	.import	ROM_IN,0x7618B0,0x80
.align 4	::	file_761930:	.import	ROM_IN,0x761930,0x80
.align 4	::	file_7619B0:	.import	ROM_IN,0x7619B0,0x80
.align 4	::	file_761A30:	.import	ROM_IN,0x761A30,0x80
.align 4	::	file_761AB0:	.import	ROM_IN,0x761AB0,0x80
.align 4	::	file_761B30:	.import	ROM_IN,0x761B30,0x80
.align 4	::	file_761BB0:	.import	ROM_IN,0x761BB0,0x80
.align 4	::	file_761C30:	.import	ROM_IN,0x761C30,0x80
.align 4	::	file_761CB0:	.import	ROM_IN,0x761CB0,0x80
.align 4	::	file_761D30:	.import	ROM_IN,0x761D30,0x80
.align 4	::	file_761DB0:	.import	ROM_IN,0x761DB0,0x80
.align 4	::	file_761E30:	.import	ROM_IN,0x761E30,0x80
.align 4	::	file_761EB0:	.import	ROM_IN,0x761EB0,0x80
.align 4	::	file_761F30:	.import	ROM_IN,0x761F30,0x80
.align 4	::	file_761FB0:	.import	ROM_IN,0x761FB0,0x80
.align 4	::	file_762030:	.import	ROM_IN,0x762030,0x80
.align 4	::	file_7620B0:	.import	ROM_IN,0x7620B0,0x80
.align 4	::	file_762130:	.import	ROM_IN,0x762130,0x80
.align 4	::	file_7621B0:	.import	ROM_IN,0x7621B0,0x80
.align 4	::	file_762230:	.import	ROM_IN,0x762230,0x80
.align 4	::	file_7622B0:	.import	ROM_IN,0x7622B0,0x80
.align 4	::	file_762330:	.import	ROM_IN,0x762330,0x80
.align 4	::	file_7623B0:	.import	ROM_IN,0x7623B0,0x80
.align 4	::	file_762430:	.import	ROM_IN,0x762430,0x80
.align 4	::	file_7624B0:	.import	ROM_IN,0x7624B0,0x80
.align 4	::	file_762530:	.import	ROM_IN,0x762530,0x80
.align 4	::	file_7625B0:	.import	ROM_IN,0x7625B0,0x80
.align 4	::	file_762630:	.import	ROM_IN,0x762630,0x80
.align 4	::	file_7626B0:	.import	ROM_IN,0x7626B0,0x80
.align 4	::	file_762730:	.import	ROM_IN,0x762730,0x80
.align 4	::	file_7627B0:	.import	ROM_IN,0x7627B0,0x80
.align 4	::	file_762830:	.import	ROM_IN,0x762830,0x80
.align 4	::	file_7628B0:	.import	ROM_IN,0x7628B0,0x80
.align 4	::	file_762930:	.import	ROM_IN,0x762930,0x80
.align 4	::	file_7629B0:	.import	ROM_IN,0x7629B0,0x80
.align 4	::	file_762A30:	.import	ROM_IN,0x762A30,0x80
.align 4	::	file_762AB0:	.import	ROM_IN,0x762AB0,0x80
.align 4	::	file_762B30:	.import	ROM_IN,0x762B30,0x80
.align 4	::	file_762BB0:	.import	ROM_IN,0x762BB0,0x80
.align 4	::	file_762C30:	.import	ROM_IN,0x762C30,0x80
.align 4	::	file_762CB0:	.import	ROM_IN,0x762CB0,0x80
.align 4	::	file_762D30:	.import	ROM_IN,0x762D30,0x80
.align 4	::	file_762DB0:	.import	ROM_IN,0x762DB0,0x80
.align 4	::	file_762E30:	.import	ROM_IN,0x762E30,0x80
.align 4	::	file_762EB0:	.import	ROM_IN,0x762EB0,0x80
.align 4	::	file_762F30:	.import	ROM_IN,0x762F30,0x80
.align 4	::	file_762FB0:	.import	ROM_IN,0x762FB0,0x80
.align 4	::	file_763030:	.import	ROM_IN,0x763030,0x80
.align 4	::	file_7630B0:	.import	ROM_IN,0x7630B0,0x80
.align 4	::	file_763130:	.import	ROM_IN,0x763130,0x80
.align 4	::	file_7631B0:	.import	ROM_IN,0x7631B0,0x80
.align 4	::	file_763230:	.import	ROM_IN,0x763230,0x80
.align 4	::	file_7632B0:	.import	ROM_IN,0x7632B0,0x80
.align 4	::	file_763330:	.import	ROM_IN,0x763330,0x80
.align 4	::	file_7633B0:	.import	ROM_IN,0x7633B0,0x80
.align 4	::	file_763430:	.import	ROM_IN,0x763430,0x80
.align 4	::	file_7634B0:	.import	ROM_IN,0x7634B0,0x80
.align 4	::	file_763530:	.import	ROM_IN,0x763530,0x80
.align 4	::	file_7635B0:	.import	ROM_IN,0x7635B0,0x80
.align 4	::	file_763630:	.import	ROM_IN,0x763630,0x80
.align 4	::	file_7636B0:	.import	ROM_IN,0x7636B0,0x80
.align 4	::	file_763730:	.import	ROM_IN,0x763730,0x80
.align 4	::	file_7637B0:	.import	ROM_IN,0x7637B0,0x80
.align 4	::	file_763830:	.import	ROM_IN,0x763830,0x80
.align 4	::	file_7638B0:	.import	ROM_IN,0x7638B0,0x80
.align 4	::	file_763930:	.import	ROM_IN,0x763930,0x80
.align 4	::	file_7639B0:	.import	ROM_IN,0x7639B0,0x80
.align 4	::	file_763A30:	.import	ROM_IN,0x763A30,0x80
.align 4	::	file_763AB0:	.import	ROM_IN,0x763AB0,0x80
.align 4	::	file_763B30:	.import	ROM_IN,0x763B30,0x80
.align 4	::	file_763BB0:	.import	ROM_IN,0x763BB0,0x80
.align 4	::	file_763C30:	.import	ROM_IN,0x763C30,0x80
.align 4	::	file_763CB0:	.import	ROM_IN,0x763CB0,0x80
.align 4	::	file_763D30:	.import	ROM_IN,0x763D30,0x80
.align 4	::	file_763DB0:	.import	ROM_IN,0x763DB0,0x80
.align 4	::	file_763E30:	.import	ROM_IN,0x763E30,0x80
.align 4	::	file_763EB0:	.import	ROM_IN,0x763EB0,0x80
.align 4	::	file_763F30:	.import	ROM_IN,0x763F30,0x80
.align 4	::	file_763FB0:	.import	ROM_IN,0x763FB0,0x80
.align 4	::	file_764030:	.import	ROM_IN,0x764030,0x80
.align 4	::	file_7640B0:	.import	ROM_IN,0x7640B0,0x80
.align 4	::	file_764130:	.import	ROM_IN,0x764130,0x80
.align 4	::	file_7641B0:	.import	ROM_IN,0x7641B0,0x80
.align 4	::	file_764230:	.import	ROM_IN,0x764230,0x80
.align 4	::	file_7642B0:	.import	ROM_IN,0x7642B0,0x80
.align 4	::	file_764330:	.import	ROM_IN,0x764330,0x80
.align 4	::	file_7643B0:	.import	ROM_IN,0x7643B0,0x80
.align 4	::	file_764430:	.import	ROM_IN,0x764430,0x80
.align 4	::	file_7644B0:	.import	ROM_IN,0x7644B0,0x80
.align 4	::	file_764530:	.import	ROM_IN,0x764530,0x80
.align 4	::	file_7645B0:	.import	ROM_IN,0x7645B0,0x80
.align 4	::	file_764630:	.import	ROM_IN,0x764630,0x80
.align 4	::	file_7646B0:	.import	ROM_IN,0x7646B0,0x80
.align 4	::	file_764730:	.import	ROM_IN,0x764730,0x80
.align 4	::	file_7647B0:	.import	ROM_IN,0x7647B0,0x80
.align 4	::	file_764830:	.import	ROM_IN,0x764830,0x80
.align 4	::	file_7648B0:	.import	ROM_IN,0x7648B0,0x80
.align 4	::	file_764930:	.import	ROM_IN,0x764930,0x80
.align 4	::	file_7649B0:	.import	ROM_IN,0x7649B0,0x80
.align 4	::	file_764A30:	.import	ROM_IN,0x764A30,0x80
.align 4	::	file_764AB0:	.import	ROM_IN,0x764AB0,0x80
.align 4	::	file_764B30:	.import	ROM_IN,0x764B30,0x80
.align 4	::	file_764BB0:	.import	ROM_IN,0x764BB0,0x80
.align 4	::	file_764C30:	.import	ROM_IN,0x764C30,0x80
.align 4	::	file_764CB0:	.import	ROM_IN,0x764CB0,0x80
.align 4	::	file_764D30:	.import	ROM_IN,0x764D30,0x80
.align 4	::	file_764DB0:	.import	ROM_IN,0x764DB0,0x80
.align 4	::	file_764E30:	.import	ROM_IN,0x764E30,0x80
.align 4	::	file_764EB0:	.import	ROM_IN,0x764EB0,0x80
.align 4	::	file_764F30:	.import	ROM_IN,0x764F30,0x80
.align 4	::	file_764FB0:	.import	ROM_IN,0x764FB0,0x40
.align 4	::	file_764FF0:	.import	ROM_IN,0x764FF0,0x20
.align 4	::	file_765010:	.import	ROM_IN,0x765010,0x180
.align 4	::	file_765190:	.import TEMP+"/765190.msg"
.align 4	::	file_765B18:	.import TEMP+"/765B18.msg"
.align 4	::	file_765F68:	.import TEMP+"/765F68.msg"
.align 4	::	file_765F70:	.import TEMP+"/765F70.msg"
.align 4	::	file_765F7C:	.import TEMP+"/765F7C.msg"
.align 4	::	file_765FEC:	.import TEMP+"/765FEC.msg"
.align 4	::	file_766060:	.import TEMP+"/766060.msg"
.align 4	::	file_766134:	.import TEMP+"/766134.msg"
.align 4	::	file_767E0C:	.import TEMP+"/767E0C.msg"
.align 4	::	file_768764:	.import TEMP+"/768764.msg"
.align 4	::	file_768800:	.import TEMP+"/768800.msg"
.align 4	::	file_768BD0:	.import TEMP+"/768BD0.msg"
.align 4	::	file_76937C:	.import TEMP+"/76937C.msg"
.align 4	::	file_76BC60:	.import TEMP+"/76BC60.msg"
.align 4	::	file_76C918:	.import TEMP+"/76C918.msg"
.align 4	::	file_76C92C:	.import TEMP+"/76C92C.msg"
.align 4	::	file_76C944:	.import TEMP+"/76C944.msg"
.align 4	::	file_76DAC0:	.import	ROM_IN,0x76DAC0,0x40
.align 4	::	file_76DB00:	.import	ROM_IN,0x76DB00,0x40
.align 4	::	file_76DB40:	.import	ROM_IN,0x76DB40,0x40
.align 4	::	file_76DB80:	.import	ROM_IN,0x76DB80,0x40
.align 4	::	file_76DBC0:	.import	ROM_IN,0x76DBC0,0x40
.align 4	::	file_76DC00:	.import	ROM_IN,0x76DC00,0x40
.align 4	::	file_76DC40:	.import	ROM_IN,0x76DC40,0x40
.align 4	::	file_76DC80:	.import	ROM_IN,0x76DC80,0x40
.align 4	::	file_76DCC0:	.import	ROM_IN,0x76DCC0,0x40
.align 4	::	file_76DD00:	.import	ROM_IN,0x76DD00,0x40
.align 4	::	file_76DD40:	.import	ROM_IN,0x76DD40,0x40
.align 4	::	file_76DD80:	.import	ROM_IN,0x76DD80,0x40
.align 4	::	file_76DDC0:	.import	ROM_IN,0x76DDC0,0x40
.align 4	::	file_76DE00:	.import	ROM_IN,0x76DE00,0x40
.align 4	::	file_76DE40:	.import	ROM_IN,0x76DE40,0x40
.align 4	::	file_76DE80:	.import	ROM_IN,0x76DE80,0x40
.align 4	::	file_76DEC0:	.import	ROM_IN,0x76DEC0,0x40
.align 4	::	file_76DF00:	.import	ROM_IN,0x76DF00,0x40
.align 4	::	file_76DF40:	.import	ROM_IN,0x76DF40,0x40
.align 4	::	file_76DF80:	.import	ROM_IN,0x76DF80,0x40
.align 4	::	file_76DFC0:	.import	ROM_IN,0x76DFC0,0x40
.align 4	::	file_76E000:	.import	ROM_IN,0x76E000,0x40
.align 4	::	file_76E040:	.import	ROM_IN,0x76E040,0x40
.align 4	::	file_76E080:	.import	ROM_IN,0x76E080,0x40
.align 4	::	file_76E0C0:	.import	ROM_IN,0x76E0C0,0x40
.align 4	::	file_76E100:	.import	ROM_IN,0x76E100,0x40
.align 4	::	file_76E140:	.import	ROM_IN,0x76E140,0x40
.align 4	::	file_76E180:	.import	ROM_IN,0x76E180,0x40
.align 4	::	file_76E1C0:	.import	ROM_IN,0x76E1C0,0x40
.align 4	::	file_76E200:	.import	ROM_IN,0x76E200,0x40
.align 4	::	file_76E240:	.import	TEMP+"/76E240.img.bin"
.align 4	::	file_76E280:	.import	ROM_IN,0x76E280,0x40
.align 4	::	file_76E2C0:	.import	ROM_IN,0x76E2C0,0x40
.align 4	::	file_76E300:	.import	ROM_IN,0x76E300,0x40
.align 4	::	file_76E340:	.import	ROM_IN,0x76E340,0x40
.align 4	::	file_76E380:	.import	ROM_IN,0x76E380,0x40
.align 4	::	file_76E3C0:	.import	ROM_IN,0x76E3C0,0x40
.align 4	::	file_76E400:	.import	ROM_IN,0x76E400,0x40
.align 4	::	file_76E440:	.import	ROM_IN,0x76E440,0x40
.align 4	::	file_76E480:	.import	ROM_IN,0x76E480,0x40
.align 4	::	file_76E4C0:	.import	ROM_IN,0x76E4C0,0x40
.align 4	::	file_76E500:	.import	ROM_IN,0x76E500,0x40
.align 4	::	file_76E540:	.import	ROM_IN,0x76E540,0x40
.align 4	::	file_76E580:	.import	ROM_IN,0x76E580,0x40
.align 4	::	file_76E5C0:	.import	ROM_IN,0x76E5C0,0x40
.align 4	::	file_76E600:	.import	ROM_IN,0x76E600,0x40
.align 4	::	file_76E640:	.import	ROM_IN,0x76E640,0x40
.align 4	::	file_76E680:	.import	ROM_IN,0x76E680,0x40
.align 4	::	file_76E6C0:	.import	ROM_IN,0x76E6C0,0x40
.align 4	::	file_76E700:	.import	ROM_IN,0x76E700,0x40
.align 4	::	file_76E740:	.import	ROM_IN,0x76E740,0x40
.align 4	::	file_76E780:	.import	TEMP+"/76E780.img.bin"
.align 4	::	file_76E940:	.import	TEMP+"/76E940.img.bin"
.align 4	::	file_76EBC0:	.import	ROM_IN,0x76EBC0,0x1C0
.align 4	::	file_76ED80:	.import	TEMP+"/76ED80.pal.bin"
.align 4	::	file_76EDA0:	.import	ROM_IN,0x76EDA0,0x20
.align 4	::	file_76EDC0:	.import	ROM_IN,0x76EDC0,0x20
.align 4	::	file_76EDE0:	.import	ROM_IN,0x76EDE0,0x500
.align 4	::	file_76F2E0:	.import	ROM_IN,0x76F2E0,0x500
.align 4	::	file_76F7E0:	.import	ROM_IN,0x76F7E0,0x500
.align 4	::	file_76FCE0:	.import	ROM_IN,0x76FCE0,0x20
.align 4	::	file_76FD00:	.import	ROM_IN,0x76FD00,0x300
.align 4	::	file_770000:	.import	ROM_IN,0x770000,0x80
.align 4	::	file_770080:	.import	TEMP+"/770080.img.bin"
.align 4	::	file_7700E0:	.import	TEMP+"/7700E0.img.bin"
.align 4	::	file_770140:	.import	TEMP+"/770140.img.bin"
.align 4	::	file_7704A0:	.import	TEMP+"/7704A0.img.bin"
.align 4	::	file_7711A0:	.import	TEMP+"/7711A0.img.bin"
.align 4	::	file_771EA0:	.import	TEMP+"/771EA0.img.bin"
.align 4	::	file_772B20:	.import	TEMP+"/772B20.map.bin"
.align 4	::	file_772E50:	.import	TEMP+"/772E50.map.bin"
.align 4	::	file_773180:	.import	TEMP+"/773180.map.bin"
.align 4	::	file_7734B0:	.import	ROM_IN,0x7734B0,0x8A0
.align 4	::	file_773D50:	.import	ROM_IN,0x773D50,0x600
.align 4	::	file_774350:	.import	ROM_IN,0x774350,0x540
.align 4	::	file_774890:	.import	ROM_IN,0x774890,0x20
.align 4	::	file_7748B0:	.import	ROM_IN,0x7748B0,0x540
.align 4	::	file_774DF0:	.import	ROM_IN,0x774DF0,0x20
.align 4	::	file_774E10:	.import	ROM_IN,0x774E10,0x540
.align 4	::	file_775350:	.import	ROM_IN,0x775350,0x20
.align 4	::	file_775370:	.import	ROM_IN,0x775370,0x540
.align 4	::	file_7758B0:	.import	ROM_IN,0x7758B0,0x20
.align 4	::	file_7758D0:	.import	ROM_IN,0x7758D0,0x540
.align 4	::	file_775E10:	.import	ROM_IN,0x775E10,0x80
.align 4	::	file_775E90:	.import TEMP+"/775E90.msg"
.align 4	::	file_776198:	.import TEMP+"/776198.msg"
.align 4	::	file_776650:	.import TEMP+"/776650.msg"
.align 4	::	file_777F58:	.import	ROM_IN,0x777F58,0x340
.align 4	::	file_778298:	.import	ROM_IN,0x778298,0x10
.align 4	::	file_7782A8:	.import TEMP+"/7782A8.msg"
.align 4	::	file_778338:	.import TEMP+"/778338.msg"
.align 4	::	file_778A4C:	.import TEMP+"/778A4C.msg"
.align 4	::	file_778B08:	.import TEMP+"/778B08.msg"
.align 4	::	file_778C6C:	.import TEMP+"/778C6C.msg"
.align 4	::	file_778CC0:	.import TEMP+"/778CC0.msg"
.align 4	::	file_7794EC:	.import TEMP+"/7794EC.msg"
//.align 4	::	file_77994C:	.import TEMP+"/77994C.msg"	// Mega    L Button Internet 1-4
//.align 4	::	file_779CB0:	.import TEMP+"/779CB0.msg"	// Roll    L Button Internet 1-4
//.align 4	::	file_77A020:	.import TEMP+"/77A020.msg"	// Guts    L Button Internet 1-4
//.align 4	::	file_77A368:	.import TEMP+"/77A368.msg"	// Wind    L Button Internet 1-4
//.align 4	::	file_77A6B8:	.import TEMP+"/77A6B8.msg"	// Search  L Button Internet 1-4
//.align 4	::	file_77A9F4:	.import TEMP+"/77A9F4.msg"	// Fire    L Button Internet 1-4
//.align 4	::	file_77AD64:	.import TEMP+"/77AD64.msg"	// Thunder L Button Internet 1-4
//.align 4	::	file_77B0A4:	.import TEMP+"/77B0A4.msg"	// Proto   L Button Internet 1-4
//.align 4	::	file_77B404:	.import TEMP+"/77B404.msg"	// Number  L Button Internet 1-4
//.align 4	::	file_77B778:	.import TEMP+"/77B778.msg"	// Metal   L Button Internet 1-4
//.align 4	::	file_77BAD0:	.import TEMP+"/77BAD0.msg"	// Junk    L Button Internet 1-4
//.align 4	::	file_77BE48:	.import TEMP+"/77BE48.msg"	// Aqua    L Button Internet 1-4
//.align 4	::	file_77C1B0:	.import TEMP+"/77C1B0.msg"	// Wood    L Button Internet 1-4
//.align 4	::	file_77C4FC:	.import TEMP+"/77C4FC.msg"	// Star    L Button Internet 1-4
//.align 4	::	file_77C854:	.import TEMP+"/77C854.msg"	// Shadow  L Button Internet 1-4
//.align 4	::	file_77CBD0:	.import TEMP+"/77CBD0.msg"	// Knight  L Button Internet 1-4
//.align 4	::	file_77CF5C:	.import TEMP+"/77CF5C.msg"	// Napalm  L Button Internet 1-4
//.align 4	::	file_77D2D4:	.import TEMP+"/77D2D4.msg"	// Ice     L Button Internet 1-4
//.align 4	::	file_77D608:	.import TEMP+"/77D608.msg"	// Elec    L Button Internet 1-4
//.align 4	::	file_77D960:	.import TEMP+"/77D960.msg"	// Plant   L Button Internet 1-4
//.align 4	::	file_77DCBC:	.import TEMP+"/77DCBC.msg"	// Bass    L Button Internet 1-4
//.align 4	::	file_77DFF8:	.import TEMP+"/77DFF8.msg"	// Mega    L Button Internet 5-8
//.align 4	::	file_77E35C:	.import TEMP+"/77E35C.msg"	// Roll    L Button Internet 5-8
//.align 4	::	file_77E6C0:	.import TEMP+"/77E6C0.msg"	// Guts    L Button Internet 5-8
//.align 4	::	file_77EA08:	.import TEMP+"/77EA08.msg"	// Wind    L Button Internet 5-8
//.align 4	::	file_77ED58:	.import TEMP+"/77ED58.msg"	// Search  L Button Internet 5-8
//.align 4	::	file_77F094:	.import TEMP+"/77F094.msg"	// Fire    L Button Internet 5-8
//.align 4	::	file_77F404:	.import TEMP+"/77F404.msg"	// Thunder L Button Internet 5-8
//.align 4	::	file_77F744:	.import TEMP+"/77F744.msg"	// Proto   L Button Internet 5-8
//.align 4	::	file_77FAA4:	.import TEMP+"/77FAA4.msg"	// Number  L Button Internet 5-8
//.align 4	::	file_77FE18:	.import TEMP+"/77FE18.msg"	// Metal   L Button Internet 5-8
//.align 4	::	file_780170:	.import TEMP+"/780170.msg"	// Junk    L Button Internet 5-8
//.align 4	::	file_7804E8:	.import TEMP+"/7804E8.msg"	// Aqua    L Button Internet 5-8
//.align 4	::	file_780850:	.import TEMP+"/780850.msg"	// Wood    L Button Internet 5-8
//.align 4	::	file_780B9C:	.import TEMP+"/780B9C.msg"	// Star    L Button Internet 5-8
//.align 4	::	file_780EF4:	.import TEMP+"/780EF4.msg"	// Shadow  L Button Internet 5-8
//.align 4	::	file_781270:	.import TEMP+"/781270.msg"	// Knight  L Button Internet 5-8
//.align 4	::	file_7815FC:	.import TEMP+"/7815FC.msg"	// Napalm  L Button Internet 5-8
//.align 4	::	file_781974:	.import TEMP+"/781974.msg"	// Ice     L Button Internet 5-8
//.align 4	::	file_781CA8:	.import TEMP+"/781CA8.msg"	// Elec    L Button Internet 5-8
//.align 4	::	file_782000:	.import TEMP+"/782000.msg"	// Plant   L Button Internet 5-8
//.align 4	::	file_78235C:	.import TEMP+"/78235C.msg"	// Bass    L Button Internet 5-8
//.align 4	::	file_782698:	.import TEMP+"/782698.msg"	// Mega    L Button Internet 9-12
//.align 4	::	file_7829FC:	.import TEMP+"/7829FC.msg"	// Roll    L Button Internet 9-12
//.align 4	::	file_782D60:	.import TEMP+"/782D60.msg"	// Guts    L Button Internet 9-12
//.align 4	::	file_7830A8:	.import TEMP+"/7830A8.msg"	// Wind    L Button Internet 9-12
//.align 4	::	file_7833F8:	.import TEMP+"/7833F8.msg"	// Search  L Button Internet 9-12
//.align 4	::	file_783734:	.import TEMP+"/783734.msg"	// Fire    L Button Internet 9-12
//.align 4	::	file_783AA4:	.import TEMP+"/783AA4.msg"	// Thunder L Button Internet 9-12
//.align 4	::	file_783DE4:	.import TEMP+"/783DE4.msg"	// Proto   L Button Internet 9-12
//.align 4	::	file_784144:	.import TEMP+"/784144.msg"	// Number  L Button Internet 9-12
//.align 4	::	file_7844B8:	.import TEMP+"/7844B8.msg"	// Metal   L Button Internet 9-12
//.align 4	::	file_784810:	.import TEMP+"/784810.msg"	// Junk    L Button Internet 9-12
//.align 4	::	file_784B88:	.import TEMP+"/784B88.msg"	// Aqua    L Button Internet 9-12
//.align 4	::	file_784EF0:	.import TEMP+"/784EF0.msg"	// Wood    L Button Internet 9-12
//.align 4	::	file_78523C:	.import TEMP+"/78523C.msg"	// Star    L Button Internet 9-12
//.align 4	::	file_785594:	.import TEMP+"/785594.msg"	// Shadow  L Button Internet 9-12
//.align 4	::	file_785910:	.import TEMP+"/785910.msg"	// Knight  L Button Internet 9-12
//.align 4	::	file_785C9C:	.import TEMP+"/785C9C.msg"	// Napalm  L Button Internet 9-12
//.align 4	::	file_786014:	.import TEMP+"/786014.msg"	// Ice     L Button Internet 9-12
//.align 4	::	file_786348:	.import TEMP+"/786348.msg"	// Elec    L Button Internet 9-12
//.align 4	::	file_7866A0:	.import TEMP+"/7866A0.msg"	// Plant   L Button Internet 9-12
//.align 4	::	file_7869FC:	.import TEMP+"/7869FC.msg"	// Bass    L Button Internet 9-12
.align 4	::	file_786D38:	.import TEMP+"/786D38.msg"	// Mega    L Button Undernet
.align 4	::	file_7870A8:	.import TEMP+"/7870A8.msg"	// Roll    L Button Undernet
.align 4	::	file_787418:	.import TEMP+"/787418.msg"	// Guts    L Button Undernet
.align 4	::	file_78776C:	.import TEMP+"/78776C.msg"	// Wind    L Button Undernet
.align 4	::	file_787ACC:	.import TEMP+"/787ACC.msg"	// Search  L Button Undernet
.align 4	::	file_787E18:	.import TEMP+"/787E18.msg"	// Fire    L Button Undernet
.align 4	::	file_788198:	.import TEMP+"/788198.msg"	// Thunder L Button Undernet
.align 4	::	file_7884E8:	.import TEMP+"/7884E8.msg"	// Proto   L Button Undernet
.align 4	::	file_788858:	.import TEMP+"/788858.msg"	// Number  L Button Undernet
.align 4	::	file_788BD8:	.import TEMP+"/788BD8.msg"	// Metal   L Button Undernet
.align 4	::	file_788F40:	.import TEMP+"/788F40.msg"	// Junk    L Button Undernet
.align 4	::	file_7892C8:	.import TEMP+"/7892C8.msg"	// Aqua    L Button Undernet
.align 4	::	file_78963C:	.import TEMP+"/78963C.msg"	// Wood    L Button Undernet
.align 4	::	file_789998:	.import TEMP+"/789998.msg"	// Star    L Button Undernet
.align 4	::	file_789D00:	.import TEMP+"/789D00.msg"	// Shadow  L Button Undernet
.align 4	::	file_78A088:	.import TEMP+"/78A088.msg"	// Knight  L Button Undernet
.align 4	::	file_78A420:	.import TEMP+"/78A420.msg"	// Napalm  L Button Undernet
.align 4	::	file_78A7A8:	.import TEMP+"/78A7A8.msg"	// Ice     L Button Undernet
.align 4	::	file_78AAF0:	.import TEMP+"/78AAF0.msg"	// Elec    L Button Undernet
.align 4	::	file_78AE58:	.import TEMP+"/78AE58.msg"	// Plant   L Button Undernet
.align 4	::	file_78B1C0:	.import TEMP+"/78B1C0.msg"	// Bass    L Button Undernet
.align 4	::	file_78B50C:	.import TEMP+"/78B50C.msg"	// Mega    L Button Chaos Area
.align 4	::	file_78B588:	.import TEMP+"/78B588.msg"	// Roll    L Button Chaos Area
.align 4	::	file_78B610:	.import TEMP+"/78B610.msg"	// Guts    L Button Chaos Area
.align 4	::	file_78B688:	.import TEMP+"/78B688.msg"	// Wind    L Button Chaos Area
.align 4	::	file_78B6F4:	.import TEMP+"/78B6F4.msg"	// Search  L Button Chaos Area
.align 4	::	file_78B784:	.import TEMP+"/78B784.msg"	// Fire    L Button Chaos Area
.align 4	::	file_78B804:	.import TEMP+"/78B804.msg"	// Thunder L Button Chaos Area
.align 4	::	file_78B878:	.import TEMP+"/78B878.msg"	// Proto   L Button Chaos Area
.align 4	::	file_78B8F0:	.import TEMP+"/78B8F0.msg"	// Number  L Button Chaos Area
.align 4	::	file_78B96C:	.import TEMP+"/78B96C.msg"	// Metal   L Button Chaos Area
.align 4	::	file_78B9E8:	.import TEMP+"/78B9E8.msg"	// Junk    L Button Chaos Area
.align 4	::	file_78BA60:	.import TEMP+"/78BA60.msg"	// Aqua    L Button Chaos Area
.align 4	::	file_78BAE4:	.import TEMP+"/78BAE4.msg"	// Wood    L Button Chaos Area
.align 4	::	file_78BB64:	.import TEMP+"/78BB64.msg"	// Star    L Button Chaos Area
.align 4	::	file_78BBDC:	.import TEMP+"/78BBDC.msg"	// Shadow  L Button Chaos Area
.align 4	::	file_78BC58:	.import TEMP+"/78BC58.msg"	// Knight  L Button Chaos Area
.align 4	::	file_78BCD8:	.import TEMP+"/78BCD8.msg"	// Napalm  L Button Chaos Area
.align 4	::	file_78BD54:	.import TEMP+"/78BD54.msg"	// Ice     L Button Chaos Area
.align 4	::	file_78BDC4:	.import TEMP+"/78BDC4.msg"	// Elec    L Button Chaos Area
.align 4	::	file_78BE3C:	.import TEMP+"/78BE3C.msg"	// Plant   L Button Chaos Area
.align 4	::	file_78BEB8:	.import TEMP+"/78BEB8.msg"	// Bass    L Button Chaos Area
//.align 4	::	file_78BF28:	.import TEMP+"/78BF28.msg"	// Mega    L Button Player HP
//.align 4	::	file_78C28C:	.import TEMP+"/78C28C.msg"	// Roll    L Button Player HP
//.align 4	::	file_78C5F0:	.import TEMP+"/78C5F0.msg"	// Guts    L Button Player HP
//.align 4	::	file_78C938:	.import TEMP+"/78C938.msg"	// Wind    L Button Player HP
//.align 4	::	file_78CC88:	.import TEMP+"/78CC88.msg"	// Search  L Button Player HP
//.align 4	::	file_78CFC4:	.import TEMP+"/78CFC4.msg"	// Fire    L Button Player HP
//.align 4	::	file_78D334:	.import TEMP+"/78D334.msg"	// Thunder L Button Player HP
//.align 4	::	file_78D674:	.import TEMP+"/78D674.msg"	// Proto   L Button Player HP
//.align 4	::	file_78D9D4:	.import TEMP+"/78D9D4.msg"	// Number  L Button Player HP
//.align 4	::	file_78DD48:	.import TEMP+"/78DD48.msg"	// Metal   L Button Player HP
//.align 4	::	file_78E0A0:	.import TEMP+"/78E0A0.msg"	// Junk    L Button Player HP
//.align 4	::	file_78E418:	.import TEMP+"/78E418.msg"	// Aqua    L Button Player HP
//.align 4	::	file_78E780:	.import TEMP+"/78E780.msg"	// Wood    L Button Player HP
//.align 4	::	file_78EACC:	.import TEMP+"/78EACC.msg"	// Star    L Button Player HP
//.align 4	::	file_78EE24:	.import TEMP+"/78EE24.msg"	// Shadow  L Button Player HP
//.align 4	::	file_78F1A0:	.import TEMP+"/78F1A0.msg"	// Knight  L Button Player HP
//.align 4	::	file_78F52C:	.import TEMP+"/78F52C.msg"	// Napalm  L Button Player HP
//.align 4	::	file_78F8A4:	.import TEMP+"/78F8A4.msg"	// Ice     L Button Player HP
//.align 4	::	file_78FBD8:	.import TEMP+"/78FBD8.msg"	// Elec    L Button Player HP
//.align 4	::	file_78FF30:	.import TEMP+"/78FF30.msg"	// Plant   L Button Player HP
//.align 4	::	file_79028C:	.import TEMP+"/79028C.msg"	// Bass    L Button Player HP
//.align 4	::	file_7905C8:	.import TEMP+"/7905C8.msg"	// Mega    L Button Comps 1
//.align 4	::	file_79092C:	.import TEMP+"/79092C.msg"	// Roll    L Button Comps 1
//.align 4	::	file_790C90:	.import TEMP+"/790C90.msg"	// Guts    L Button Comps 1
//.align 4	::	file_790FD8:	.import TEMP+"/790FD8.msg"	// Wind    L Button Comps 1
//.align 4	::	file_791328:	.import TEMP+"/791328.msg"	// Search  L Button Comps 1
//.align 4	::	file_791664:	.import TEMP+"/791664.msg"	// Fire    L Button Comps 1
//.align 4	::	file_7919D4:	.import TEMP+"/7919D4.msg"	// Thunder L Button Comps 1
//.align 4	::	file_791D14:	.import TEMP+"/791D14.msg"	// Proto   L Button Comps 1
//.align 4	::	file_792074:	.import TEMP+"/792074.msg"	// Number  L Button Comps 1
//.align 4	::	file_7923E8:	.import TEMP+"/7923E8.msg"	// Metal   L Button Comps 1
//.align 4	::	file_792740:	.import TEMP+"/792740.msg"	// Junk    L Button Comps 1
//.align 4	::	file_792AB8:	.import TEMP+"/792AB8.msg"	// Aqua    L Button Comps 1
//.align 4	::	file_792E20:	.import TEMP+"/792E20.msg"	// Wood    L Button Comps 1
//.align 4	::	file_79316C:	.import TEMP+"/79316C.msg"	// Star    L Button Comps 1
//.align 4	::	file_7934C4:	.import TEMP+"/7934C4.msg"	// Shadow  L Button Comps 1
//.align 4	::	file_793840:	.import TEMP+"/793840.msg"	// Knight  L Button Comps 1
//.align 4	::	file_793BCC:	.import TEMP+"/793BCC.msg"	// Napalm  L Button Comps 1
//.align 4	::	file_793F44:	.import TEMP+"/793F44.msg"	// Ice     L Button Comps 1
//.align 4	::	file_794278:	.import TEMP+"/794278.msg"	// Elec    L Button Comps 1
//.align 4	::	file_7945D0:	.import TEMP+"/7945D0.msg"	// Plant   L Button Comps 1
//.align 4	::	file_79492C:	.import TEMP+"/79492C.msg"	// Bass    L Button Comps 1
//.align 4	::	file_794C68:	.import TEMP+"/794C68.msg"	// Mega    L Button Comps 2
//.align 4	::	file_794FCC:	.import TEMP+"/794FCC.msg"	// Roll    L Button Comps 2
//.align 4	::	file_795330:	.import TEMP+"/795330.msg"	// Guts    L Button Comps 2
//.align 4	::	file_795684:	.import TEMP+"/795684.msg"	// Wind    L Button Comps 2
//.align 4	::	file_7959D4:	.import TEMP+"/7959D4.msg"	// Search  L Button Comps 2
//.align 4	::	file_795D10:	.import TEMP+"/795D10.msg"	// Fire    L Button Comps 2
//.align 4	::	file_796080:	.import TEMP+"/796080.msg"	// Thunder L Button Comps 2
//.align 4	::	file_7963C0:	.import TEMP+"/7963C0.msg"	// Proto   L Button Comps 2
//.align 4	::	file_796720:	.import TEMP+"/796720.msg"	// Number  L Button Comps 2
//.align 4	::	file_796A94:	.import TEMP+"/796A94.msg"	// Metal   L Button Comps 2
//.align 4	::	file_796DEC:	.import TEMP+"/796DEC.msg"	// Junk    L Button Comps 2
//.align 4	::	file_797164:	.import TEMP+"/797164.msg"	// Aqua    L Button Comps 2
//.align 4	::	file_7974CC:	.import TEMP+"/7974CC.msg"	// Wood    L Button Comps 2
//.align 4	::	file_797818:	.import TEMP+"/797818.msg"	// Star    L Button Comps 2
//.align 4	::	file_797B70:	.import TEMP+"/797B70.msg"	// Shadow  L Button Comps 2
//.align 4	::	file_797EEC:	.import TEMP+"/797EEC.msg"	// Knight  L Button Comps 2
//.align 4	::	file_798278:	.import TEMP+"/798278.msg"	// Napalm  L Button Comps 2
//.align 4	::	file_7985F0:	.import TEMP+"/7985F0.msg"	// Ice     L Button Comps 2
//.align 4	::	file_798924:	.import TEMP+"/798924.msg"	// Elec    L Button Comps 2
//.align 4	::	file_798C7C:	.import TEMP+"/798C7C.msg"	// Plant   L Button Comps 2
//.align 4	::	file_798FD8:	.import TEMP+"/798FD8.msg"	// Bass    L Button Comps 2
.align 4	::	file_799314:	.import TEMP+"/799314.msg"
.align 4	::	file_7994EC:	.import TEMP+"/7994EC.msg"
.align 4	::	file_79975C:	.import TEMP+"/79975C.msg"
.align 4	::	file_799A3C:	.import TEMP+"/799A3C.msg"
.align 4	::	file_799CAC:	.import TEMP+"/799CAC.msg"
.align 4	::	file_799F58:	.import TEMP+"/799F58.msg"
.align 4	::	file_79A340:	.import TEMP+"/79A340.msg"
.align 4	::	file_79A5F8:	.import TEMP+"/79A5F8.msg"
.align 4	::	file_79A8E4:	.import TEMP+"/79A8E4.msg"
.align 4	::	file_79AB58:	.import TEMP+"/79AB58.msg"
.align 4	::	file_79AF64:	.import TEMP+"/79AF64.msg"
.align 4	::	file_79B45C:	.import TEMP+"/79B45C.msg"
.align 4	::	file_79B750:	.import TEMP+"/79B750.msg"
.align 4	::	file_79BB10:	.import TEMP+"/79BB10.msg"
.align 4	::	file_79BDE4:	.import TEMP+"/79BDE4.msg"
.align 4	::	file_79C084:	.import TEMP+"/79C084.msg"
.align 4	::	file_79C1D8:	.import TEMP+"/79C1D8.msg"
.align 4	::	file_79C240:	.import TEMP+"/79C240.msg"
.align 4	::	file_79C2B4:	.import TEMP+"/79C2B4.msg"
.align 4	::	file_79C2C4:	.import TEMP+"/79C2C4.msg"
.align 4	::	file_79C518:	.import TEMP+"/79C518.msg"
.align 4	::	file_79C554:	.import TEMP+"/79C554.msg"
.align 4	::	file_79C590:	.import TEMP+"/79C590.msg"
.align 4	::	file_79C5CC:	.import TEMP+"/79C5CC.msg"
.align 4	::	file_79C608:	.import TEMP+"/79C608.msg"
.align 4	::	file_79C858:	.import TEMP+"/79C858.msg"
.align 4	::	file_79C868:	.import TEMP+"/79C868.msg"
.align 4	::	file_79C878:	.import TEMP+"/79C878.msg"
.align 4	::	file_79C888:	.import TEMP+"/79C888.msg"
.align 4	::	file_79C898:	.import TEMP+"/79C898.msg"
.align 4	::	file_79C8A8:	.import TEMP+"/79C8A8.msg"
.align 4	::	file_79C8B8:	.import TEMP+"/79C8B8.msg"
.align 4	::	file_79C8C8:	.import TEMP+"/79C8C8.msg"
.align 4	::	file_79C8D8:	.import TEMP+"/79C8D8.msg"
.align 4	::	file_79C8F8:	.import TEMP+"/79C8F8.msg"
.align 4	::	file_79CB64:	.import TEMP+"/79CB64.msg"
.align 4	::	file_79CBCC:	.import TEMP+"/79CBCC.msg"
.align 4	::	file_79CC08:	.import TEMP+"/79CC08.msg"
.align 4	::	file_79CC44:	.import TEMP+"/79CC44.msg"
.align 4	::	file_79CC80:	.import TEMP+"/79CC80.msg"
.align 4	::	file_79CC90:	.import TEMP+"/79CC90.msg"
.align 4	::	file_79CCA0:	.import TEMP+"/79CCA0.msg"
.align 4	::	file_79CCB0:	.import TEMP+"/79CCB0.msg"
.align 4	::	file_79CEE4:	.import TEMP+"/79CEE4.msg"
.align 4	::	file_79CEF4:	.import TEMP+"/79CEF4.msg"
.align 4	::	file_7A6B84:	.import TEMP+"/7A6B84.msg"	// Empty NPCs (Internet4, Thursday NPCs)
.align 4	::	file_79CF04:	.import TEMP+"/79CF04.msg"
.align 4	::	file_79D108:	.import TEMP+"/79D108.msg"
.align 4	::	file_79D650:	.import TEMP+"/79D650.msg"
.align 4	::	file_79DC10:	.import TEMP+"/79DC10.msg"
.align 4	::	file_79E148:	.import TEMP+"/79E148.msg"
.align 4	::	file_79E890:	.import TEMP+"/79E890.msg"
.align 4	::	file_79EE9C:	.import TEMP+"/79EE9C.msg"
.align 4	::	file_79F30C:	.import TEMP+"/79F30C.msg"
.align 4	::	file_79FCC8:	.import TEMP+"/79FCC8.msg"
.align 4	::	file_79FFF4:	.import TEMP+"/79FFF4.msg"
.align 4	::	file_7A0354:	.import TEMP+"/7A0354.msg"
.align 4	::	file_7A0734:	.import TEMP+"/7A0734.msg"
.align 4	::	file_7A0A44:	.import TEMP+"/7A0A44.msg"
.align 4	::	file_7A0D18:	.import TEMP+"/7A0D18.msg"
.align 4	::	file_7A1170:	.import TEMP+"/7A1170.msg"
.align 4	::	file_7A152C:	.import TEMP+"/7A152C.msg"
.align 4	::	file_7A32A8:	.import TEMP+"/7A32A8.msg"
.align 4	::	file_7A3C0C:	.import TEMP+"/7A3C0C.msg"
.align 4	::	file_7A4010:	.import TEMP+"/7A4010.msg"
.align 4	::	file_7A4348:	.import TEMP+"/7A4348.msg"
.align 4	::	file_7A47A0:	.import TEMP+"/7A47A0.msg"
.align 4	::	file_7A4A8C:	.import TEMP+"/7A4A8C.msg"
.align 4	::	file_7A4DD4:	.import TEMP+"/7A4DD4.msg"
.align 4	::	file_7A5604:	.import TEMP+"/7A5604.msg"
.align 4	::	file_7A6778:	.import TEMP+"/7A6778.msg"
.align 4	::	file_7A685C:	.import TEMP+"/7A685C.msg"
.align 4	::	file_7A6990:	.import TEMP+"/7A6990.msg"
.align 4	::	file_7A6A68:	.import TEMP+"/7A6A68.msg"
.align 4	::	file_7A6BC8:	.import TEMP+"/7A6BC8.msg"
.align 4	::	file_7A6F0C:	.import TEMP+"/7A6F0C.msg"
.align 4	::	file_7A7000:	.import TEMP+"/7A7000.msg"
.align 4	::	file_7A7B74:	.import TEMP+"/7A7B74.msg"
.align 4	::	file_7A7C04:	.import TEMP+"/7A7C04.msg"
.align 4	::	file_7A7CF8:	.import TEMP+"/7A7CF8.msg"
.align 4	::	file_7A7E1C:	.import TEMP+"/7A7E1C.msg"
.align 4	::	file_7A7EF8:	.import TEMP+"/7A7EF8.msg"
.align 4	::	file_7A7FC4:	.import TEMP+"/7A7FC4.msg"
.align 4	::	file_7A8218:	.import TEMP+"/7A8218.msg"
.align 4	::	file_7A82D8:	.import TEMP+"/7A82D8.msg"
.align 4	::	file_7A87FC:	.import TEMP+"/7A87FC.msg"
.align 4	::	file_7A8864:	.import TEMP+"/7A8864.msg"
.align 4	::	file_7A8928:	.import TEMP+"/7A8928.msg"
.align 4	::	file_7A89E4:	.import TEMP+"/7A89E4.msg"
.align 4	::	file_7A8AE0:	.import TEMP+"/7A8AE0.msg"
.align 4	::	file_7A8B9C:	.import TEMP+"/7A8B9C.msg"
.align 4	::	file_7A8E20:	.import TEMP+"/7A8E20.msg"
.align 4	::	file_7A8EC0:	.import TEMP+"/7A8EC0.msg"
.align 4	::	file_7A9954:	.import TEMP+"/7A9954.msg"
.align 4	::	file_7A99C0:	.import TEMP+"/7A99C0.msg"
.align 4	::	file_7A9AC0:	.import TEMP+"/7A9AC0.msg"
.align 4	::	file_7A9BA0:	.import TEMP+"/7A9BA0.msg"
.align 4	::	file_7A9CAC:	.import TEMP+"/7A9CAC.msg"
.align 4	::	file_7A9DA8:	.import TEMP+"/7A9DA8.msg"
.align 4	::	file_7A9E44:	.import TEMP+"/7A9E44.msg"
.align 4	::	file_7A9EE4:	.import TEMP+"/7A9EE4.msg"
.align 4	::	file_7AAB30:	.import TEMP+"/7AAB30.msg"
.align 4	::	file_7AABB0:	.import TEMP+"/7AABB0.msg"
.align 4	::	file_7AACC0:	.import TEMP+"/7AACC0.msg"
.align 4	::	file_7AAD84:	.import TEMP+"/7AAD84.msg"
.align 4	::	file_7AAEF0:	.import TEMP+"/7AAEF0.msg"
.align 4	::	file_7AAF94:	.import TEMP+"/7AAF94.msg"
.align 4	::	file_7AB420:	.import TEMP+"/7AB420.msg"
.align 4	::	file_7AB4B4:	.import TEMP+"/7AB4B4.msg"
.align 4	::	file_7AD8D0:	.import TEMP+"/7AD8D0.msg"
.align 4	::	file_7AD978:	.import TEMP+"/7AD978.msg"
.align 4	::	file_7ADA60:	.import TEMP+"/7ADA60.msg"
.align 4	::	file_7ADB90:	.import TEMP+"/7ADB90.msg"
.align 4	::	file_7ADCA4:	.import TEMP+"/7ADCA4.msg"
.align 4	::	file_7ADD74:	.import TEMP+"/7ADD74.msg"
.align 4	::	file_7AE01C:	.import TEMP+"/7AE01C.msg"
.align 4	::	file_7AE0A0:	.import TEMP+"/7AE0A0.msg"
.align 4	::	file_7AEEC0:	.import TEMP+"/7AEEC0.msg"
.align 4	::	file_7AEF4C:	.import TEMP+"/7AEF4C.msg"
.align 4	::	file_7AF098:	.import TEMP+"/7AF098.msg"
.align 4	::	file_7AF164:	.import TEMP+"/7AF164.msg"
.align 4	::	file_7AF2F8:	.import TEMP+"/7AF2F8.msg"
.align 4	::	file_7AF3E8:	.import TEMP+"/7AF3E8.msg"
.align 4	::	file_7AF624:	.import TEMP+"/7AF624.msg"
.align 4	::	file_7AF6D0:	.import TEMP+"/7AF6D0.msg"
.align 4	::	file_7B02AC:	.import TEMP+"/7B02AC.msg"
.align 4	::	file_7B0328:	.import TEMP+"/7B0328.msg"
.align 4	::	file_7B03C4:	.import TEMP+"/7B03C4.msg"
.align 4	::	file_7B0488:	.import TEMP+"/7B0488.msg"
.align 4	::	file_7B0574:	.import TEMP+"/7B0574.msg"
.align 4	::	file_7B0638:	.import TEMP+"/7B0638.msg"
.align 4	::	file_7B0978:	.import TEMP+"/7B0978.msg"
.align 4	::	file_7B09F4:	.import TEMP+"/7B09F4.msg"
.align 4	::	file_7B19A8:	.import TEMP+"/7B19A8.msg"
.align 4	::	file_7B1A54:	.import TEMP+"/7B1A54.msg"
.align 4	::	file_7B1AC4:	.import TEMP+"/7B1AC4.msg"
.align 4	::	file_7B1BC0:	.import TEMP+"/7B1BC0.msg"
.align 4	::	file_7B1C78:	.import TEMP+"/7B1C78.msg"
.align 4	::	file_7B1D40:	.import TEMP+"/7B1D40.msg"
.align 4	::	file_7B1F44:	.import TEMP+"/7B1F44.msg"
.align 4	::	file_7B1FF4:	.import TEMP+"/7B1FF4.msg"
.align 4	::	file_7B3120:	.import TEMP+"/7B3120.msg"
//.align 4	::	file_7B31A0:	.import TEMP+"/7B31A0.msg"	// Undernet 1, Monday NPCs
//.align 4	::	file_7B31E4:	.import TEMP+"/7B31E4.msg"	// Undernet 1, Tuesday NPCs
//.align 4	::	file_7B3228:	.import TEMP+"/7B3228.msg"	// Undernet 1, Wednesday NPCs
//.align 4	::	file_7B326C:	.import TEMP+"/7B326C.msg"	// Undernet 1, Thursday NPCs
.align 4	::	file_7B32B0:	.import TEMP+"/7B32B0.msg"
//.align 4	::	file_7B344C:	.import TEMP+"/7B344C.msg"	// Undernet 1, Saturday NPCs
.align 4	::	file_7B3490:	.import TEMP+"/7B3490.msg"
//.align 4	::	file_7B387C:	.import TEMP+"/7B387C.msg"	// Undernet 2, Sunday NPCs
//.align 4	::	file_7B38C0:	.import TEMP+"/7B38C0.msg"	// Undernet 2, Monday NPCs
//.align 4	::	file_7B3904:	.import TEMP+"/7B3904.msg"	// Undernet 2, Tuesday NPCs
//.align 4	::	file_7B3948:	.import TEMP+"/7B3948.msg"	// Undernet 2, Wednesday NPCs
//.align 4	::	file_7B398C:	.import TEMP+"/7B398C.msg"	// Undernet 2, Thursday NPCs
.align 4	::	file_7B39D0:	.import TEMP+"/7B39D0.msg"
//.align 4	::	file_7B3BEC:	.import TEMP+"/7B3BEC.msg"	// Undernet 2, Saturday NPCs
.align 4	::	file_7B3C30:	.import TEMP+"/7B3C30.msg"
.align 4	::	file_7B3E60:	.import TEMP+"/7B3E60.msg"
//.align 4	::	file_7B3EE0:	.import TEMP+"/7B3EE0.msg"	// Undernet 3, Monday NPCs
//.align 4	::	file_7B3F24:	.import TEMP+"/7B3F24.msg"	// Undernet 3, Tuesday NPCs
//.align 4	::	file_7B3F68:	.import TEMP+"/7B3F68.msg"	// Undernet 3, Wednesday NPCs
//.align 4	::	file_7B3FAC:	.import TEMP+"/7B3FAC.msg"	// Undernet 3, Thursday NPCs
.align 4	::	file_7B3FF0:	.import TEMP+"/7B3FF0.msg"
//.align 4	::	file_7B4140:	.import TEMP+"/7B4140.msg"	// Undernet 3, Saturday NPCs
.align 4	::	file_7B4184:	.import TEMP+"/7B4184.msg"
.align 4	::	file_7B450C:	.import TEMP+"/7B450C.msg"
//.align 4	::	file_7B458C:	.import TEMP+"/7B458C.msg"	// Undernet 4, Monday NPCs
//.align 4	::	file_7B45D0:	.import TEMP+"/7B45D0.msg"	// Undernet 4, Tuesday NPCs
//.align 4	::	file_7B4614:	.import TEMP+"/7B4614.msg"	// Undernet 4, Wednesday NPCs
//.align 4	::	file_7B4658:	.import TEMP+"/7B4658.msg"	// Undernet 4, Thursday NPCs
.align 4	::	file_7B469C:	.import TEMP+"/7B469C.msg"
//.align 4	::	file_7B4A28:	.import TEMP+"/7B4A28.msg"	// Undernet 4, Saturday NPCs
.align 4	::	file_7B4A6C:	.import TEMP+"/7B4A6C.msg"
.align 4	::	file_7B5110:	.import TEMP+"/7B5110.msg"
//.align 4	::	file_7B5190:	.import TEMP+"/7B5190.msg"	// Chaos Area 1, Monday NPCs
//.align 4	::	file_7B51D4:	.import TEMP+"/7B51D4.msg"	// Chaos Area 1, Tuesday NPCs
//.align 4	::	file_7B5218:	.import TEMP+"/7B5218.msg"	// Chaos Area 1, Wednesday NPCs
//.align 4	::	file_7B525C:	.import TEMP+"/7B525C.msg"	// Chaos Area 1, Thursday NPCs
//.align 4	::	file_7B52A0:	.import TEMP+"/7B52A0.msg"	// Chaos Area 1, Friday NPCs
//.align 4	::	file_7B52E4:	.import TEMP+"/7B52E4.msg"	// Chaos Area 1, Saturday NPCs
.align 4	::	file_7B5328:	.import TEMP+"/7B5328.msg"
.align 4	::	file_7B5AA8:	.import TEMP+"/7B5AA8.msg"
//.align 4	::	file_7B5B28:	.import TEMP+"/7B5B28.msg"	// Chaos Area 2, Monday NPCs
//.align 4	::	file_7B5B6C:	.import TEMP+"/7B5B6C.msg"	// Chaos Area 2, Tuesday NPCs
//.align 4	::	file_7B5BB0:	.import TEMP+"/7B5BB0.msg"	// Chaos Area 2, Wednesday NPCs
//.align 4	::	file_7B5BF4:	.import TEMP+"/7B5BF4.msg"	// Chaos Area 2, Thursday NPCs
//.align 4	::	file_7B5C38:	.import TEMP+"/7B5C38.msg"	// Chaos Area 2, Friday NPCs
//.align 4	::	file_7B5C7C:	.import TEMP+"/7B5C7C.msg"	// Chaos Area 2, Saturday NPCs
.align 4	::	file_7B5CC0:	.import TEMP+"/7B5CC0.msg"
//.align 4	::	file_7B65EC:	.import TEMP+"/7B65EC.msg"	// Player's HP, Sunday NPCs
//.align 4	::	file_7B6630:	.import TEMP+"/7B6630.msg"	// Player's HP, Monday NPCs
//.align 4	::	file_7B6674:	.import TEMP+"/7B6674.msg"	// Player's HP, Tuesday NPCs
//.align 4	::	file_7B66B8:	.import TEMP+"/7B66B8.msg"	// Player's HP, Wednesday NPCs
//.align 4	::	file_7B66FC:	.import TEMP+"/7B66FC.msg"	// Player's HP, Thursday NPCs
//.align 4	::	file_7B6740:	.import TEMP+"/7B6740.msg"	// Player's HP, Friday NPCs
//.align 4	::	file_7B6784:	.import TEMP+"/7B6784.msg"	// Player's HP, Saturday NPCs
.align 4	::	file_7B67C8:	.import TEMP+"/7B67C8.msg"
//.align 4	::	file_7B6CCC:	.import TEMP+"/7B6CCC.msg"	// Electric Stove Comp, Sunday NPCs
//.align 4	::	file_7B6D10:	.import TEMP+"/7B6D10.msg"	// Electric Stove Comp, Monday NPCs
//.align 4	::	file_7B6D54:	.import TEMP+"/7B6D54.msg"	// Electric Stove Comp, Tuesday NPCs
//.align 4	::	file_7B6D98:	.import TEMP+"/7B6D98.msg"	// Electric Stove Comp, Wednesday NPCs
//.align 4	::	file_7B6DDC:	.import TEMP+"/7B6DDC.msg"	// Electric Stove Comp, Thursday NPCs
.align 4	::	file_7B6E20:	.import TEMP+"/7B6E20.msg"
//.align 4	::	file_7B6F58:	.import TEMP+"/7B6F58.msg"	// Electric Stove Comp, Saturday NPCs
.align 4	::	file_7B6F9C:	.import TEMP+"/7B6F9C.msg"
//.align 4	::	file_7B74F8:	.import TEMP+"/7B74F8.msg"	// Factory Comp 1, Sunday NPCs
//.align 4	::	file_7B753C:	.import TEMP+"/7B753C.msg"	// Factory Comp 1, Monday NPCs
//.align 4	::	file_7B7580:	.import TEMP+"/7B7580.msg"	// Factory Comp 1, Tuesday NPCs
//.align 4	::	file_7B75C4:	.import TEMP+"/7B75C4.msg"	// Factory Comp 1, Wednesday NPCs
//.align 4	::	file_7B7608:	.import TEMP+"/7B7608.msg"	// Factory Comp 1, Thursday NPCs
//.align 4	::	file_7B764C:	.import TEMP+"/7B764C.msg"	// Factory Comp 1, Friday NPCs
//.align 4	::	file_7B7690:	.import TEMP+"/7B7690.msg"	// Factory Comp 1, Saturday NPCs
.align 4	::	file_7B76D4:	.import TEMP+"/7B76D4.msg"
//.align 4	::	file_7B7914:	.import TEMP+"/7B7914.msg"	// Factory Comp 2, Sunday NPCs
//.align 4	::	file_7B7958:	.import TEMP+"/7B7958.msg"	// Factory Comp 2, Monday NPCs
//.align 4	::	file_7B799C:	.import TEMP+"/7B799C.msg"	// Factory Comp 2, Tuesday NPCs
//.align 4	::	file_7B79E0:	.import TEMP+"/7B79E0.msg"	// Factory Comp 2, Wednesday NPCs
//.align 4	::	file_7B7A24:	.import TEMP+"/7B7A24.msg"	// Factory Comp 2, Thursday NPCs
//.align 4	::	file_7B7A68:	.import TEMP+"/7B7A68.msg"	// Factory Comp 2, Friday NPCs
//.align 4	::	file_7B7AAC:	.import TEMP+"/7B7AAC.msg"	// Factory Comp 2, Saturday NPCs
.align 4	::	file_7B7AF0:	.import TEMP+"/7B7AF0.msg"
//.align 4	::	file_7B7D1C:	.import TEMP+"/7B7D1C.msg"	// Factory Comp 3, Sunday NPCs
//.align 4	::	file_7B7D60:	.import TEMP+"/7B7D60.msg"	// Factory Comp 3, Monday NPCs
//.align 4	::	file_7B7DA4:	.import TEMP+"/7B7DA4.msg"	// Factory Comp 3, Tuesday NPCs
//.align 4	::	file_7B7DE8:	.import TEMP+"/7B7DE8.msg"	// Factory Comp 3, Wednesday NPCs
//.align 4	::	file_7B7E2C:	.import TEMP+"/7B7E2C.msg"	// Factory Comp 3, Thursday NPCs
//.align 4	::	file_7B7E70:	.import TEMP+"/7B7E70.msg"	// Factory Comp 3, Friday NPCs
//.align 4	::	file_7B7EB4:	.import TEMP+"/7B7EB4.msg"	// Factory Comp 3, Saturday NPCs
.align 4	::	file_7B7EF8:	.import TEMP+"/7B7EF8.msg"
//.align 4	::	file_7B8128:	.import TEMP+"/7B8128.msg"	// Toy Box Comp, Sunday NPCs
//.align 4	::	file_7B816C:	.import TEMP+"/7B816C.msg"	// Toy Box Comp, Monday NPCs
//.align 4	::	file_7B81B0:	.import TEMP+"/7B81B0.msg"	// Toy Box Comp, Tuesday NPCs
//.align 4	::	file_7B81F4:	.import TEMP+"/7B81F4.msg"	// Toy Box Comp, Wednesday NPCs
//.align 4	::	file_7B8238:	.import TEMP+"/7B8238.msg"	// Toy Box Comp, Thursday NPCs
.align 4	::	file_7B827C:	.import TEMP+"/7B827C.msg"
//.align 4	::	file_7B8484:	.import TEMP+"/7B8484.msg"	// Toy Box Comp, Saturday NPCs
.align 4	::	file_7B84C8:	.import TEMP+"/7B84C8.msg"
//.align 4	::	file_7B88D8:	.import TEMP+"/7B88D8.msg"	// Broken Radio Comp, Sunday NPCs
//.align 4	::	file_7B891C:	.import TEMP+"/7B891C.msg"	// Broken Radio Comp, Monday NPCs
//.align 4	::	file_7B8960:	.import TEMP+"/7B8960.msg"	// Broken Radio Comp, Tuesday NPCs
//.align 4	::	file_7B89A4:	.import TEMP+"/7B89A4.msg"	// Broken Radio Comp, Wednesday NPCs
//.align 4	::	file_7B89E8:	.import TEMP+"/7B89E8.msg"	// Broken Radio Comp, Thursday NPCs
//.align 4	::	file_7B8A2C:	.import TEMP+"/7B8A2C.msg"	// Broken Radio Comp, Friday NPCs
//.align 4	::	file_7B8A70:	.import TEMP+"/7B8A70.msg"	// Broken Radio Comp, Saturday NPCs
.align 4	::	file_7B8AB4:	.import TEMP+"/7B8AB4.msg"
//.align 4	::	file_7B8F28:	.import TEMP+"/7B8F28.msg"	// Golf Course Comp 1, Sunday NPCs
//.align 4	::	file_7B8F6C:	.import TEMP+"/7B8F6C.msg"	// Golf Course Comp 1, Monday NPCs
//.align 4	::	file_7B8FB0:	.import TEMP+"/7B8FB0.msg"	// Golf Course Comp 1, Tuesday NPCs
//.align 4	::	file_7B8FF4:	.import TEMP+"/7B8FF4.msg"	// Golf Course Comp 1, Wednesday NPCs
//.align 4	::	file_7B9038:	.import TEMP+"/7B9038.msg"	// Golf Course Comp 1, Thursday NPCs
//.align 4	::	file_7B907C:	.import TEMP+"/7B907C.msg"	// Golf Course Comp 1, Friday NPCs
//.align 4	::	file_7B90C0:	.import TEMP+"/7B90C0.msg"	// Golf Course Comp 1, Saturday NPCs
.align 4	::	file_7B9104:	.import TEMP+"/7B9104.msg"
//.align 4	::	file_7B9358:	.import TEMP+"/7B9358.msg"	// Golf Course Comp 2, Sunday NPCs
//.align 4	::	file_7B939C:	.import TEMP+"/7B939C.msg"	// Golf Course Comp 2, Monday NPCs
//.align 4	::	file_7B93E0:	.import TEMP+"/7B93E0.msg"	// Golf Course Comp 2, Tuesday NPCs
//.align 4	::	file_7B9424:	.import TEMP+"/7B9424.msg"	// Golf Course Comp 2, Wednesday NPCs
//.align 4	::	file_7B9468:	.import TEMP+"/7B9468.msg"	// Golf Course Comp 2, Friday NPCs
.align 4	::	file_7B94AC:	.import TEMP+"/7B94AC.msg"
//.align 4	::	file_7B9704:	.import TEMP+"/7B9704.msg"	// Golf Course Comp 2, Saturday NPCs
.align 4	::	file_7B9748:	.import TEMP+"/7B9748.msg"
//.align 4	::	file_7B9AB8:	.import TEMP+"/7B9AB8.msg"	// Golf Course Comp 3, Sunday NPCs
//.align 4	::	file_7B9AFC:	.import TEMP+"/7B9AFC.msg"	// Golf Course Comp 3, Monday NPCs
//.align 4	::	file_7B9B40:	.import TEMP+"/7B9B40.msg"	// Golf Course Comp 3, Tuesday NPCs
//.align 4	::	file_7B9B84:	.import TEMP+"/7B9B84.msg"	// Golf Course Comp 3, Wednesday NPCs
//.align 4	::	file_7B9BC8:	.import TEMP+"/7B9BC8.msg"	// Golf Course Comp 3, Thursday NPCs
//.align 4	::	file_7B9C0C:	.import TEMP+"/7B9C0C.msg"	// Golf Course Comp 3, Friday NPCs
//.align 4	::	file_7B9C50:	.import TEMP+"/7B9C50.msg"	// Golf Course Comp 3, Saturday NPCs
.align 4	::	file_7B9C94:	.import TEMP+"/7B9C94.msg"
//.align 4	::	file_7BA090:	.import TEMP+"/7BA090.msg"	// Car Comp 1, Sunday NPCs
//.align 4	::	file_7BA0D4:	.import TEMP+"/7BA0D4.msg"	// Car Comp 1, Monday NPCs
//.align 4	::	file_7BA118:	.import TEMP+"/7BA118.msg"	// Car Comp 1, Tuesday NPCs
//.align 4	::	file_7BA15C:	.import TEMP+"/7BA15C.msg"	// Car Comp 1, Wednesday NPCs
//.align 4	::	file_7BA1A0:	.import TEMP+"/7BA1A0.msg"	// Car Comp 1, Thursday NPCs
//.align 4	::	file_7BA1E4:	.import TEMP+"/7BA1E4.msg"	// Car Comp 1, Friday NPCs
//.align 4	::	file_7BA228:	.import TEMP+"/7BA228.msg"	// Car Comp 1, Saturday NPCs
.align 4	::	file_7BA26C:	.import TEMP+"/7BA26C.msg"
//.align 4	::	file_7BA50C:	.import TEMP+"/7BA50C.msg"	// Car Comp 2, Sunday NPCs
//.align 4	::	file_7BA550:	.import TEMP+"/7BA550.msg"	// Car Comp 2, Monday NPCs
//.align 4	::	file_7BA594:	.import TEMP+"/7BA594.msg"	// Car Comp 2, Tuesday NPCs
//.align 4	::	file_7BA5D8:	.import TEMP+"/7BA5D8.msg"	// Car Comp 2, Wednesday NPCs
//.align 4	::	file_7BA61C:	.import TEMP+"/7BA61C.msg"	// Car Comp 2, Thursday NPCs
.align 4	::	file_7BA660:	.import TEMP+"/7BA660.msg"
//.align 4	::	file_7BA75C:	.import TEMP+"/7BA75C.msg"	// Car Comp 2, Saturday NPCs
.align 4	::	file_7BA7A0:	.import TEMP+"/7BA7A0.msg"
//.align 4	::	file_7BAB84:	.import TEMP+"/7BAB84.msg"	// Mower Comp, Sunday NPCs
//.align 4	::	file_7BABC8:	.import TEMP+"/7BABC8.msg"	// Mower Comp, Monday NPCs
//.align 4	::	file_7BAC0C:	.import TEMP+"/7BAC0C.msg"	// Mower Comp, Tuesday NPCs
//.align 4	::	file_7BAC50:	.import TEMP+"/7BAC50.msg"	// Mower Comp, Wednesday NPCs
//.align 4	::	file_7BAC94:	.import TEMP+"/7BAC94.msg"	// Mower Comp, Thursday NPCs
.align 4	::	file_7BACD8:	.import TEMP+"/7BACD8.msg"
//.align 4	::	file_7BAEB4:	.import TEMP+"/7BAEB4.msg"	// Mower Comp, Saturday NPCs
.align 4	::	file_7BAEF8:	.import TEMP+"/7BAEF8.msg"
//.align 4	::	file_7BB140:	.import TEMP+"/7BB140.msg"	// Toilet Comp 1, Sunday NPCs
//.align 4	::	file_7BB184:	.import TEMP+"/7BB184.msg"	// Toilet Comp 1, Monday NPCs
//.align 4	::	file_7BB1C8:	.import TEMP+"/7BB1C8.msg"	// Toilet Comp 1, Tuesday NPCs
//.align 4	::	file_7BB20C:	.import TEMP+"/7BB20C.msg"	// Toilet Comp 1, Wednesday NPCs
//.align 4	::	file_7BB250:	.import TEMP+"/7BB250.msg"	// Toilet Comp 1, Thursday NPCs
//.align 4	::	file_7BB294:	.import TEMP+"/7BB294.msg"	// Toilet Comp 1, Friday NPCs
//.align 4	::	file_7BB2D8:	.import TEMP+"/7BB2D8.msg"	// Toilet Comp 1, Saturday NPCs
.align 4	::	file_7BB31C:	.import TEMP+"/7BB31C.msg"
//.align 4	::	file_7BB574:	.import TEMP+"/7BB574.msg"	// Toilet Comp 2, Sunday NPCs
//.align 4	::	file_7BB5B8:	.import TEMP+"/7BB5B8.msg"	// Toilet Comp 2, Monday NPCs
//.align 4	::	file_7BB5FC:	.import TEMP+"/7BB5FC.msg"	// Toilet Comp 2, Tuesday NPCs
//.align 4	::	file_7BB640:	.import TEMP+"/7BB640.msg"	// Toilet Comp 2, Wednesday NPCs
//.align 4	::	file_7BB684:	.import TEMP+"/7BB684.msg"	// Toilet Comp 2, Thursday NPCs
.align 4	::	file_7BB6C8:	.import TEMP+"/7BB6C8.msg"
//.align 4	::	file_7BB834:	.import TEMP+"/7BB834.msg"	// Toilet Comp 2, Saturday NPCs
.align 4	::	file_7BB878:	.import TEMP+"/7BB878.msg"
//.align 4	::	file_7BBC78:	.import TEMP+"/7BBC78.msg"	// Toilet Comp 3, Sunday NPCs
//.align 4	::	file_7BBCBC:	.import TEMP+"/7BBCBC.msg"	// Toilet Comp 3, Monday NPCs
//.align 4	::	file_7BBD00:	.import TEMP+"/7BBD00.msg"	// Toilet Comp 3, Tuesday NPCs
//.align 4	::	file_7BBD44:	.import TEMP+"/7BBD44.msg"	// Toilet Comp 3, Wednesday NPCs
//.align 4	::	file_7BBD88:	.import TEMP+"/7BBD88.msg"	// Toilet Comp 3, Thursday NPCs
//.align 4	::	file_7BBDCC:	.import TEMP+"/7BBDCC.msg"	// Toilet Comp 3, Friday NPCs
//.align 4	::	file_7BBE10:	.import TEMP+"/7BBE10.msg"	// Toilet Comp 3, Saturday NPCs
.align 4	::	file_7BBE54:	.import TEMP+"/7BBE54.msg"
//.align 4	::	file_7BC0A0:	.import TEMP+"/7BC0A0.msg"	// Refrigerator Comp, Sunday NPCs
//.align 4	::	file_7BC0E4:	.import TEMP+"/7BC0E4.msg"	// Refrigerator Comp, Monday NPCs
//.align 4	::	file_7BC128:	.import TEMP+"/7BC128.msg"	// Refrigerator Comp, Tuesday NPCs
//.align 4	::	file_7BC16C:	.import TEMP+"/7BC16C.msg"	// Refrigerator Comp, Wednesday NPCs
//.align 4	::	file_7BC1B0:	.import TEMP+"/7BC1B0.msg"	// Refrigerator Comp, Thursday NPCs
//.align 4	::	file_7BC1F4:	.import TEMP+"/7BC1F4.msg"	// Refrigerator Comp, Friday NPCs
//.align 4	::	file_7BC238:	.import TEMP+"/7BC238.msg"	// Refrigerator Comp, Saturday NPCs
.align 4	::	file_7BC27C:	.import TEMP+"/7BC27C.msg"
//.align 4	::	file_7BC694:	.import TEMP+"/7BC694.msg"	// Factory Comp 4, Sunday NPCs
//.align 4	::	file_7BC6D8:	.import TEMP+"/7BC6D8.msg"	// Factory Comp 4, Monday NPCs
//.align 4	::	file_7BC71C:	.import TEMP+"/7BC71C.msg"	// Factory Comp 4, Tuesday NPCs
//.align 4	::	file_7BC760:	.import TEMP+"/7BC760.msg"	// Factory Comp 4, Wednesday NPCs
//.align 4	::	file_7BC7A4:	.import TEMP+"/7BC7A4.msg"	// Factory Comp 4, Thursday NPCs
//.align 4	::	file_7BC7E8:	.import TEMP+"/7BC7E8.msg"	// Factory Comp 4, Friday NPCs
//.align 4	::	file_7BC82C:	.import TEMP+"/7BC82C.msg"	// Factory Comp 4, Saturday NPCs
.align 4	::	file_7BC870:	.import TEMP+"/7BC870.msg"
//.align 4	::	file_7BCAE0:	.import TEMP+"/7BCAE0.msg"	// Haikyo Comp 1, Sunday NPCs
//.align 4	::	file_7BCB24:	.import TEMP+"/7BCB24.msg"	// Haikyo Comp 1, Monday NPCs
//.align 4	::	file_7BCB68:	.import TEMP+"/7BCB68.msg"	// Haikyo Comp 1, Tuesday NPCs
//.align 4	::	file_7BCBAC:	.import TEMP+"/7BCBAC.msg"	// Haikyo Comp 1, Wednesday NPCs
//.align 4	::	file_7BCBF0:	.import TEMP+"/7BCBF0.msg"	// Haikyo Comp 1, Thursday NPCs
.align 4	::	file_7BCC34:	.import TEMP+"/7BCC34.msg"
//.align 4	::	file_7BCE78:	.import TEMP+"/7BCE78.msg"	// Haikyo Comp 1, Saturday NPCs
.align 4	::	file_7BCEBC:	.import TEMP+"/7BCEBC.msg"
//.align 4	::	file_7BD0EC:	.import TEMP+"/7BD0EC.msg"	// Haikyo Comp 2, Sunday NPCs
//.align 4	::	file_7BD130:	.import TEMP+"/7BD130.msg"	// Haikyo Comp 2, Monday NPCs
//.align 4	::	file_7BD174:	.import TEMP+"/7BD174.msg"	// Haikyo Comp 2, Tuesday NPCs
//.align 4	::	file_7BD1B8:	.import TEMP+"/7BD1B8.msg"	// Haikyo Comp 2, Wednesday NPCs
//.align 4	::	file_7BD1FC:	.import TEMP+"/7BD1FC.msg"	// Haikyo Comp 2, Thursday NPCs
.align 4	::	file_7BD240:	.import TEMP+"/7BD240.msg"
//.align 4	::	file_7BD46C:	.import TEMP+"/7BD46C.msg"	// Haikyo Comp 2, Saturday NPCs
.align 4	::	file_7BD4B0:	.import TEMP+"/7BD4B0.msg"
//.align 4	::	file_7BDAB4:	.import TEMP+"/7BDAB4.msg"	// Speaker Comp, Sunday NPCs
//.align 4	::	file_7BDAF8:	.import TEMP+"/7BDAF8.msg"	// Speaker Comp, Monday NPCs
//.align 4	::	file_7BDB3C:	.import TEMP+"/7BDB3C.msg"	// Speaker Comp, Tuesday NPCs
//.align 4	::	file_7BDB80:	.import TEMP+"/7BDB80.msg"	// Speaker Comp, Wednesday NPCs
//.align 4	::	file_7BDBC4:	.import TEMP+"/7BDBC4.msg"	// Speaker Comp, Thursday NPCs
//.align 4	::	file_7BDC08:	.import TEMP+"/7BDC08.msg"	// Speaker Comp, Friday NPCs
//.align 4	::	file_7BDC4C:	.import TEMP+"/7BDC4C.msg"	// Speaker Comp, Saturday NPCs
.align 4	::	file_7BDC90:	.import TEMP+"/7BDC90.msg"
//.align 4	::	file_7BDEF0:	.import TEMP+"/7BDEF0.msg"	// Old TV Comp 1, Sunday NPCs
//.align 4	::	file_7BDF34:	.import TEMP+"/7BDF34.msg"	// Old TV Comp 1, Monday NPCs
//.align 4	::	file_7BDF78:	.import TEMP+"/7BDF78.msg"	// Old TV Comp 1, Tuesday NPCs
//.align 4	::	file_7BDFBC:	.import TEMP+"/7BDFBC.msg"	// Old TV Comp 1, Wednesday NPCs
//.align 4	::	file_7BE000:	.import TEMP+"/7BE000.msg"	// Old TV Comp 1, Thursday NPCs
//.align 4	::	file_7BE044:	.import TEMP+"/7BE044.msg"	// Old TV Comp 1, Friday NPCs
//.align 4	::	file_7BE088:	.import TEMP+"/7BE088.msg"	// Old TV Comp 1, Saturday NPCs
.align 4	::	file_7BE0CC:	.import TEMP+"/7BE0CC.msg"
//.align 4	::	file_7BE33C:	.import TEMP+"/7BE33C.msg"	// Old TV Comp 2, Sunday NPCs
//.align 4	::	file_7BE380:	.import TEMP+"/7BE380.msg"	// Old TV Comp 2, Monday NPCs
//.align 4	::	file_7BE3C4:	.import TEMP+"/7BE3C4.msg"	// Old TV Comp 2, Tuesday NPCs
//.align 4	::	file_7BE408:	.import TEMP+"/7BE408.msg"	// Old TV Comp 2, Wednesday NPCs
//.align 4	::	file_7BE44C:	.import TEMP+"/7BE44C.msg"	// Old TV Comp 2, Thursday NPCs
//.align 4	::	file_7BE490:	.import TEMP+"/7BE490.msg"	// Old TV Comp 2, Friday NPCs
//.align 4	::	file_7BE4D4:	.import TEMP+"/7BE4D4.msg"	// Old TV Comp 2, Saturday NPCs
.align 4	::	file_7BE518:	.import TEMP+"/7BE518.msg"
//.align 4	::	file_7BE93C:	.import TEMP+"/7BE93C.msg"	// Old TV Comp 3, Sunday NPCs
//.align 4	::	file_7BE980:	.import TEMP+"/7BE980.msg"	// Old TV Comp 3, Monday NPCs
//.align 4	::	file_7BE9C4:	.import TEMP+"/7BE9C4.msg"	// Old TV Comp 3, Tuesday NPCs
//.align 4	::	file_7BEA08:	.import TEMP+"/7BEA08.msg"	// Old TV Comp 3, Wednesday NPCs
//.align 4	::	file_7BEA4C:	.import TEMP+"/7BEA4C.msg"	// Old TV Comp 3, Thursday NPCs
//.align 4	::	file_7BEA90:	.import TEMP+"/7BEA90.msg"	// Old TV Comp 3, Friday NPCs
//.align 4	::	file_7BEAD4:	.import TEMP+"/7BEAD4.msg"	// Old TV Comp 3, Saturday NPCs
.align 4	::	file_7BEB18:	.import TEMP+"/7BEB18.msg"
//.align 4	::	file_7BEEC4:	.import TEMP+"/7BEEC4.msg"	// Pipe Organ Comp, Sunday NPCs
//.align 4	::	file_7BEF08:	.import TEMP+"/7BEF08.msg"	// Pipe Organ Comp, Monday NPCs
//.align 4	::	file_7BEF4C:	.import TEMP+"/7BEF4C.msg"	// Pipe Organ Comp, Tuesday NPCs
//.align 4	::	file_7BEF90:	.import TEMP+"/7BEF90.msg"	// Pipe Organ Comp, Wednesday NPCs
//.align 4	::	file_7BEFD4:	.import TEMP+"/7BEFD4.msg"	// Pipe Organ Comp, Thursday NPCs
.align 4	::	file_7BF018:	.import TEMP+"/7BF018.msg"
//.align 4	::	file_7BF214:	.import TEMP+"/7BF214.msg"	// Pipe Organ Comp, Saturday NPCs
.align 4	::	file_7BF258:	.import TEMP+"/7BF258.msg"
//.align 4	::	file_7BF6E4:	.import TEMP+"/7BF6E4.msg"	// Haikyo Comp 3, Sunday NPCs
//.align 4	::	file_7BF728:	.import TEMP+"/7BF728.msg"	// Haikyo Comp 3, Monday NPCs
//.align 4	::	file_7BF76C:	.import TEMP+"/7BF76C.msg"	// Haikyo Comp 3, Tuesday NPCs
//.align 4	::	file_7BF7B0:	.import TEMP+"/7BF7B0.msg"	// Haikyo Comp 3, Wednesday NPCs
//.align 4	::	file_7BF7F4:	.import TEMP+"/7BF7F4.msg"	// Haikyo Comp 3, Thursday NPCs
//.align 4	::	file_7BF838:	.import TEMP+"/7BF838.msg"	// Haikyo Comp 3, Friday NPCs
//.align 4	::	file_7BF87C:	.import TEMP+"/7BF87C.msg"	// Haikyo Comp 3, Saturday NPCs
.align 4	::	file_7BF8C0:	.import TEMP+"/7BF8C0.msg"
//.align 4	::	file_7BFAFC:	.import TEMP+"/7BFAFC.msg"	// Waste Comp, Sun
//.align 4	::	file_7BFB40:	.import TEMP+"/7BFB40.msg"	// Waste Comp, Monday NPCs
//.align 4	::	file_7BFB84:	.import TEMP+"/7BFB84.msg"	// Waste Comp, Tuesday NPCs
//.align 4	::	file_7BFBC8:	.import TEMP+"/7BFBC8.msg"	// Waste Comp, Wednesday NPCs
//.align 4	::	file_7BFC0C:	.import TEMP+"/7BFC0C.msg"	// Waste Comp, Thursday NPCs
.align 4	::	file_7BFC50:	.import TEMP+"/7BFC50.msg"
//.align 4	::	file_7BFE08:	.import TEMP+"/7BFE08.msg"	// Waste Comp, Saturday NPCs
.align 4	::	file_7BFE4C:	.import TEMP+"/7BFE4C.msg"
.align 4	::	file_7C0068:	.import TEMP+"/7C0068.msg"
//.align 4	::	file_7C0268:	.import TEMP+"/7C0268.msg"	// Roll NPCs
//.align 4	::	file_7C0468:	.import TEMP+"/7C0468.msg"	// GutsMan NPCs
.align 4	::	file_7C0668:	.import TEMP+"/7C0668.msg"
.align 4	::	file_7C0970:	.import TEMP+"/7C0970.msg"
//.align 4	::	file_7C0B8C:	.import TEMP+"/7C0B8C.msg"	// FireMan NPCs
//.align 4	::	file_7C0D8C:	.import TEMP+"/7C0D8C.msg"	// ThunderMan NPCs
.align 4	::	file_7C0F8C:	.import TEMP+"/7C0F8C.msg"
//.align 4	::	file_7C1D54:	.import TEMP+"/7C1D54.msg"	// NumberMan NPCs
//.align 4	::	file_7C1F54:	.import TEMP+"/7C1F54.msg"	// MetalMan NPCs
//.align 4	::	file_7C2154:	.import TEMP+"/7C2154.msg"	// JunkMan NPCs
//.align 4	::	file_7C2354:	.import TEMP+"/7C2354.msg"	// AquaMan NPCs
//.align 4	::	file_7C2554:	.import TEMP+"/7C2554.msg"	// WoodMan NPCs
//.align 4	::	file_7C2754:	.import TEMP+"/7C2754.msg"	// StarMan NPCs
.align 4	::	file_7C2954:	.import TEMP+"/7C2954.msg"
.align 4	::	file_7C416C:	.import TEMP+"/7C416C.msg"
//.align 4	::	file_7C54E0:	.import TEMP+"/7C54E0.msg"	// NapalmMan NPCs
//.align 4	::	file_7C56E0:	.import TEMP+"/7C56E0.msg"	// IceMan NPCs
//.align 4	::	file_7C58E0:	.import TEMP+"/7C58E0.msg"	// ElecMan NPCs
//.align 4	::	file_7C5AE0:	.import TEMP+"/7C5AE0.msg"	// PlantMan NPCs
.align 4	::	file_7C5CE0:	.import TEMP+"/7C5CE0.msg"
.align 4	::	file_7C6BC0:	.import TEMP+"/7C6BC0.msg"
.align 4	::	file_7C6D7C:	.import TEMP+"/7C6D7C.msg"
.align 4	::	file_7C6E50:	.import TEMP+"/7C6E50.msg"
.align 4	::	file_7C6E94:	.import TEMP+"/7C6E94.msg"
.align 4	::	file_7C6F90:	.import TEMP+"/7C6F90.msg"
.align 4	::	file_7C714C:	.import TEMP+"/7C714C.msg"
.align 4	::	file_7C7188:	.import TEMP+"/7C7188.msg"
.align 4	::	file_7C802C:	.import TEMP+"/7C802C.msg"
.align 4	::	file_7C8570:	.import TEMP+"/7C8570.msg"
.align 4	::	file_7C90E0:	.import TEMP+"/7C90E0.msg"
.align 4	::	file_7C9C44:	.import TEMP+"/7C9C44.msg"
.align 4	::	file_7CA474:	.import TEMP+"/7CA474.msg"
.align 4	::	file_7CAF40:	.import TEMP+"/7CAF40.msg"
.align 4	::	file_7CB850:	.import TEMP+"/7CB850.msg"
.align 4	::	file_7CC6A0:	.import TEMP+"/7CC6A0.msg"
.align 4	::	file_7CD0B0:	.import	ROM_IN,0x7CD0B0,0x4E0
.align 4	::	file_7CD590:	.import	ROM_IN,0x7CD590,0x40
.align 4	::	file_7CD5D0:	.import	ROM_IN,0x7CD5D0,0x80
.align 4	::	file_7CD650:	.import	ROM_IN,0x7CD650,0x80
.align 4	::	file_7CD6D0:	.import	ROM_IN,0x7CD6D0,0xD8
.align 4	::	file_7CD7A8:	.import	ROM_IN,0x7CD7A8,0x168
.align 4	::	file_7CD910:	.import	ROM_IN,0x7CD910,0x18C
.align 4	::	file_7CDA9C:	.import	ROM_IN,0x7CDA9C,0x18C
.align 4	::	file_7CDC28:	.import	ROM_IN,0x7CDC28,0x680
.align 4	::	file_7CE2A8:	.import	ROM_IN,0x7CE2A8,0x20
.align 4	::	file_7CE2C8:	.import	ROM_IN,0x7CE2C8,0x90
.align 4	::	file_7CE358:	.import	ROM_IN,0x7CE358,0x160
.align 4	::	file_7CE4B8:	.import	ROM_IN,0x7CE4B8,0x20
.align 4	::	file_7CE4D8:	.import	ROM_IN,0x7CE4D8,0xF0
.align 4	::	file_7CE5C8:	.import TEMP+"/7CE5C8.msg"
.align 4	::	file_7CEA60:	.import	ROM_IN,0x7CEA60,0x34
.align 4	::	file_7CEA94:	.import	TEMP+"/7CEA94.img.lz"
.align 4	::	file_7CED28:	.import	ROM_IN,0x7CED28,0x264
.align 4	::	file_7CEF8C:
.area max(filesize(TEMP+"/7CEF8C_E.pal.lz"), filesize(TEMP+"/7CEF8C_U.pal.lz")),0x00
	.if VAR_TITLE_EU	::	.import	TEMP+"/7CEF8C_E.pal.lz"
	.else			::	.import	TEMP+"/7CEF8C_U.pal.lz"
	.endif
.endarea
.align 4	::	file_7CEFA4:
.area max(filesize(TEMP+"/7CEFA4_E.img.lz"), filesize(TEMP+"/7CEFA4_U.img.lz")),0x00
	.if VAR_TITLE_EU	::	.import	TEMP+"/7CEFA4_E.img.lz"
	.else			::	.import	TEMP+"/7CEFA4_U.img.lz"
	.endif
.endarea
.align 4	::	file_7D36A4:
.area max(filesize(TEMP+"/7D36A4_E.map.lz"), filesize(TEMP+"/7D36A4_U.map.lz")),0x00
	.if VAR_TITLE_EU	::	.import	TEMP+"/7D36A4_E.map.lz"
	.else			::	.import	TEMP+"/7D36A4_U.map.lz"
	.endif
.endarea
.align 4	::	file_7D3BE4:
.area max(filesize(TEMP+"/7D3BE4_E.pal.lz"), filesize(TEMP+"/7D3BE4_U.pal.lz")),0x00
	.if VAR_TITLE_EU	::	.import	TEMP+"/7D3BE4_E.pal.lz"
	.else			::	.import	TEMP+"/7D3BE4_U.pal.lz"
	.endif
.endarea
.align 4	::	file_7D3DA0:
	.if !VAR_TITLE_EU	::	.dw	filesize(TEMP+"/7D3DA4.pal.bin") \
					+	filesize(TEMP+"/7D3DC4.pal.bin") \
					+	filesize(TEMP+"/7D3DE4.pal.bin")
	.else			::	.dw	0
	.endif
.align 4	::	file_7D3DA4:	
	.if !VAR_TITLE_EU	::	.import	TEMP+"/7D3DA4.pal.bin"
	.else			::	.fill	filesize(TEMP+"/7D3DA4.pal.bin")
	.endif
.align 4	::	file_7D3DC4:	
	.if !VAR_TITLE_EU	::	.import	TEMP+"/7D3DC4.pal.bin"
	.else			::	.fill	filesize(TEMP+"/7D3DC4.pal.bin")
	.endif
.import	TEMP+""
.align 4	::	file_7D3DE4:	
	.if !VAR_TITLE_EU	::	.import	TEMP+"/7D3DE4.pal.bin"
	.else			::	.fill	filesize(TEMP+"/7D3DE4.pal.bin")
	.endif
.align 4	::	file_clockmsg:	.import	TEMP+"/clock.msg"
.align 4
