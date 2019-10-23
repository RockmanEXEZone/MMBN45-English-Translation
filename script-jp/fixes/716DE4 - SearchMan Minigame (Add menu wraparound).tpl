@archive 716DE4
@size 141

script 1 mmbn45 {
	msgOpen
	mugshotHide
	flagSet
		flag = 5113
	positionOptionHorizontal
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"ミッションかいし\n"
	positionOptionHorizontal
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"オペレｰト ほうほう\n"
	positionOptionHorizontal
		width = 11
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"ミッションせつめい"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 8 mmbn45 {
	msgOpen
	mugshotShow
		mugshot = SearchMan
	"""
	ミッションかいしエリアに
	とうちゃくしました
	ミッションをかいししますか?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"かいしする\n"
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"やめる"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 102 mmbn45 {
	checkFlag
		flag = 5116
		jumpIfTrue = 117
		jumpIfFalse = continue
	msgOpen
	mugshotHide
	flagSet
		flag = 5113
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"ミッションかいし\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"オペレｰト ほうほう\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"ミッションせつめい"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 117 mmbn45 {
	checkNavi
		navi = 4
		jumpIfTrue = 134
		jumpIfFalse = continue
	msgOpen
	mugshotHide
	flagSet
		flag = 5113
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"ミッションかいし\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"オペレｰト ほうほう\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"ミッションせつめい"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 134 mmbn45 {
	msgOpen
	mugshotHide
	flagSet
		flag = 5113
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"くんれんかいし\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"オペレｰト ほうほう\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"くんれんせつめい"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
