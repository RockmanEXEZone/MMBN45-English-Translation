// Fix AM/PM time display on PET Screen
.org 0x8035990
.area 0x6,0x00
.if !VAR_24_HOUR
	bl	common_convert24HourTo12Hour
.endif
.endarea

.org 0x803599E
	cmp	r4,0xB


// Fix AM/PM time display on Field Screen
.org 0x802C98A
.area 0x6,0x00
.if !VAR_24_HOUR
	bl	common_convert24HourTo12Hour
.endif
.endarea

.org 0x802C9A6
	cmp	r0,0xB


// Fix AM/PM time display on Schedule Input
.org 0x80326A8
	cmp	r2,0xB

.org 0x80326C2
.area 0x18,0x00
	mov	r1,r6
	mov	r2,0x0
	mov	r0,0x1
	tst	r0,r7
	beq	@@next
	mov	r2,0x1
@@next:
	ldrb	r0,[r4,0x4]
.if !VAR_24_HOUR
	bl	common_convert24HourTo12Hour
.endif
	mov	r3,r0
	// x-offset for hour
	mov	r0,(VAR_24_HOUR ? 0x1D : 0x10)
	add	r0,r0,r5
.endarea


// Fix AM/PM time display on Schedule View
.if VAR_24_HOUR
.org 0x8033BE2
	mov	r0,0x36		// x-offset for hour
.org 0x8033BF4
	mov	r0,0x4B		// x-offset for minute
.org 0x8033C00
	mov	r0,0x3D		// x-offset for :
.org 0x8033C0C
	// Skip AM/PM
	b	0x8033C2E
.endif

.org 0x8033C10
	cmp	r0,0xB

.org 0x8033BE2
.area 0xE,0x00
	add	r1,r4,r6
	mov	r2,0xD
	ldrb	r0,[r7,0x6]
.if !VAR_24_HOUR
	bl	common_convert24HourTo12Hour
.endif
	mov	r3,r0
	mov	r0,0x2E
.endarea


// Fix AM/PM time display on Schedule Delete
.if VAR_24_HOUR
.org 0x803423A
	mov	r0,0x48		// x-offset for minute
.org 0x8034246
	mov	r0,0x38		// x-offset for :
.org 0x8034252
	b	0x8034274
.endif
.org 0x8034256
	cmp	r0,0xB
.org 0x8034228
.area 0xE,0x00
	add	r1,r4,r6
	mov	r2,0xB
	ldrb	r0,[r7,0x6]
.if !VAR_24_HOUR
	bl	common_convert24HourTo12Hour
.endif
	mov	r3,r0
.if VAR_24_HOUR
	mov	r0,0x30		// x-offset for hour
.else
	mov	r0,0x20		// x-offset for hour
.endif
.endarea

// Fix AM/PM time display in callBufferEventHour
.org 0x80340CA
.area 0x6,0x00
.if !VAR_24_HOUR
	push	r14
	bl	common_convert24HourTo12HourSub
.endif
.endarea
// Fix AM/PM time display in callBufferEventAMPM
.org 0x8034100
	cmp	r2,0xB



.if VAR_DDMMYYYY
// DD/MM in dialogue (just swap day and month buffer commands)
.org 0x805255E
	bl	0x802E520	// Load day for callBufferCurrentMonth
.org 0x8052566
	bl	0x802E50E	// Load month for callBufferCurrentDay
.org 0x80340B6
	ldrb	r0,[r2,0x4]	// Load day for callBufferEventMonth
.org 0x80340BE
	ldrb	r0,[r2,0x3]	// Load month for callBufferEventDay
.endif

.if VAR_24_HOUR
// Remove AM/PM in dialogue
.org 0x80340F4
.area 0x1A
	push	r14
	ldr	r1,[0x803413C]	// Get pointer to event schedule buffer
	mov	r0,0xE5
	strb	r0,[r1]		// Store empty string
	pop	r15
.endarea
.endif



// MM/DD/YY on PET Screen
.org 0x8035944
	mov	r1,0x18		// Year in third position
