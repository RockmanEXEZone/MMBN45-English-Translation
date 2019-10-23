// Load correct palette size for Capcom screen
.org 0x803066E
	mov	r2,filesize(TEMP+"/62FA94.pal.bin")
	nop


// Change Capcom screen timing to allow skip only after 60 frames,
// in line with English MMBN2 and MMBN4.
.org 0x080306E4
.area 0x30
	push	r14
	bl	0x80054AA
	beq	@@end

	ldrb	r0,[r5,0x4]
	sub	r0,0x1
	strb	r0,[r5,0x4]
	beq	@@next
	cmp	r0,0x3C
	bgt	@@end

	mov	r7,r10
	ldr	r1,[r7,0x4]
	ldrh	r1,[r1]
	lsl	r1,r1,0x16
	beq	@@end

@@next:
	mov	r0,0xC
	strb	r0,[r5]
	mov	r1,0x10
	bl	0x8005424

@@end:
	pop	r15
.endarea
