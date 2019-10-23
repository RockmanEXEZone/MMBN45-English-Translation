.org 0x8035FFA	// x-offset for arrow for "Yes" on "Enter the date and time."
	.db	0x38 // from 0x30
.org 0x8035FFC	// x-offset for arrow for "Yes" on "Enter the date and time."
	.db	0x89 // from 0x80
.org 0x8035FFE	// x-offset for arrow on "Male"
	.db	0x2C // from 0x30
.org 0x8036000	// x-offset for arrow on "Female"
	.db	0x78 // from 0x80
.org 0x8036002	// x-offset for arrow on "Preschool"
	.db	0x18 // from 0x20
.org 0x8036004	// x-offset for arrow on "Elementary"
	.db	0x18 // from 0x20
.org 0x8036006	// x-offset for arrow on "Mid school"
	.db	0x18 // from 0x20
.org 0x8036008	// x-offset for arrow on "High school"
	.db	0x18 // from 0x20
.org 0x803600A	// x-offset for arrow on "College"
	.db	0x18 // from 0x20
.org 0x8036016	// x-offset for arrow for "Yes" on "Is this OK?" screen
	.db	0x38 // from 0x30
.org 0x8036018	// x-offset for arrow for "No" on "Is this OK?" screen
	.db	0x89 // from 0x80


.org 0x803A952	// base x-offset for age on "Input your age." screen
	mov	r1,74h	// from 0x72
.org 0x803AA1A	// base x-offset for age on "Is this OK? screen"
	mov	r1,80h	// from 0x84
.org 0x803AA22	// x-offset increment for age on "Is this OK?" screen
	add	r1,8h
.org 0x803AADE	// x-width for age digit
	mov	r1,8h


.org 0x803AB8E	// x-offset for "Select your gender."
	.db	0x36
.org 0x803AB9A	// x-offset for "Male"
	.db	0x3C // from 0x40
.org 0x803ABA6 // x-offset for "Female"
	.db	0x88 // from 0x90
.org 0x803ABB0	// OAM count for "Input your age."
	.db	0x09
.org 0x803ABB6	// x-offset for "Input your age."
	.db	0x44
.org 0x803ABBC	// OAM count for "years" on "Input your age." screen
	.db	0x03
.org 0x803ABC2	// x-offset for "years" on "Input your age." screen
	.db	0x8C // from 0x90
.org 0x803ABCC	// OAM count for "Choose your occupation."
	.db	0x0B
.org 0x803ABD2	// x-offset for "Choose your occupation."
	.db	0x29
.org 0x803ABD8	// OAM count for "Preschool"
	.db	0x05
.org 0x803ABDE	// x-offset for "Preschool"
	.db	0x28 // from 0x30
.org 0x803ABE4	// OAM count for "Dropout"
	.db	0x05
.org 0x803ABEA	// x-offset for "Dropout"
	.db	0x80 // from 0x80
.org 0x803ABF0	// OAM count for "Elementary"
	.db	0x05
.org 0x803ABF6	// x-offset for "Elementary"
	.db	0x28 // from 0x30
.org 0x803ABFC	// OAM count for "Part-timer"
	.db	0x05
.org 0x803AC02	// x-offset for "Part-timer"
	.db	0x80 // from 0x80
.org 0x803AC08	// OAM count for "Mid school"
	.db	0x05
.org 0x803AC0E	// x-offset for "Mid school"
	.db	0x28 // from 0x30
.org 0x803AC14	// OAM count for "Employee"
	.db	0x05
.org 0x803AC1A	// x-offset for "Employee"
	.db	0x80 // from 0x80
.org 0x803AC20	// OAM count for "High school"
	.db	0x05
.org 0x803AC26	// x-offset for "High school"
	.db	0x28 // from 0x30
.org 0x803AC2C	// OAM count for "Self-employed"
	.db	0x05
.org 0x803AC32	// x-offset for "Self-employed"
	.db	0x80 // from 0x80
.org 0x803AC38	// OAM count for "College"
	.db	0x05
.org 0x803AC3E	// x-offset for "College"
	.db	0x28 // from 0x30
.org 0x803AC44	// OAM count for "Homemaker"
	.db	0x05
.org 0x803AC4A	// x-offset for "Homemaker"
	.db	0x80 // from 0x80


.org 0x803AC54	// OAM count for "Enter the date and time."
	.db	0x0B
.org 0x803AC5A	// x-offset for "Enter the date and time."
	.db	0x24
.org 0x803AD04	// OAM count for "Is this OK?" on "Enter the date and time."
	.db	0x05 // from 0x09
.org 0x803AD0A	// x-offset for "Is this OK?" on "Enter the date and time."
	.db	0x52 // from 0x3B
.org 0x803AD16	// x-offset for "Yes" on "Enter the date and time."
	.db	0x48 // from 0x40
.org 0x803AD1C	// OAM count for "No" on "Enter the date and time."
	.db	0x01 // from 0x03
.org 0x803AD22	// x-offset for "No" on "Enter the date and time."
	.db	0x99 // from 0x90
.org 0x803AD2C	// OAM count for "Is this OK?"
	.db	0x05
.org 0x803AD32	// x-offset for "Is this OK?"
	.db	0x52
.org 0x803AD38	// OAM count for "Name:"
	.db	0x06 // from 0x07
.org 0x803AD44	// OAM count for "Gender:"
	.db	0x06 // from 0x07
.org 0x803AD50	// OAM count for "Age:"
	.db	0x06 // from 0x07
.org 0x803AD5C	// OAM count for "Occupation:"
	.db	0x06 // from 0x07
.org 0x803AD6E	// x-offset for "Yes" on "Is this OK?" screen
	.db	0x48 // from 0x40
.org 0x803AD7A	// x-offset for "No" on "Is this OK?" screen
	.db	0x99 // from 0x90
.org 0x803AD86	// x-offset for name on "Is this OK?" screen
	.db	0x88 // from 0x90
.org 0x803AD92	// x-offset for occupation on "Is this OK?" screen
	.db	0x88 // from 0x90
.org 0x803ADA2	// x-offset for "Male" on "Is this OK?" screen
	.db	0x88 // from 0x90
.org 0x803ADB2	// x-offset for "Female" on "Is this OK?" screen
	.db	0x88 // from 0x8F
.org 0x803ADC2 // x-offset for "years" (1 digit) on "Is this OK?" screen
	.db	0x97 // from 0x9C
.org 0x803ADD2	// x-offset for "years" (2 digits) on "Is this OK?" screen
	.db	0x9F // from 0xA8
.org 0x803AD9C	// OAM count for "Male" on "Is this OK?" screen
	.db	0x02
.org 0x803ADAC	// OAM count for "Female" on "Is this OK?" screen
	.db	0x03
.org 0x803ADBC	// OAM count for "years" (1 digit) on "Is this OK?" screen
	.db	0x03
.org 0x803ADCC	// OAM count for "years" on "Is this OK?" screen
	.db	0x03


.org 0x803AFB7	// max text width for "years" on "Input your age." screen
	.db	0x03
.org 0x803AFC3
	.db	0x32
	.db	0x0C,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.db	0x00
.org 0x803B000	// max text width for "years" on "Is this OK?" screen
	.db	0x03