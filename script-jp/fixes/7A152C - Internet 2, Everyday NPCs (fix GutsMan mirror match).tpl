@archive 7A152C
@size 255

script 39 mmbn45 {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	"ガッツガッツ・・・!"
	keyWait
		any = false
	clearMsg
	"ガ､ガッツマンでガス!?"
	keyWait
		any = false
	clearMsg
	"""
	なにが なんだか
	わからんでガスが､
	"""
	keyWait
		any = false
	clearMsg
	"ガッツマンと タタカうでガス!"
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"いいよ  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いや"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = 37,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = GutsMan
	"そんなコト､イうなでガス~"
	keyWait
		any = false
	end
}
