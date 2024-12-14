local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "greenRipper",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/deathGreen.rbxm?raw=true",
		HeightOffset = 0.8
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 5
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
		Values = {1.5, 20, 0.1, 1}
	},
	Movement = {
		Speed = 170,
		Delay = 5.775,
		Reversed = true
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush",
		Min = 5,
		Max = 8,
		Delay = 2
	},
	Damage = {
		Enabled = true,
		Range = 70,
		Amount = 75
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Curious",
		Hints = {"I do not know who you died of... Don't ask me why I'm here", "I think it's called Harder Ripper", "It is green and produces a slow, loud sound. Hide in the closet!", "He can come back..."},
		Cause = "Harder Ripper"
	}
})
entity:Run()
