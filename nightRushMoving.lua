local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "RushMoving",
		Asset = "https://api.hugebonus.xyz/assets/TrollFace.rbxm",
		HeightOffset = 1
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 1
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = true
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {1.5, 20, 0.1, 1}
	},
	Movement = {
		Speed = 125,
		Delay = 2,
		Reversed = true
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
		Range = 40,
		Amount = 175
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = true,
		Break = false
	},
	Death = {
		Type = "Guiding",
		Hints = {"Sorry", ":Troll:", "lol", "try again"},
		Cause = "Nightmare Rush"
	}
})
entity:Run()
