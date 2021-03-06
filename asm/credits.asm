.org 0x8047746
	bl	credits_unlockNavis


// 00 p0 p1 p2		= print text p0 at indent p1 with tile width p2
// 04 p0		= scroll p0 lines (16 pixels)
// 08 p0		= wait p0 frames
// 0C			= stop scrolling and wait for key press
// 10			= Capcom logo
// 14 p0 p1 p2		= same as 00 but buffers Clear Time hours and minutes
// 18 p0 p1 p2		= same as 00 but buffers Standard count
// 1C p0 p1 p2		= same as 00 but buffers Mega count
// 20 p0 p1 p2		= same as 00 but buffers Giga count
// 24 p0 p0 p0 p0	= spawn Navi animation p0
// 28 p0 p1		= mosaic from p0 to p1

.org 0x80D9B20
.area 0x228
	.db 0x28,0x0A,0x00		// mosaic from 10 to 0
//OLD//	.db 0x00,0x44,0x04,0x18		// "MegaMan"
/*NEW*/	.db 0x00,0x44,0x0C,0x18		// "MegaMan"
	.db 0x04,0x01			// scroll 1 line(s)
/*NEW*/	.db 0x00,0x47,0x08,0x18		// "Battle Network4.5"
/*NEW*/	.db 0x04,0x01			// scroll 1 line(s)
//OLD//	.db 0x00,0x45,0x0E,0x10		// "Real Operation"
/*NEW*/	.db 0x00,0x45,0x09,0x18		// "Real Operation"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x24,0x90,0x9D,0x0D,0x08	// spawn MegaMan
	.db 0x24,0x50,0x9E,0x0D,0x08	// spawn GutsMan
	.db 0x04,0x01			// scroll 1 line(s)
//OLD//	.db 0x00,0x46,0x0C,0x10		// "Staff"
/*NEW*/	.db 0x00,0x46,0x0D,0x18		// "Staff"
	.db 0x04,0x02			// scroll 2 line(s)
//OLD//	.db 0x00,0x00,0x04,0x06		// "Planning"
/*NEW*/	.db 0x00,0x00,0x04,0x18		// "Planning"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x01,0x06,0x18		// "Masahiro Yasuma"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x02,0x06,0x18		// "Kohei Ozaki"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x24,0x4C,0xA5,0x0D,0x08	// spawn IceMan
	.db 0x24,0xA0,0xA6,0x0D,0x08	// spawn KnightMan
	.db 0x04,0x02			// scroll 2 line(s)
//OLD//	.db 0x00,0x03,0x04,0x08		// "Scenario"
/*NEW*/	.db 0x00,0x03,0x04,0x18		// "Scenario"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x04,0x06,0x18		// "Masakazu Eguchi"
	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x05,0x04,0x10		// "Character Design"
/*NEW*/	.db 0x00,0x05,0x04,0x18		// "Character Design"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x06,0x06,0x18		// "Yuji Ishihara"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x07,0x06,0x18		// "Hayato Kaji"
	.db 0x04,0x02			// scroll 2 line(s)
//OLD//	.db 0x00,0x08,0x04,0x10		// "LaserMan Design"
/*NEW*/	.db 0x00,0x08,0x04,0x18		// "LaserMan Design"
	.db 0x24,0x68,0xA1,0x0D,0x08	// spawn NumberMan & LaserMan
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x09,0x06,0x18		// "Yoshihito Nonaka"
	.db 0x04,0x02			// scroll 2 line(s)
//OLD//	.db 0x00,0x0A,0x04,0x10		// "KendoMan Design"
/*NEW*/	.db 0x00,0x0A,0x04,0x18		// "KendoMan Design"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x0B,0x06,0x18		// "Yuta Koido"
	.db 0x04,0x02			// scroll 2 line(s)
//OLD//	.db 0x00,0x0C,0x04,0x10		// "VideoMan Design"
/*NEW*/	.db 0x00,0x0C,0x04,0x18		// "VideoMan Design"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x0D,0x06,0x18		// "Yosuke Shimizu"
	.db 0x04,0x03			// scroll 3 line(s)
	.db 0x24,0x48,0xA3,0x0D,0x08	// spawn VideoMan
	.db 0x24,0xD0,0xA4,0x0D,0x08	// spawn KendoMan
	.db 0x04,0x01			// scroll 1 line(s)
//OLD//	.db 0x00,0x0E,0x04,0x0A		// "Object"
/*NEW*/	.db 0x00,0x0E,0x04,0x18		// "Object"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x0F,0x06,0x18		// "Kazutaka Sato"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x10,0x06,0x18		// "Ikuo Nakayama"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x11,0x06,0x18		// "Kyoko Arima"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x12,0x06,0x18		// "Tokiko Nakashima"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x13,0x06,0x18		// "Mayumi Yoshioka"
//OLD//	.db 0x04,0x01			// scroll 1 line(s)
//OLD//	.db 0x04,0x03			// scroll 3 line(s)
/*NEW*/	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x14,0x04,0x0A		// "Scroll"
/*NEW*/	.db 0x00,0x14,0x04,0x18		// "Scroll"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x15,0x06,0x18		// "Miki Kijima"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x24,0xA4,0x9F,0x0D,0x08	// spawn ProtoMan
	.db 0x24,0x30,0xA0,0x0D,0x08	// spawn StarMan
	.db 0x00,0x16,0x06,0x18		// "Junko Fujisaki"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x17,0x06,0x18		// "Chieko Ryugo"
	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x18,0x04,0x0A		// "Program"
