.definelabel	VAR_DEAD_CLOCK,		0
.definelabel	VAR_JP,			0
.definelabel	VAR_LINK_EU,		(VAR_EU ? 1 : 0)
.definelabel	VAR_TEXT_EU,		(VAR_EU ? 1 : 0)
.definelabel	VAR_24_HOUR,		(VAR_EU ? 1 : 0)
.definelabel	VAR_DDMMYYYY,		(VAR_EU ? 1 : 0)
.definelabel	VAR_TITLE_EU,		(VAR_EU ? 1 : 0)
.definelabel	VAR_CALENDAR_MONDAY,	(VAR_EU ? 1 : 0)

.definelabel	FREE_SPACE1,	0x81D9110	// End of .text section
.definelabel	FREE_SPACE2,	0x81E0164	// After VC blinder flash

VAR_VERSION_DATE	equ	0x20191114
VAR_VERSION_REVISION	equ	0
//VAR_VERSION_REVISION	equ	(FILE_SIZE/4)-0x8000000

.table "tools/plugins/exe45t-utf8.tbl"

.gba
.create ROM_OUT,0x8000000
	// Trim ROM
	.import ROM_IN,0,FREE_SPACE1-headersize()
IWRAM_BLOB:
	.import	ROM_IN,0x1EE700,0x1874

// English translation patch identifier
.arm
.org 0x8000128
	ldr	r1,[0x80001C0]
.org 0x80001D0
	.dw	VersionInfo|0xF0000000
.thumb

// Re-point IWRAM blob
.org 0x80001CC
	.dw	IWRAM_BLOB

	// File pointers and sizes
	.include "files.asm"

	// Bug fixes
	.include "asm/_bugfix.asm"

	// Assembly patches
.if VAR_DEBUG
	.include "asm/_debug.asm"
.endif
	.include "asm/battle.asm"
	.include "asm/battlechip.asm"
	.include "asm/capcom.asm"
	.include "asm/clock.asm"
	.include "asm/credits.asm"
	.include "asm/field.asm"
	.include "asm/folder-edit.asm"
	.include "asm/link.asm"
	.include "asm/minigame.asm"
	.include "asm/navi-select.asm"
	.include "asm/npc.asm"
	.include "asm/pet.asm"
	.include "asm/profile.asm"
	.include "asm/save.asm"
	.include "asm/text.asm"
	.include "asm/text-input.asm"
	.include "asm/time.asm"
	.include "asm/title.asm"
	.include "asm/tournament.asm"

.org FREE_SPACE1+0x1874
.area 0x81E0000-.,0xFF

VersionInfo:
	// Version info
	.dw	(VersionInfo_end - VersionInfo)
.if VAR_EU
	.dw	0x50345242	// BR4P
.else
	.dw	0x45345242	// BR4E
.endif
	.dw	FILE_SIZE
	.ascii	"v1.1"
VersionInfo_end:

	// Extended assembly patches
	.include "asm/_bugfix.ext.asm"
.if VAR_DEBUG
	.include "asm/_debug.ext.asm"
.endif
	.include "asm/battle.ext.asm"
	.include "asm/clock.ext.asm"
	.include "asm/credits.ext.asm"
	.include "asm/field.ext.asm"
	.include "asm/minigame.ext.asm"
	.include "asm/navi-select.ext.asm"
	.include "asm/npc.ext.asm"
	.include "asm/pet.ext.asm"
	.include "asm/save.ext.asm"
	.include "asm/text.ext.asm"
	.include "asm/text-input.ext.asm"
	.include "asm/time.ext.asm"
	.include "asm/title.ext.asm"

.align 4,0x00

.endarea

// Virtual Console functions
.org 0x81E0000
.area 0x100,0xFF
	.import	ROM_IN,0x1E0000,0x14
.endarea
.area 0x64,0xFF
	.import	ROM_IN,0x1E0100,0x64
.endarea

.org FREE_SPACE2

	// Files
	.include "files.ext.asm"

.align 4,0x00
.asciiz "EOF"
FILE_SIZE:

.align 0x800000,0xFF
.close
