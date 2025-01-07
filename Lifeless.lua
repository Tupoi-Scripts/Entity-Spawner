local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "Lifeless",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/LifelessFROMTOOLBOX!.rbxm?raw=true",
		HeightOffset = 0.2
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 3
		},
		Shatter = true,
		Repair = true
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 75,
		Values = {1.5, 20, 0.1, 1}
	},
	Movement = {
		Speed = 50,
		Delay = 2,
		Reversed = false
	},
	Rebounding = {
		Enabled = false,
		Type = "Ambush",
		Min = 1,
		Max = 1,
		Delay = 2
	},
	Damage = {
		Enabled = true,
		Range = 35,
		Amount = 100
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = true,
		Break = false
	},
	Death = {
		Type = "Guiding",
		Hints = {"..."},
		Cause = "Lifeless"
	}
})
entity:Run()
