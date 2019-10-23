.definelabel	VAR_DEAD_CLOCK,		0
.definelabel	VAR_JP,			1

.definelabel	FREE_SPACE,0x87D3E04
.definelabel	IWRAM_BLOB,0x81EE700

.gba
.open ROM_IN,ROM_OUT,0x8000000
	// Bug fixes
	.include "asm/_bugfix.asm"

	// JP only bug fix
	.org 0x8035BCC	// wrong size
		.dw	0xF40

	// Clock fix
	.include "asm/clock.asm"

	// NPC changes
	.include "asm/npc.asm"

	// Save import
	.include "asm/save.asm"

	// Fixed text archives
.org 0x8662C5C
file_662C5C:
.area 0x1BA8,0x00
	.import TEMP+"/662C5C.msg"
.endarea

.org 0x8689DF8
file_689DF8:
.area 0x1CB4,0x00
	.import TEMP+"/689DF8.msg"
.endarea

.org 0x868FB1C
file_68FB1C:
.area 0x1E78,0x00
	.import TEMP+"/68FB1C.msg"
.endarea

.org 0x86F7D10
file_6F7D10:
.area 0x308,0x00
	.import TEMP+"/6F7D10.msg"
.endarea

.org 0x87A152C
file_7A152C:
.area 0x1D7C,0x00
	.import TEMP+"/7A152C.msg"
.endarea

	// Fixed sprites
.org 0x822137C
.area 0xEE40
	.import	"inc/gutsman.dmp"
.endarea

.org 0x83FF56C
.area 0x8430
	.import	"inc/gutsman-ow.dmp"
.endarea

.org 0x802B478
	.dw	file_bass
.org 0x802B47C
	.dw	file_sword
.org 0x802B704
	.dw	file_bassCape
.org 0x802BBEC
	.dw	file_sword

// Undernet 3 wallmap fix
.org 0x85E00DC
.area 0x6FC4
	.import "inc/undernet3-wallmap.lz"
.endarea

.org FREE_SPACE

	// Bug fixes
	.include "asm/_bugfix.ext.asm"

	// Clock fix
	.include "asm/clock.ext.asm"

	// NPC changes
	.include "asm/npc.ext.asm"

	// Save import
	.include "asm/save.ext.asm"

.align 4
file_clockmsg:
	.import	TEMP+"/clock.msg"

.align 4
file_bass:
	.import	"inc/bass.dmp"

.align 4
file_bassCape:
	.import	"inc/bass-cape.dmp"

.align 4
file_sword:
	.import	"inc/sword.dmp"

.align 4,0xFF
.close
