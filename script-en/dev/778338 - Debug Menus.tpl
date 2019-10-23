@archive 778338
@size 255

script 46 mmbn45 {
	storeGlobal32
		global = 0
		value = 0
	playerLock
	msgOpenQuick
	textSpeed
		delay = 0
	option
		brackets = false
		left = 2
		right = 1
		up = 6
		down = 3
	space
		count = 1
	" Heal  "
	spacePx
		count = 2
	option
		brackets = false
		left = 0
		right = 2
		up = 7
		down = 4
	space
		count = 1
	" Item  "
	option
		brackets = false
		left = 1
		right = 0
		up = 8
		down = 5
	space
		count = 1
	" Batl\n"
	option
		brackets = false
		left = 5
		right = 4
		up = 0
		down = 6
	space
		count = 1
	" Warp  "
	option
		brackets = false
		left = 3
		right = 5
		up = 1
		down = 7
	space
		count = 1
	" Tour  "
	option
		brackets = false
		left = 4
		right = 3
		up = 2
		down = 8
	space
		count = 1
	" Game\n"
	option
		brackets = false
		left = 8
		right = 7
		up = 3
		down = 0
	space
		count = 1
	" View  "
	spacePx
		count = 1
	option
		brackets = false
		left = 6
		right = 8
		up = 4
		down = 1
	space
		count = 1
	" Help  "
	spacePx
		count = 1
	option
		brackets = false
		left = 7
		right = 6
		up = 5
		down = 2
	space
		count = 1
	" --->"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 50,
			jump = 63,
			jump = 53,
			jump = 54,
			jump = 91,
			jump = 124,
			jump = 48,
			jump = 49,
			jump = 47,
			jump = continue
		]
	playerUnlock
	msgCloseQuick
	end
}
script 47 mmbn45 {
	storeGlobal32
		global = 0
		value = 0
	playerLock
	clearMsg
	option
		brackets = false
		left = 2
		right = 1
		up = 3
		down = 3
	space
		count = 1
	" <---  "
	option
		brackets = false
		left = 0
		right = 2
		up = 4
		down = 4
	space
		count = 1
	" Shop  "
	option
		brackets = false
		left = 1
		right = 0
		up = 3
		down = 3
	space
		count = 1
	" BBS\n"
	option
		brackets = false
		left = 4
		right = 4
		up = 0
		down = 0
	space
		count = 1
	" Font  "
	option
		brackets = false
		left = 3
		right = 3
		up = 1
		down = 1
	space
		count = 1
	" Menu  "
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 46,
			jump = 165,
			jump = 165,
			jump = 166,
			jump = 168,
			jump = continue,
		]
	playerUnlock
	msgCloseQuick
	end
}
script 48 mmbn45 {
	storeGlobal32
		global = 0
		value = 0
	playerLock
	clearMsg
	"""
	To be implemented
	"""
	keyWait
		any = false
	jump
		target = 46
}
script 49 mmbn45 {
	playerLock
	clearMsg
	"""
	Heal: Restores your HP
	  or Chip Gate uses.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Item: Gives you Zennys,
	  BugFrags,BattleChips
	  or other items.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Batl: Starts a random
	  battle in the current
	  map.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Warp: Warps you to the
	  selected map.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Tour: Registers you for
	  tournaments and/or
	  starts them.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Game: Tools for Navi-
	  specific minigames.
	"""
	keyWait
		any = false
	clearMsg
	"""
	View: Views special
	  screens like a shop or
	  a BBS.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Help: You're reading it
	  right now!
	"""
	keyWait
		any = false
	clearMsg
	"""
	--->: Show next page,
	<---: Show prev. page
	  of options.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Shop: Opens a shop.
	"""
	keyWait
		any = false
	clearMsg
	"""
	BBS: Opens a BBS.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Font: Test text printing,
	  text width,and mugshot
	  animation.
	"""
	keyWait
		any = false
	jump
		target = 46
}
script 50 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Refill Health\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Refill Chip Gate\n"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 51,
			jump = 52,
			jump = 46
		]
}
script 51 mmbn45 {
	playerLock
	clearMsg
	startHeal
		amount = 9999
	playerUnlock
	msgCloseQuick
	end
}
script 52 mmbn45 {
	playerLock
	clearMsg
	soundPlay
		track = 154
	callClearBattleChipGateHistory
	playerUnlock
	msgCloseQuick
	end
}
script 53 mmbn45 {
	playerLock
	clearMsg
	playerUnlock
	startRandomBattle
	msgCloseQuick
	end
}
script 54 mmbn45 {
	playerLock
	storeGlobal8
		global = 0
		value = 1
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" Net/HP   "
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" Under/Chaos\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" Comps 1  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" Comps 2\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" Comps 3  "
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" Comps 4"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 55,
			jump = 57,
			jump = 58,
			jump = 59,
			jump = 61,
			jump = 62,
			jump = 46
		]
}
script 55 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 5
		right = 1
		up = 12
		down = 6
	space
		count = 2
	spacePx
		count = 1
	"1"
	option
		brackets = false
		left = 0
		right = 2
		up = 12
		down = 7
	space
		count = 3
	spacePx
		count = 1
	"2"
	option
		brackets = false
		left = 1
		right = 3
		up = 12
		down = 8
	space
		count = 3
	spacePx
		count = 1
	"3"
	option
		brackets = false
		left = 2
		right = 4
		up = 12
		down = 9
	space
		count = 3
	spacePx
		count = 1
	"4"
	option
		brackets = false
		left = 3
		right = 5
		up = 12
		down = 10
	space
		count = 3
	spacePx
		count = 1
	"5"
	option
		brackets = false
		left = 4
		right = 0
		up = 12
		down = 11
	space
		count = 3
	spacePx
		count = 1
	"6\n"
	option
		brackets = false
		left = 11
		right = 7
		up = 0
		down = 12
	space
		count = 2
	spacePx
		count = 1
	"7"
	option
		brackets = false
		left = 6
		right = 8
		up = 1
		down = 12
	space
		count = 3
	spacePx
		count = 1
	"8"
	option
		brackets = false
		left = 7
		right = 9
		up = 2
		down = 12
	space
		count = 3
	spacePx
		count = 1
	"9"
	option
		brackets = false
		left = 8
		right = 10
		up = 3
		down = 12
	space
		count = 2
	"10"
	option
		brackets = false
		left = 9
		right = 11
		up = 4
		down = 12
	space
		count = 2
	"11"
	option
		brackets = false
		left = 10
		right = 6
		up = 5
		down = 12
	space
		count = 2
	"12\n"
	option
		brackets = false
		left = 12
		right = 12
		up = 6
		down = 0
	space
		count = 1
	printPlayerName
	"'s HP"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = 56,
			jump = 56,
			jump = 56,
			jump = 56,
			jump = 56,
			jump = 54
		]
	storeGlobal8
		global = 1
		value = 0
	playerUnlock
	msgCloseQuick
	end
}
script 56 mmbn45 {
	storeGlobal8
		global = 1
		value = 1
	playerUnlock
	msgCloseQuick
	end
}
script 57 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" Under1  "
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" Under2\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" Under3  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" Under4\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" Chaos1  "
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" Chaos2"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = 54
		]
	storeGlobal8
		global = 1
		value = 2
	playerUnlock
	msgCloseQuick
	end
}
script 58 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" EleStove  "
	spacePx
		count = 1
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" Factory1\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" Factory2  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" Factory3\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" ToyBox  "
	spacePx
		count = 13
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" BrkRadio"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = 54
		]
	storeGlobal8
		global = 1
		value = 3
	playerUnlock
	msgCloseQuick
	end
}
script 59 mmbn45 {
	playerLock
	clearMsg
	textSpeed
		delay = 0
	option
		brackets = false
		left = 2
		right = 1
		up = 6
		down = 3
	space
		count = 1
	"Golf1 "
	spacePx
		count = 13
	option
		brackets = false
		left = 0
		right = 2
		up = 7
		down = 4
	space
		count = 1
	"Golf2 "
	spacePx
		count = 13
	option
		brackets = false
		left = 1
		right = 0
		up = 8
		down = 5
	space
		count = 1
	"Golf3\n"
	option
		brackets = false
		left = 5
		right = 4
		up = 0
		down = 6
	space
		count = 1
	"Car1 "
	spacePx
		count = 15
	option
		brackets = false
		left = 3
		right = 5
		up = 1
		down = 7
	space
		count = 1
	"Car2 "
	spacePx
		count = 15
	option
		brackets = false
		left = 4
		right = 3
		up = 2
		down = 8
	space
		count = 1
	"Mower\n"
	option
		brackets = false
		left = 8
		right = 7
		up = 3
		down = 0
	space
		count = 1
	"Toilet1 "
	option
		brackets = false
		left = 6
		right = 8
		up = 4
		down = 1
	space
		count = 1
	"Toilet2 "
	option
		brackets = false
		left = 7
		right = 6
		up = 5
		down = 2
	space
		count = 1
	"Toilet3"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = 60,
			jump = 54
		]
	storeGlobal8
		global = 1
		value = 4
	playerUnlock
	msgCloseQuick
	end
}
script 60 mmbn45 {
	storeGlobal8
		global = 1
		value = 5
	playerUnlock
	msgCloseQuick
	end
}
script 61 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" Fridge  "
	spacePx
		count = 18
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" Factory4\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" OldBldng1  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" OldBldng2\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" Speaker  "
	spacePx
		count = 7
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" OldTV1"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = 54
		]
	storeGlobal8
		global = 1
		value = 6
	playerUnlock
	msgCloseQuick
	end
}
script 62 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" OldTV2  "
	spacePx
		count = 14
	option
		brackets = false
		left = 0
		right = 0
		up = 4
		down = 3
	space
		count = 1
	" OldTV3\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" PipeOrgn  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 4
	space
		count = 1
	" OldBldng3\n"
	option
		brackets = false
		left = 4
		right = 4
		up = 2
		down = 0
	space
		count = 1
	" Waste"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = 54
		]
	storeGlobal8
		global = 1
		value = 7
	playerUnlock
	msgCloseQuick
	end
}
script 63 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" 100000z  "
	spacePx
		count = 1
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" 1000 BFrag\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" All Chips  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" Key Items\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" SubChips  "
	spacePx
		count = 1
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" Navi Items"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 64,
			jump = 65,
			jump = 66,
			jump = 68,
			jump = 67,
			jump = 85,
			jump = 46
		]
	playerUnlock
	msgCloseQuick
	end
}
script 64 mmbn45 {
	playerLock
	clearMsg
	checkGiveZenny
		amount = 100000
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	"""
	 got:
	"100000 Zennys"!!!
	(Have: 
	"""
	printZenny
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	z)
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 65 mmbn45 {
	playerLock
	clearMsg
	checkGiveBugFrags
		amount = 1000
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	"""
	 got
	1000 BugFrags!!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 66 mmbn45 {
	playerLock
	clearMsg
	itemGiveAllChips
	itemGiveChip
		chip = 311
		code = 0
		amount = 3
	itemGiveChip
		chip = 312
		code = 0
		amount = 3
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	"""
	 got:
	all chips!!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 67 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 39
		amount = 7
	itemSet
		item = 40
		amount = 7
	itemSet
		item = 41
		amount = 7
	itemSet
		item = 42
		amount = 7
	itemSet
		item = 43
		amount = 7
	itemSet
		item = 44
		amount = 7
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	"""
	 got:
	all SubChips!!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 68 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	" Ticket/License\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	" Key/PassData\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 1
		down = 0
	space
		count = 1
	" HP Memory  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	" BusterUp"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 69,
			jump = 76,
			jump = 83,
			jump = 84,
			jump = 63
		]
	playerUnlock
	msgCloseQuick
	end
}
script 69 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 0
	"  "
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 19
	"\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 20
	"  "
	spacePx
		count = 6
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 1
	"\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 2
	"  "
	spacePx
		count = 2
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 3
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 70,
			jump = 71,
			jump = 72,
			jump = 73,
			jump = 74,
			jump = 75,
			jump = 68
		]
	playerUnlock
	msgCloseQuick
	end
}
script 70 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 0
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 0
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 71 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 19
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 19
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 72 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 20
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 20
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 73 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 1
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 1
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 74 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 2
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 2
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 75 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 3
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 3
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 76 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 5
	"  "
	spacePx
		count = 16
	option
		brackets = false
		left = 0
		right = 0
		up = 5
		down = 3
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 10
	"\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 11
	"  "
	spacePx
		count = 3
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 5
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 12
	"\n"
	option
		brackets = false
		left = 5
		right = 5
		up = 2
		down = 0
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 13
	"  "
	option
		brackets = false
		left = 4
		right = 4
		up = 3
		down = 1
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 14
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 77,
			jump = 78,
			jump = 79,
			jump = 80,
			jump = 81,
			jump = 82,
			jump = 68
		]
	playerUnlock
	msgCloseQuick
	end
}
script 77 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 5
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 5
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 78 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 10
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 10
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 79 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 11
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 11
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 80 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 12
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 12
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 81 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 13
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 13
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 82 mmbn45 {
	playerLock
	clearMsg
	itemSet
		item = 14
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 14
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 83 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 33
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 33
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 84 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 34
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 34
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 85 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 6
	"  "
	option
		brackets = false
		left = 0
		right = 0
		up = 4
		down = 3
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 7
	"\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 16
	"  "
	spacePx
		count = 7
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 4
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 17
	"\n"
	option
		brackets = false
		left = 4
		right = 4
		up = 2
		down = 0
	space
		count = 1
	" "
	printItem
		buffer = 0
		item = 18
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 86,
			jump = 87,
			jump = 88,
			jump = 89,
			jump = 90,
			jump = 63
		]
	playerUnlock
	msgCloseQuick
	end
}
script 86 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 6
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 6
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 87 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 7
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 7
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 88 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 16
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 16
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 89 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 17
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 17
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 90 mmbn45 {
	playerLock
	clearMsg
	itemGive
		item = 18
		amount = 1
	playerAnimateScene
		animation = 24
	playerFinish
	playerAnimateScene
		animation = 25
	printCurrentNavi
	" got:\n\""
	printItem
		buffer = 0
		item = 18
	"\"!!!"
	keyWait
		any = false
	playerFinish
	playerResetScene
	playerUnlock
	msgCloseQuick
	end
}
script 91 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	" Register for tournament\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	" Start tournament\n"
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	" Check registrations"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 96,
			jump = 115,
			jump = 92,
			jump = 46
		]
	playerUnlock
	msgCloseQuick
	end
}
script 92 mmbn45 {
	playerLock
	clearMsg
	callFindTournamentRegistration
		unused = 0
		jumpIfNone = 94
	printBufferedNavi
		buffer = 1
	"\n"
	printTournament
		buffer = 2
		entry = 0
	keyWait
	jump
		target = 93
}
script 93 mmbn45 {
	playerLock
	clearMsg
	callFindTournamentRegistration
		unused = 0
		jumpIfNone = 95
	printBufferedNavi
		buffer = 1
	"\n"
	printTournament
		buffer = 2
		entry = 0
	keyWait
	jump
		target = 93
}
script 94 mmbn45 {
	playerLock
	clearMsg
	"""
	No active tournament
	registrations.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 95 mmbn45 {
	playerUnlock
	msgCloseQuick
	end
}
script 96 mmbn45 {
	playerLock
	clearMsg
	"Register: "
	option
		brackets = false
		left = 0
		right = 0
		up = 3
		down = 1
	space
		count = 1
	"\["
	printCurrentNavi
	"\]\nfor:      "
	option
		brackets = false
		left = 2
		right = 2
		up = 0
		down = 3
	space
		count = 1
	"Silv "
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 4
	space
		count = 1
	"Gold\n          "
	option
		brackets = false
		left = 4
		right = 4
		up = 1
		down = 0
	space
		count = 1
	"Ofcl "
	option
		brackets = false
		left = 3
		right = 3
		up = 2
		down = 0
	space
		count = 1
	"Undr"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 106,
			jump = 97,
			jump = 98,
			jump = 99,
			jump = 100,
			jump = 91
		]
	playerUnlock
	msgCloseQuick
	end
}
script 97 mmbn45 {
	checkTournament
		bitmask = 1
		jumpIfNone = continue
		jumpIfTrue = 101
		jumpIfFalse = 101
	setTournament
		bitmask = 1
	playerLock
	clearMsg
	"Registered\n"
	printCurrentNavi
	" for\n"
	printTournament
		buffer = 0
		entry = 0
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 98 mmbn45 {
	checkTournament
		bitmask = 1
		jumpIfNone = continue
		jumpIfTrue = 101
		jumpIfFalse = 101
	setTournament
		bitmask = 2
	playerLock
	clearMsg
	"Registered\n"
	printCurrentNavi
	" for\n"
	printTournament
		buffer = 0
		entry = 1
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 99 mmbn45 {
	checkTournament
		bitmask = 1
		jumpIfNone = continue
		jumpIfTrue = 101
		jumpIfFalse = 101
	setTournament
		bitmask = 4
	playerLock
	clearMsg
	"Registered\n"
	printCurrentNavi
	" for\n"
	printTournament
		buffer = 0
		entry = 2
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 100 mmbn45 {
	checkTournament
		bitmask = 1
		jumpIfNone = continue
		jumpIfTrue = 101
		jumpIfFalse = 101
	setTournament
		bitmask = 8
	playerLock
	clearMsg
	"Registered\n"
	printCurrentNavi
	" for\n"
	printTournament
		buffer = 0
		entry = 3
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 101 mmbn45 {
	checkTournament
		bitmask = 1
		jumpIfNone = 105
		jumpIfTrue = continue
		jumpIfFalse = 102
	playerLock
	clearMsg
	"Error: "
	printCurrentNavi
	"\nalready registered for\n"
	printTournament
		buffer = 0
		entry = 0
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 102 mmbn45 {
	checkTournament
		bitmask = 2
		jumpIfNone = 105
		jumpIfTrue = continue
		jumpIfFalse = 103
	playerLock
	clearMsg
	"Error: "
	printCurrentNavi
	"\nalready registered for\n"
	printTournament
		buffer = 0
		entry = 1
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 103 mmbn45 {
	checkTournament
		bitmask = 4
		jumpIfNone = 105
		jumpIfTrue = continue
		jumpIfFalse = 104
	playerLock
	clearMsg
	"Error: "
	printCurrentNavi
	"\nalready registered for\n"
	printTournament
		buffer = 0
		entry = 2
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 104 mmbn45 {
	checkTournament
		bitmask = 8
		jumpIfNone = 105
		jumpIfTrue = continue
		jumpIfFalse = 105
	playerLock
	clearMsg
	"Error: "
	printCurrentNavi
	"\nalready registered for\n"
	printTournament
		buffer = 0
		entry = 3
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 105 mmbn45 {
	playerLock
	clearMsg
	"Error: "
	printCurrentNavi
	"\nalready registered for\na tournament."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 106 mmbn45 {
	playerLock
	clearMsg
	"Register: "
	option
		brackets = false
		left = 0
		right = 0
		up = 3
		down = 1
	space
		count = 1
	"\[All Navis\]\nfor:      "
	option
		brackets = false
		left = 2
		right = 2
		up = 0
		down = 3
	space
		count = 1
	"Silv "
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 4
	space
		count = 1
	"Gold\n          "
	option
		brackets = false
		left = 4
		right = 4
		up = 1
		down = 0
	space
		count = 1
	"Ofcl "
	option
		brackets = false
		left = 3
		right = 3
		up = 2
		down = 0
	space
		count = 1
	"Undr"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 96,
			jump = 107,
			jump = 109,
			jump = 111,
			jump = 113,
			jump = 91
		]
	playerUnlock
	msgCloseQuick
	end
}
script 107 mmbn45 {
	callFindTournamentRegistration
		unused = 0
		jumpIfNone = 108
	playerLock
	clearMsg
	"""
	Warning: some Navis
	are already registered
	for a tournament.
	"""
	keyWait
	clearMsg
	"""
	Registrations for higher
	tournaments will be
	overwritten.
	"""
	keyWait
	jump
		target = 108
}
script 108 mmbn45 {
	callTournamentRegisterAllSilver
	playerLock
	clearMsg
	"Registered\n"
	"all Navis for\n"
	printTournament
		buffer = 0
		entry = 0
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 109 mmbn45 {
	callFindTournamentRegistration
		unused = 0
		jumpIfNone = 110
	playerLock
	clearMsg
	"""
	Warning: some Navis
	are already registered
	for a tournament.
	"""
	keyWait
	clearMsg
	"""
	Registrations for higher
	tournaments will be
	overwritten.
	"""
	keyWait
	jump
		target = 110
}
script 110 mmbn45 {
	callTournamentRegisterAllGold
	playerLock
	clearMsg
	"Registered\n"
	"all Navis for\n"
	printTournament
		buffer = 0
		entry = 1
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 111 mmbn45 {
	callFindTournamentRegistration
		unused = 0
		jumpIfNone = 112
	playerLock
	clearMsg
	"""
	Warning: some Navis
	are already registered
	for a tournament.
	"""
	keyWait
	clearMsg
	"""
	Registrations for higher
	tournaments will be
	overwritten.
	"""
	keyWait
	jump
		target = 112
}
script 112 mmbn45 {
	callTournamentRegisterAllOfficial
	playerLock
	clearMsg
	"Registered\n"
	"all Navis for\n"
	printTournament
		buffer = 0
		entry = 2
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 113 mmbn45 {
	callFindTournamentRegistration
		unused = 0
		jumpIfNone = 114
	playerLock
	clearMsg
	"""
	Warning: some Navis
	are already registered
	for a tournament.
	"""
	keyWait
	clearMsg
	"""
	Registrations for higher
	tournaments will be
	overwritten.
	"""
	keyWait
	jump
		target = 114
}
script 114 mmbn45 {
	callTournamentRegisterAllUnder
	playerLock
	clearMsg
	"Registered\n"
	"all Navis for\n"
	printTournament
		buffer = 0
		entry = 3
	"."
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 115 mmbn45 {
	playerLock
	clearMsg
	" "
	option
		brackets = false
		left = 1
		right = 1
		up = 4
		down = 2
	space
		count = 1
	"Silver  "
	spacePx
		count = 9
	option
		brackets = false
		left = 0
		right = 0
		up = 4
		down = 3
	space
		count = 1
	"Gold\n "
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 4
	space
		count = 1
	"Official  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 4
	space
		count = 1
	"Under\n"
	"Everyday  "
	spacePx
		count = 3
	option
		brackets = false
		left = 7
		right = 5
		up = 3
		down = 1
	space
		count = 1
	"1 "
	option
		brackets = false
		left = 4
		right = 6
		up = 3
		down = 1
	space
		count = 1
	"2 "
	option
		brackets = false
		left = 5
		right = 7
		up = 3
		down = 1
	space
		count = 1
	"3 "
	option
		brackets = false
		left = 6
		right = 4
		up = 3
		down = 1
	space
		count = 1
	"4"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 116,
			jump = 117,
			jump = 118,
			jump = 119,
			jump = 120,
			jump = 121,
			jump = 122,
			jump = 123,
			jump = 91
		]
	playerUnlock
	msgCloseQuick
	end
}
script 116 mmbn45 {
	playerLock
	clearMsg
	"""
	Start special tournament?
	(You will be jacked out.)
	"""
	"\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 0
	playerUnlock
	msgCloseQuick
	end
}
script 117 mmbn45 {
	playerLock
	clearMsg
	"""
	Start special tournament?
	(You will be jacked out.)
	"""
	"\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 1
	playerUnlock
	msgCloseQuick
	end
}
script 118 mmbn45 {
	playerLock
	clearMsg
	"""
	Start special tournament?
	(You will be jacked out.)
	"""
	"\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 2
	playerUnlock
	msgCloseQuick
	end
}
script 119 mmbn45 {
	playerLock
	clearMsg
	"""
	Start special tournament?
	(You will be jacked out.)
	"""
	"\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 3
	playerUnlock
	msgCloseQuick
	end
}
script 120 mmbn45 {
	playerLock
	clearMsg
	"""
	Start tournament?
	"""
	"\n\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 4
	playerUnlock
	msgCloseQuick
	end
}
script 121 mmbn45 {
	playerLock
	clearMsg
	"""
	Start tournament?
	"""
	"\n\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 5
	playerUnlock
	msgCloseQuick
	end
}
script 122 mmbn45 {
	playerLock
	clearMsg
	"""
	Start tournament?
	"""
	"\n\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 6
	playerUnlock
	msgCloseQuick
	end
}
script 123 mmbn45 {
	playerLock
	clearMsg
	"""
	Start tournament?
	"""
	"\n\n"
	positionOptionHorizontal
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yes  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = true
		noDelay = true
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 115,
			jump = 115
		]
	callTournament
		tournament = 7
	playerUnlock
	msgCloseQuick
	end
}
script 124 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 2
		right = 1
		up = 6
		down = 3
	space
		count = 1
	"Number  "
	option
		brackets = false
		left = 0
		right = 2
		up = 7
		down = 4
	space
		count = 1
	"Metal  "
	spacePx
		count = 9
	option
		brackets = false
		left = 1
		right = 0
		up = 7
		down = 5
	space
		count = 1
	"Ice\n"
	option
		brackets = false
		left = 5
		right = 4
		up = 0
		down = 6
	space
		count = 1
	"Search  "
	option
		brackets = false
		left = 3
		right = 5
		up = 1
		down = 7
	space
		count = 1
	"Napalm  "
	option
		brackets = false
		left = 4
		right = 3
		up = 2
		down = 7
	space
		count = 1
	"Wind\n"
	option
		brackets = false
		left = 7
		right = 7
		up = 3
		down = 0
	space
		count = 1
	"Data  "
	spacePx
		count = 15
	option
		brackets = false
		left = 6
		right = 6
		up = 4
		down = 1
	space
		count = 1
	"Mission"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 125,
			jump = 127,
			jump = 129,
			jump = 131,
			jump = 133,
			jump = 135,
			jump = 137,
			jump = 156,
			jump = 46
		]
	playerUnlock
	msgCloseQuick
	end
}
script 125 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	positionOptionHorizontal
		width = 12
	space
		count = 1
	" Normal  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Hard\n"
	"""
	Warning: screen may not
	fade in after game ends.
	"""
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 126,
			jump = 124
		]
	playerUnlock
	msgCloseQuick
	startNumberManMinigame
		hard = false
	end
}
script 126 mmbn45 {
	playerUnlock
	msgCloseQuick
	startNumberManMinigame
		hard = true
	end
}
script 127 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	positionOptionHorizontal
		width = 12
	space
		count = 1
	" Normal  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Hard\n"
	"""
	Warning: screen may not
	fade in after game ends.
	"""
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 128,
			jump = 124
		]
	playerUnlock
	msgCloseQuick
	startMetalManMinigame
		hard = false
	end
}
script 128 mmbn45 {
	playerUnlock
	msgCloseQuick
	startMetalManMinigame
		hard = true
	end
}
script 129 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	positionOptionHorizontal
		width = 12
	space
		count = 1
	" Normal  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Hard\n"
	"""
	Warning: screen may not
	fade in after game ends.
	"""
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 130,
			jump = 124
		]
	playerUnlock
	msgCloseQuick
	startIceManMinigame
		hard = false
	end
}
script 130 mmbn45 {
	playerUnlock
	msgCloseQuick
	startIceManMinigame
		hard = true
	end
}
script 131 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	positionOptionHorizontal
		width = 12
	space
		count = 1
	" Normal  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Hard\n"
	"""
	Warning: screen may not
	fade in after game ends.
	"""
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 132,
			jump = 124
		]
	startSearchManMinigame
		hard = false
	storeGlobal8
		global = 0
		value = 1
	storeGlobal8
		global = 1
		value = 8
	playerUnlock
	msgCloseQuick
	end
}
script 132 mmbn45 {
 
	playerUnlock
	msgCloseQuick
	startSearchManMinigame
		hard = true
	storeGlobal8
		global = 0
		value = 1
	storeGlobal8
		global = 1
		value = 9
	end
}
script 133 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	positionOptionHorizontal
		width = 12
	space
		count = 1
	" Normal  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Hard\n"
	"""
	Warning: screen may not
	fade in after game ends.
	"""
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 134,
			jump = 124
		]
	playerUnlock
	msgCloseQuick
	startNapalmManMinigame
		hard = false
	storeGlobal8
		global = 0
		value = 1
	storeGlobal8
		global = 1
		value = 0
	end
}
script 134 mmbn45 {
	playerUnlock
	msgCloseQuick
	startNapalmManMinigame
		hard = true
	storeGlobal8
		global = 0
		value = 1
	storeGlobal8
		global = 1
		value = 2
	end
}
script 135 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	positionOptionHorizontal
		width = 12
	space
		count = 1
	" Normal  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Hard\n"
	"""
	Warning: screen may not
	fade in after game ends.
	"""
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = 136,
			jump = 124
		]
	playerUnlock
	msgCloseQuick
	startWindManMinigame
		hard = false
	storeGlobal8
		global = 0
		value = 1
	storeGlobal8
		global = 1
		value = 10
	end
}
script 136 mmbn45 {
	playerUnlock
	msgCloseQuick
	startWindManMinigame
		hard = true
	storeGlobal8
		global = 0
		value = 1
	storeGlobal8
		global = 1
		value = 11
	end
}
script 137 mmbn45 {
	playerLock
	clearMsg
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" Find HeartData\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Find StarData\n"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 138,
			jump = 139,
			jump = 124
		]
}
script 138 mmbn45 {
	playerLock
	clearMsg
	checkHeartDataLocation
		jumpIfInternet1 = 140
		jumpIfInternet2 = 141
		jumpIfInternet3 = 142
		jumpIfInternet4 = 143
		jumpIfInternet5 = 144
		jumpIfInternet6 = 145
		jumpIfInternet7 = 146
		jumpIfInternet8 = 147
		jumpIfInternet9 = 148
		jumpIfInternet10 = 149
		jumpIfInternet11 = 150
		jumpIfInternet12 = 151
		jumpIfUndernet1 = 152
		jumpIfUndernet2 = 153
		jumpIfUndernet3 = 154
		jumpIfUndernet4 = 155
	"Current location:\n"
	positionOptionHorizontal
		width = 12
	"------------"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 139 mmbn45 {
	playerLock
	clearMsg
	checkStarDataLocation
		jumpIfInternet1 = 140
		jumpIfInternet2 = 141
		jumpIfInternet3 = 142
		jumpIfInternet4 = 143
		jumpIfInternet5 = 144
		jumpIfInternet6 = 145
		jumpIfInternet7 = 146
		jumpIfInternet8 = 147
		jumpIfInternet9 = 148
		jumpIfInternet10 = 149
		jumpIfInternet11 = 150
		jumpIfInternet12 = 151
		jumpIfUndernet1 = 152
		jumpIfUndernet2 = 153
		jumpIfUndernet3 = 154
		jumpIfUndernet4 = 155
	"Current location:\n"
	positionOptionHorizontal
		width = 12
	"------------"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 140 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet1"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 141 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet2"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 142 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet3"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 143 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet4"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 144 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet5"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 145 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet6"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 146 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet7"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 147 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet8"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 148 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Internet9"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 149 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 10
	"Internet10"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 150 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 10
	"Internet11"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 151 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 10
	"Internet12"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 152 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Undernet1"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 153 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Undernet2"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 154 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Undernet3"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 155 mmbn45 {
	playerLock
	"Current location:\n"
	positionOptionHorizontal
		width = 9
	"Undernet4"
	keyWait
	playerUnlock
	msgCloseQuick
	end
}
script 156 mmbn45 {
	playerLock
	clearMsg
	"Start new mission:\n"
	option
		brackets = false
		left = 1
		right = 1
		up = 2
		down = 2
	space
		count = 1
	" Proto  "
	spacePx
		count = 10
	option
		brackets = false
		left = 0
		right = 0
		up = 3
		down = 3
	space
		count = 1
	" Shadow\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 0
	space
		count = 1
	" Search  "
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 1
	space
		count = 1
	" Napalm"
	select
		default = 0
		lastCancelSFX = false
		noDelay = true
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 157,
			jump = 159,
			jump = 161,
			jump = 163,
			jump = 124
		]
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 157 mmbn45 {
	checkNavi
		navi = 7
		jumpIfTrue = continue
		jumpIfFalse = 158
	playerLock
	clearMsg
	callProtoManMissionBegin
	"""
	Mission started.
	Head to ????
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 158 mmbn45 {
	playerLock
	clearMsg
	"""
	You're not ProtoMan!
	Change Navi and try
	again.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 159 mmbn45 {
	checkNavi
		navi = 16
		jumpIfTrue = continue
		jumpIfFalse = 160
	playerLock
	clearMsg
	callShadowManMissionBegin
	"""
	Mission started.
	Head to ????
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 160 mmbn45 {
	playerLock
	clearMsg
	"""
	You're not ShadowMan!
	Change Navi and try
	again.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 161 mmbn45 {
	checkNavi
		navi = 4
		jumpIfTrue = continue
		jumpIfFalse = 162
	playerLock
	clearMsg
	callSearchManMissionBegin
	callSearchManMissionReceiveMail
	"""
	Mission started.
	Check your e-mail.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 162 mmbn45 {
	playerLock
	clearMsg
	"""
	You're not SearchMan!
	Change Navi and try
	again.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 163 mmbn45 {
	checkNavi
		navi = 18
		jumpIfTrue = continue
		jumpIfFalse = 164
	playerLock
	clearMsg
	callNapalmManMissionBegin
	callNapalmManMissionReceiveMail
	"""
	Mission started.
	Check your e-mail.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 164 mmbn45 {
	playerLock
	clearMsg
	"""
	You're not NapalmMan!
	Change Navi and try
	again.
	"""
	keyWait
		any = false
	playerUnlock
	msgCloseQuick
	end
}
script 165 mmbn45 {
	storeGlobal32
		global = 0
		value = 0
	playerLock
	clearMsg
	"""
	To be implemented
	"""
	keyWait
		any = false
	jump
		target = 47
}
script 166 mmbn45 {
	playerLock
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 2
	clearMsg
	"""
	0123456789ABCDEFGHI
	JKLMNOPQRSTUVWXYZabc
	defghijklmnopqrstuvwxyz
	"""
	keyWait
		any = false
	clearMsg
	"""
	ŒÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ
	ÔÕÖØÙÚÛÜÝÞŸßœàáâãäåæ
	çèéêëìíîïðñòóôõöøùúûüýþÿ
	"""
	keyWait
		any = false
	clearMsg
	"""
	 *[V2][1px][V3][8px][V4][V5][XX][EX][SP][DS]αβΩ[z][MB]¡¿[×]÷-×
	=:%?+█ー!&,。.・;'"~/()「」[bracket1][bracket2]
	■_[bat][Ω]←↓[MB2][circle][cross]#⋯\[\]<>$
	"""
	keyWait
		any = false
	clearMsg
	"""
	@<>\[\]€£¥¢←↑→↓
	"""
	keyWait
		any = false
	clearMsg
	"Schedule icons test\n"
	soundDisableTextSFX
	textSpeed
		delay = 0
	soundPlay
		track = 101
	"[TVShow1][TVShow2]"
	wait
		frames = 3
	soundPlay
		track = 101
	"[Promise1][Promise2]"
	wait
		frames = 3
	soundPlay
		track = 101
	"[Meal1][Meal2]"
	wait
		frames = 3
	soundPlay
		track = 101
	"[School1][School2]"
	wait
		frames = 3
	soundPlay
		track = 101
	"[Other1][Other2]"
	wait
		frames = 2
	textSpeed
		delay = 2
	soundEnableTextSFX
	"\n(But,they're unused⋯)"
	keyWait
		any = false
	mugshotHide
	textSpeed
		delay = 0
	jump
		target = 47
}
script 167 mmbn45 {
	playerLock
	mugshotHide
	positionOptionHorizontal
		width = 12
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	" Yeah! "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	" No"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 167,
			jump = 167,
			jump = continue
		]
	playerUnlock
	msgCloseQuick
	end
}
script 168 mmbn45 {
	playerLock
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	" How?"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = 168,
			jump = continue
		]
	playerUnlock
	msgCloseQuick
	end
}