.if VAR_DDMMYYYY
.org 0x8035956
	mov	r1,0xC		// Month in second position
.org 0x8035968
	mov	r1,0x0		// Day in first position
.else
.org 0x8035956
	mov	r1,0x0		// Month in first position
.org 0x8035968
	mov	r1,0xC		// Day in second position
.endif

// 24-hour clock on PET Screen
.if VAR_24_HOUR
.org 0x803599C
	// Skip AM/PM
	b	0x80359AA
.org 0x8035A12
	.db	0x3F	// x-position of year digit 1
.org 0x8035A16
	.db	0x45	// x-position of year digit 2
.org 0x8035A1A
	.db	0x4B	// x-position of first /
.org 0x8035A1E
	.db	0x51	// x-position of month digit 1
.org 0x8035A22
	.db	0x57	// x-position of month digit 2
.org 0x8035A26
	.db	0x5D	// x-position of second /
.org 0x8035A2A
	.db	0x63	// x-position of day digit 1
.org 0x8035A2E
	.db	0x69	// x-position of day digit 2
.org 0x8035A32
	.db	0x8F	// x-position of hour digit 1
.org 0x8035A36
	.db	0x95	// x-position of hour digit 2
.org 0x8035A3A
	.db	0x9B	// x-position of :
.org 0x8035A3E
	.db	0xA1	// x-position of minute digit 1
.org 0x8035A42
	.db	0xA7	// x-position of minute digit 2
.org 0x8035A4A
	.db	0x73	// x-position of weekday
.endif



// BattleChip Gate icon position on Field Screen
.org 0x802CC2A
.if VAR_24_HOUR
	.db	0x6C
.else
	.db	0x5C
.endif

// MM/DD/YY on Field Screen
.org 0x802C946
.if VAR_24_HOUR
	mov	r4,0x80	// base x-offset for date and time
.else
	mov	r4,0x70	// base x-offset for date and time
.endif

.if VAR_DDMMYYYY
.org 0x802CAA6
	.db	0x18	// x-offset for month X0
.org 0x802CAAE
	.db	0x20	// x-offset for month 0X
.org 0x802CABA
	.db	0x00	// x-offset for day X0
.org 0x802CAC2
	.db	0x08	// x-offset for day 0X
.else
.org 0x802CAA6
	.db	0x00	// x-offset for month X0
.org 0x802CAAE
	.db	0x08	// x-offset for month 0X
.org 0x802CABA
	.db	0x18	// x-offset for day X0
.org 0x802CAC2
	.db	0x20	// x-offset for day 0X
.endif
.org 0x802CA5E
	.db	0x10	// x-offset for / when PM
.org 0x802CA7A
	.db	0x10	// x-offset for / when AM
.org 0x802CA66
	.db	0x27	// x-offset for ( when PM
.org 0x802CA82
	.db	0x27	// x-offset for ( when AM
.org 0x802CAF6
	.db	0x2F	// x-offset for weekday
.org 0x802CAFE
	.db	0x3F	// x-offset for )
.org 0x802CACE
	.db	0x46	// x-offset for hour X0
.org 0x802CAD6
	.db	0x4E	// x-offset for hour 0X
.org 0x802CA9A
	.db	0x56	// x-offset for :
.org 0x802CAE2
	.db	0x5E	// x-offset for minute X0
.org 0x802CAEA
	.db	0x66	// x-offset for minute 0X
.org 0x802CA6E
	.db	0x70	// x-offset for PM
.org 0x802CA8A
	.db	0x70	// x-offset for AM



.org 0x803AC68	// y-offset for first / on "Enter the date and time."
	.db	0x43
.org 0x803AC6A	// x-offset for first / on "Enter the date and time."
	.db	0x47
.org 0x803AC78	// y-offset for first / on "Enter the date and time." (orange)
	.db	0x43
.org 0x803AC7A	// x-offset for first / on "Enter the date and time." (orange)
	.db	0x47
.org 0x803AC88	// y-offset for second / on "Enter the date and time."
	.db	0x43
