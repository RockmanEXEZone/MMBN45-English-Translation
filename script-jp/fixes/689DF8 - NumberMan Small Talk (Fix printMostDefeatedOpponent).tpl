@archive 689DF8
@size 93

script 70 mmbn45 {
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
	printMostDefeatedOpponent
	"が\n"
	printMostDefeatedOpponentsChip
	"""
	の
	チップをつかっても
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワタシたちには
	かてませんよ~
	"""
	keyWait
		any = false
	clearMsg
	"""
	さんすうの
	きょうかしょに
	そう かいてありますから
	"""
	keyWait
		any = false
	clearMsg
	waitHold
}