/*NEW*/	.db 0x00,0x18,0x04,0x18		// "Program"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x19,0x06,0x18		// "Koetsu Matsuda"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x24,0xE4,0xA7,0x0D,0x08	// spawn ShadowMan
	.db 0x24,0x34,0xA9,0x0D,0x08	// spawn PlantMan
	.db 0x00,0x1A,0x06,0x18		// "Hidekazu Shingaki"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x1B,0x06,0x18		// "Mitsunori Sakano"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x1C,0x06,0x18		// "Toshihide Anai"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x1D,0x06,0x18		// "Shinya Ikuta"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x1E,0x06,0x18		// "Naoko Nishiyama"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x1F,0x06,0x18		// "Soichi Ito"
	.db 0x04,0x04			// scroll 4 line(s)
	.db 0x24,0x7C,0xA9,0x0D,0x08	// spawn Roll
	.db 0x24,0x04,0xAA,0x0D,0x08	// spawn ElecMan
//OLD//	.db 0x00,0x20,0x04,0x08		// "Music"
/*NEW*/	.db 0x00,0x20,0x04,0x18		// "Music"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x21,0x06,0x18		// "Horiyama Toshihiko"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x22,0x06,0x18		// "Akira Kaida"
	.db 0x04,0x03			// scroll 3 line(s)
	.db 0x24,0x84,0xAA,0x0D,0x08	// spawn BurnerMan
	.db 0x24,0x40,0xAB,0x0D,0x08	// spawn FireMan
	.db 0x04,0x01			// scroll 1 line(s)
//OLD//	.db 0x00,0x23,0x04,0x0A		// "Sound Effect"
/*NEW*/	.db 0x00,0x23,0x04,0x18		// "Sound Effect"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x24,0x06,0x18		// "Shinji Amagishi"
	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x25,0x04,0x10		// "Official Illustration"
/*NEW*/	.db 0x00,0x25,0x04,0x18		// "Official Illustration"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x26,0x06,0x18		// "Shinsuke Komaki"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x24,0xB4,0xAC,0x0D,0x08	// spawn WindMan
	.db 0x24,0xE8,0xAD,0x0D,0x08	// spawn TopMan
	.db 0x04,0x02			// scroll 2 line(s)
//OLD//	.db 0x00,0x27,0x04,0x10		// "Jack-In Effect"
/*NEW*/	.db 0x00,0x27,0x04,0x18		// "Jack-In Effect"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x28,0x06,0x18		// "Hirokazu Hikita"
//OLD//	.db 0x04,0x01			// scroll 1 line(s)
//OLD//	.db 0x04,0x03			// scroll 3 line(s)
/*NEW*/	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x29,0x04,0x10		// "Manual Production"
/*NEW*/	.db 0x00,0x29,0x04,0x18		// "Manual Production"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x24,0xEC,0xB4,0x0D,0x08	// spawn MetalMan
	.db 0x24,0xE0,0xB5,0x0D,0x08	// spawn NapalmMan
	.db 0x00,0x2A,0x06,0x18		// "Akemi Iwasaki"
	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x2B,0x04,0x10		// "Debug Supervision"
/*NEW*/	.db 0x00,0x2B,0x04,0x18		// "Debug Supervision"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x2C,0x06,0x18		// "Masato Nanba"
	.db 0x04,0x04			// scroll 4 line(s)
//OLD//	.db 0x00,0x2D,0x04,0x10		// "Special Thanks!"
/*NEW*/	.db 0x00,0x2D,0x04,0x18		// "Special Thanks!"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x2E,0x06,0x18		// "Hiroshi Yamashita"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x2F,0x06,0x18		// "Teruhiro Shimogawa"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x30,0x06,0x18		// "Hiroko Nakamura"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x31,0x06,0x18		// "Kazuo Choya"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x24,0x60,0xAE,0x0D,0x08	// spawn MegaMan & ProtoMan
	.db 0x24,0xF0,0xB1,0x0D,0x08	// spawn Bass
	.db 0x00,0x32,0x06,0x18		// "Kunio Funahara"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x33,0x06,0x18		// "Satoshi Ukai"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x35,0x06,0x18		// "Yuko Yasuda"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x36,0x06,0x18		// "Takashi Kitahara"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x37,0x06,0x18		// "Naoto Minamide"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x38,0x06,0x18		// "Sara Tanaka"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x39,0x06,0x18		// "KonamiJPN Hideo Kojima"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x3A,0x06,0x18		// "KonamiJPN Masahiro Hinami"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x3B,0x06,0x18		// "Rockman Club"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x3C,0x06,0x18		// "Product Dev 2"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x00,0x3D,0x06,0x18		// "CAPCOM"
	.db 0x04,0x0C			// scroll 12 line(s)
//OLD//	.db 0x00,0x3E,0x04,0x0E		// "Producer"
/*NEW*/	.db 0x00,0x3E,0x04,0x18		// "Producer"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x00,0x3F,0x06,0x18		// "Keiji Inafune"
	.db 0x04,0x0C			// scroll 12 line(s)
	.db 0x28,0x00,0x0F		// mosaic from 0 to 15
	.db 0x14,0x40,0x04,0x18		// "Clear Time :"
	.db 0x04,0x02			// scroll 2 line(s)
	.db 0x18,0x41,0x04,0x18		// "Data Library S"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x1C,0x42,0x04,0x18		// "M"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x20,0x43,0x04,0x18		// "G"
	.db 0x04,0x01			// scroll 1 line(s)
	.db 0x10			// Capcom logo
	.db 0x04,0x04			// scroll 4 line(s)
	.db 0x0C			// end
.endarea
