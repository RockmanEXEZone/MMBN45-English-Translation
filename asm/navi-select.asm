// "Accepting Navi DataChip" text
.org 0x08039480
	// Increase number of letters
	.db	0x18
.org 0x08039470
	// x-position of text
	mov	r0,0x1C


// Use wider Navi names
.org 0x80395BC
	bl	naviSelect_getNaviNameTile
.org 0x80395C4
	mov	r2,0xB	// from 0x3
.org 0x80395D2
	bl	naviSelect_renderNaviName


// Unlock Chip Gate Navis in-game
.org 0x8046DF0
	bl	naviSelect_chipGateNaviUnlocks


// Unlock all Navis when Select is held
.if VAR_DEBUG
.org 0x80D8EAA
	bl	naviSelect_unlockAllNavis
.endif

// Bypass Virtual Console unlock hook
.org 0x80394C6
	bl	naviSelect_bypassVC
.org 0x80394E2
	bl	naviSelect_bypassVC
.org 0x8039504
	bl	naviSelect_bypassVC
.org 0x80D8F40
	bl	naviSelect_bypassVC
