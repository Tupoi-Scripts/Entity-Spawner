local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "deerGodMoving",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/deergodOld.rbxm?raw=true",
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
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {7, 17, 0.3, 3}
	},
	Movement = {
		Speed = 21,
		Delay = 0.3,
		Reversed = false
	},
	Rebounding = {
		Enabled = false,
		Type = "Ambush",
		Min = 2,
		Max = 5,
		Delay = 1.5
	},
	Damage = {
		Enabled = false,
		Range = 35,
		Amount = 275
	},
	Crucifixion = {
		Enabled = true,
		Range = 35,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding",
		Hints = {"... i have nothing to say about this Entity.."},
		Cause = "Deer God"
	}
})
entity:Run()
