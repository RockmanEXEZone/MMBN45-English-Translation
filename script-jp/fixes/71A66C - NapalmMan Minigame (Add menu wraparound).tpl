@archive 71A66C
@size 36

script 1 mmbn45 {
	msgOpen
	mugshotHide
	flagSet
		flag = 6191
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"いらい かいし\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"そうさ せつめい\n"
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"いらい せつめい"
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
		mugshot = NapalmMan
	"""
	おい
	いらいがあったエリアだぜ
	どうする?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"ひとしごとする\n"
	positionOptionVertical
		width = 8
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
script 32 mmbn45 {
	msgOpen
	mugshotHide
	flagSet
		flag = 6191
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"はかいかいし\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"オペレｰト ほうほう\n"
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"はかいせつめい"
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