.org 0x803AC8A	// x-offset for second / on "Enter the date and time."
	.db	0x6C
.org 0x803AC98	// y-offset for second / on "Enter the date and time." (orange)
	.db	0x43
.org 0x803AC9A	// x-offset for second / on "Enter the date and time." (orange)
	.db	0x6C
.org 0x803ACA8	// y-offset for : on "Enter the date and time."
	.db	0x50
.org 0x803ACAA	// x-offset for : on "Enter the date and time."
	.db	0x6C
.org 0x803ACB8	// y-offset for : on "Enter the date and time." (orange)
	.db	0x50
.org 0x803ACBA	// x-offset for : on "Enter the date and time." (orange)
	.db	0x6C
.org 0x803ACC8	// y-offset for AM on "Enter the date and time."
	.db	0x50
.org 0x803ACCA	// x-offset for AM on "Enter the date and time."
	.db	0x9A
.org 0x803ACD8	// y-offset for AM on "Enter the date and time." (orange)
	.db	0x50
.org 0x803ACDA	// x-offset for AM on "Enter the date and time." (orange)
	.db	0x9A
.org 0x803ACE8	// y-offset for PM on "Enter the date and time."
	.db	0x50
.org 0x803ACEA	// x-offset for PM on "Enter the date and time."
	.db	0x9A
.org 0x803ACF8	// y-offset for PM on "Enter the date and time." (orange)
	.db	0x50
.org 0x803ACFA	// x-offset for PM on "Enter the date and time." (orange)
	.db	0x9A
.org 0x803ADE0	// y-offset for (Su) on "Enter the date and time." screen
	.db	0x43
.org 0x803ADE2	// x-offset for (Su) on "Enter the date and time." screen
	.db	0xA2
.org 0x803ADF0	// y-offset for (Su) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803ADF2	// x-offset for (Su) on "Enter the date and time." screen (orange)
	.db	0xA2
.org 0x803AE00	// y-offset for (Mo) on "Enter the date and time." screen
	.db	0x43
.org 0x803AE02	// x-offset for (Mo) on "Enter the date and time." screen
	.db	0xA2
.org 0x803AE10	// y-offset for (Mo) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803AE12	// x-offset for (Mo) on "Enter the date and time." screen (orange)
	.db	0xA2
.org 0x803AE20	// y-offset for (Tu) on "Enter the date and time." screen
	.db	0x43
.org 0x803AE22	// x-offset for (Tu) on "Enter the date and time." screen
	.db	0xA2
.org 0x803AE30	// y-offset for (Tu) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803AE32	// x-offset for (Tu) on "Enter the date and time." screen (orange)
	.db	0xA2
.org 0x803AE40	// y-offset for (We) on "Enter the date and time." screen
	.db	0x43
.org 0x803AE42	// x-offset for (We) on "Enter the date and time." screen
	.db	0xA2
.org 0x803AE50	// y-offset for (We) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803AE52	// x-offset for (We) on "Enter the date and time." screen (orange)
	.db	0xA2
.org 0x803AE60	// y-offset for (Th) on "Enter the date and time." screen
	.db	0x43
.org 0x803AE62	// x-offset for (Th) on "Enter the date and time." screen
	.db	0xA2
.org 0x803AE70	// y-offset for (Th) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803AE72	// x-offset for (Th) on "Enter the date and time." screen (orange)
	.db	0xA2
.org 0x803AE80	// y-offset for (Fr) on "Enter the date and time." screen
	.db	0x43
.org 0x803AE82	// x-offset for (Fr) on "Enter the date and time." screen
	.db	0xA2
.org 0x803AE90	// y-offset for (Fr) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803AE92	// x-offset for (Fr) on "Enter the date and time." screen (orange)
	.db	0xA2
.org 0x803AEA0	// y-offset for (Sa) on "Enter the date and time." screen
	.db	0x43
.org 0x803AEA2	// x-offset for (Sa) on "Enter the date and time." screen
	.db	0xA2
.org 0x803AEB0	// y-offset for (Sa) on "Enter the date and time." screen (orange)
	.db	0x43
