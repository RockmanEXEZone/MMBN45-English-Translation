@archive 6368E8
@size 255

script 254 mmbn45 {
	msgOpen
	textSpeed
		delay = 0
	"""
	The Game Pak's clock
	battery has run dry.
	Please set the time.
	"""
	keyWait
		any = false
	end
}