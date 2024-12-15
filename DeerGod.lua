local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "DeerGod_Movin",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/MatcherMoving.rbxm?raw=true",
		HeightOffset = 1
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 999
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = true
	},
	CameraShake = {
		Enabled = true,
		Range = 5500,
		Values = {7, 13, 0.1, 1}
	},
	Movement = {
		Speed = 22,
		Delay = 1.5,
		Reversed = false
	},
	Rebounding = {
		Enabled = false,
		Type = "Ambush",
		Min = 2,
		Max = 2,
		Delay = 0
	},
	Damage = {
		Enabled = true,
		Range = 40,
		Amount = 100
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Curious",
		Hints = {"You died from Deer God", "He doesn't seem to be from this hotel, but he somehow got here."},
		Cause = "Deer God"
	}
})
entity:Run()