.org 0x803AEB2	// x-offset for (Sa) on "Enter the date and time." screen (orange)
	.db	0xA2

// Draw date/time in different order on Set Time screen
.org 0x803A97E
.area 0x8A,0x00
	ldr	r4,[0x803AA3C]
.if VAR_DDMMYYYY
	// Draw day
	ldrb	r0,[r4,0x16]
.else
	// Draw month
	ldrb	r0,[r4,0x15]
.endif
	mov	r1,0x30		// x-offset
	mov	r2,0x42		// y-offset
	mov	r3,0x0
	bl	0x803AA7C
	// Draw first /
	mov	r0,0x4
	bl	0x803AA40
.if VAR_DDMMYYYY
	// Draw month
	ldrb	r0,[r4,0x15]
.else
	// Draw day
	ldrb	r0,[r4,0x16]
.endif
	mov	r1,0x55		// x-offset
	mov	r2,0x42		// y-offset
	mov	r3,0x1
	bl	0x803AA7C
	// Draw second /
	mov	r0,0x6
	bl	0x803AA40
	// Draw XX00
	mov	r0,0x14
	mov	r1,0x7A		// x-offset
	mov	r2,0x42		// y-offset
	mov	r3,0x2
	bl	0x803AA7C
	// Draw 20X0
	mov	r0,0x0
	mov	r1,0x82		// x-offset
	mov	r2,0x42		// y-offset
	mov	r3,0x2
	bl	0x803AA7C
	// Draw year
	ldrb	r0,[r4,0x14]
	mov	r1,0x8A		// x-offset
	mov	r2,0x42		// y-offset
	mov	r3,0x2
	bl	0x803AA7C
	// Draw weekday
	ldrb	r0,[r4,0x17]
	lsl	r0,r0,0x1
	add	r0,0x14
	bl	0x803AA40
	// Draw hour
	ldrb	r0,[r4,0x18]
.if !VAR_24_HOUR
	bl	common_convert24HourTo12Hour
.endif
	mov	r1,0x55		// x-offset
	mov	r2,0x50		// y-offset
	mov	r3,0x3
	bl	0x803AA7C
	// Draw :
	mov	r0,0x8
	bl	0x803AA40
	// Draw minute
	ldrb	r0,[r4,0x19]
	add	r0,0xC8		// Add 200 to get a leading 0
	mov	r1,0x7A		// x-offset
	mov	r2,0x50		// y-offset
	mov	r3,0x4
	bl	0x803AA7C
.if !VAR_24_HOUR
	// Draw AM/PM
	mov	r0,0xA
	ldrb	r1,[r4,0x18]
	cmp	r1,0xB
	ble	@@drawAMPM
	mov	r0,0xC
@@drawAMPM:
	bl	0x803AA40
.endif
	b	0x803AA3A
.endarea

// Change change order on Set Time screen
.org 0x803A7E8
.if VAR_DDMMYYYY
	.dw	0x800656B		// Change day
	.dw	bugfix_monthSet|1	// Change month
.else
	.dw	bugfix_monthSet|1	// Change month
	.dw	0x800656B		// Change day
.endif
	.dw	bugfix_yearSet|1	// Change year
	.dw	0x800658D		// Change hour
	.dw	0x80065A5		// Change minute



// MM/DD/YYYY on Schedule Input
.org 0x8032608
.area 0x54,0x00
	// Draw month/day
	mov	r0,r5
	mov	r1,r6
	mov	r2,0x0
.if VAR_DDMMYYYY
	ldrb	r3,[r4,0x2]	// Get day
.else
	ldrb	r3,[r4,0x1]	// Get month
.endif
	bl	0x8032706
	// Draw first /
	mov	r0,0x10
	add	r0,r0,r5
	mov	r1,r6
	mov	r2,0x0
	mov	r3,0xA
	bl	0x8032750
	// Draw day/month
	mov	r0,0x18
	add	r0,r0,r5
	mov	r1,r6
	mov	r2,0x0
