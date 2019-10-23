.if !VAR_24_HOUR
.align 2
common_convert24HourTo12Hour:
	cmp	r0,0h
	bne	@@next
	add	r0,0Ch
@@next:
	cmp	r0,0Ch
	ble	@@end
	sub	r0,0Ch
@@end:
	bx	r14

common_convert24HourTo12HourSub:
	push	r7,r14

	bl	common_convert24HourTo12Hour

	// Mess with the stack to restore the return address
	ldr	r7,[sp,0x8]
	mov	r14,r7
	ldr	r7,[sp,0x4]
	str	r7,[sp,0x8]
	ldr	r7,[sp]
	add	sp,0x8
	pop	r15
.endif


.if VAR_CALENDAR_MONDAY
.align 2
common_convertDayOfWeek:
	sub	r0,0x1		// Rotate left
	bpl	@@end
	mov	r0,0x6		// If Sunday, set to last day
@@end:
	bx	r14
.endif


.if !VAR_24_HOUR
.align 2
convert24HourTo12HourSetTime:
	push	r14
	ldrb	r0,[r4,18h]
	bl	common_convert24HourTo12Hour
	mov	r2,50h		// y-offset
	mov	r3,3h
	pop	r15
.endif


.if VAR_CALENDAR_MONDAY
.align 2

scheduleStartOfWeekMondayMarker:
	push	r14

	ldrb	r0,[r5,0x1F]
	bl	common_convertDayOfWeek
	mov	r5,r0

	pop	r15
.endif

	.pool
