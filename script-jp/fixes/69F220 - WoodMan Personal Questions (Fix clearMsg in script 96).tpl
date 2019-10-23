@archive 69F220
@size 97

script 95 mmbn45 {
	positionBox
		left = 10
		top = 12
		type = 1
	msgOpenQuick
	positionText
		left = 92
		top = 110
		arrowDistance = 3
	positionArrow
		left = 225
		top = 141
	"""
	フムフム､そこなら
	ワタシも しっているぞ
	"""
	keyWait
		any = false
	clearMsg
	waitHold
}