.if VAR_DDMMYYYY
	ldrb	r3,[r4,0x1]	// Get month
.else
	ldrb	r3,[r4,0x2]	// Get day
.endif
	bl	0x8032706
	// Draw second /
	mov	r0,0x28
	add	r0,r0,r5
	mov	r1,r6
	mov	r2,0x0
	mov	r3,0xA
	bl	0x8032750
	// Draw year XX00
	mov	r0,0x30
	add	r0,r0,r5
	mov	r1,r6
	mov	r2,0x0
	mov	r3,0x14
	bl	0x8032706
	// Draw year 00XX
	mov	r0,0x40
	add	r0,r0,r5
	mov	r1,r6
	mov	r2,0x0
	ldrb	r3,[r4]
	add	r3,0x80
	bl	0x8032706
.endarea

// Move AM/PM after time on Schedule Input
.if VAR_24_HOUR
.org 0x803269E
	// Skip AM/PM
	b	0x80326C2
.org 0x80326DE
	mov	r0,0x2D	// x-offset of :
.org 0x80326EC
	mov	r0,0x35	// x-offset of minute
.else
.org 0x803269E
	mov	r0,0x40	// x-offset of A/P
.org 0x80326B4
	mov	r0,0x48	// x-offset of M
.org 0x80326DE
	mov	r0,0x20	// x-offset of :
.org 0x80326EC
	mov	r0,0x28	// x-offset of minute
.endif



// MM/DD/YY on Schedule View
.org 0x8033B46
	mov	r0,0x4A	// base x-offset of year
.if VAR_DDMMYYYY
.org 0x8033B52
	mov	r0,0x32	// base x-offset of month
.org 0x8033B5E
	mov	r0,0x1A	// base x-offset of day
.else
.org 0x8033B52
	mov	r0,0x1A	// base x-offset of month
.org 0x8033B5E
	mov	r0,0x32	// base x-offset of day
.endif



// MM/DD/YY on Schedule Delete
.org 0x80341CC
	mov	r0,0x50	// x-offset of year
.org 0x80341D8
	mov	r0,0x40	// x-offset of first /
.org 0x80341FC
	mov	r0,0x28	// x-offset of second /
.if VAR_DDMMYYYY
.org 0x80341E4
	mov	r0,0x38	// x-offset of month
.org 0x80341F0
	mov	r0,0x20	// x-offset of day
.else
.org 0x80341E4
	mov	r0,0x20	// x-offset of month
.org 0x80341F0
	mov	r0,0x38	// x-offset of day
.endif



.if VAR_CALENDAR_MONDAY
.org 0x8032110
.area 0xA,0x00
	ldrb	r0,[r0,0x1F]
	bl	common_convertDayOfWeek
	lsl	r6,r0,0x4
	mov	r4,0x1
.endarea

.org 0x8037002
	bl	scheduleStartOfWeekMondayMarker
	mov	r6,0x0
@scheduleMarkerLoop:
	ldrb	r3,[r4]
	tst	r3,r3
	beq	0x803702C
	lsl	r1,r5,0x4
.org 0x803703A
	ble	@scheduleMarkerLoop
.org 0x8037040
	b	@scheduleMarkerLoop

.org 0x8031F80
.area 0x16,0x00
	ldrb	r0,[r5,0x18]	// Get day of week
	bl	common_convertDayOfWeek

	ldrb	r1,[r5,0x17]	// Get day in month
	sub	r1,0x1

	add	r0,r0,r1
	mov	r1,0x7
	swi	0x6

	mov	r2,0xB
	mul	r0,r2
	lsl	r1,r1,0x14
.endarea

.org 0x8031FBA
.area 0x16,0x00
	ldrb	r0,[r5,0x1F]	// Get day of week
	bl	common_convertDayOfWeek

	ldrb	r1,[r5,0x1E]	// Get day in month
	sub	r1,0x1

	add	r0,r0,r1
	mov	r1,0x7
	swi	0x6

	mov	r2,0xB
	mul	r0,r2
	lsl	r1,r1,0x14
.endarea
.endif
