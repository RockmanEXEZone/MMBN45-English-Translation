@archive 662C5C
@size 94

script 92 mmbn45 {
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
	"あんまり\n"
	printFavGigaChip
	"""
	を
	ねらいすぎると、
	"""
	keyWait
		any = false
	clearMsg
	"""
	大きなスキができるから
	気をつけてね・・・
	"""
	keyWait
		any = false
	clearMsg
	waitHold
}