// Change weekday icon color based on virus elements
.org 0x802C964
	bl	field_dayOfWeekColor


// Prepend area names with underscores
.org 0x802CC32
	bl	field_prependUnderscores


// Make area names 12 characters
.org 0x802CC3E
	mov	r4,0xC
.org 0x802CC60
	mov	r4,0xC
.org 0x8031A43
	.db	0x0C
.org 0x802CC84
	.dw	field_areaNameTilemap


// Wide header on Player HP Mr. Prog menus
.org 0x806B536
	mov	r2,0x7