colorschemes = {
	midnight = {
		borderwidth = 4,
		bordercolor = {120, 120, 120, 255},
		activecolor = {250, 10, 10, 255},
		bodycolor = {45, 45, 45, 255},
		textcolor = {210, 210, 210, 255},
		textoffset = 12,
		textsize = 1
	},

	classic = {
		borderwidth = 4,
		bordercolor = {220, 220, 220, 230},
		activecolor = {250, 10, 10, 230},
		bodycolor = {255, 255, 255, 255},
		textcolor = {10, 10, 10, 255},
		textoffset = 12,
		textsize = 1
	}
}

butt.style = colorschemes.midnight

-- Global settings --
latency = 0.16 -- Default is 0.16

instruments = {
	{
		wave = "MTHatClosed",
		key = "t",
		label = "Hat (closed)",
		active = true
	},
	{
		wave = "MTCrashCymbl",
		key = "y",
		label = "Crash",
		active = true
	},
	{
		wave = "MTKickDrum",
		key = "u",
		label = "Kick",
		active = true
	},
	{
		wave = "MTSnareAcou",
		key = "i",
		label = "Snare",
		active = true
	},
	{
		wave = "MTCongaHigh",
		key = "g",
		label = "Conga high",
		active = true
	},
	{
		wave = "MTCongaLow",
		key = "h",
		label = "Conga low",
		active = true
	},
	{
		wave = "MTCongaMutHi",
		key = "j",
		label = "Conga (high mute)",
		active = true
	},
	{
		wave = "MTCowbell",
		key = "k",
		label = "Cowbell",
		active = true
	}
}	

