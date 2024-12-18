local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "rebooundMoving",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/reboundMovin.rbxm?raw=true",
		HeightOffset = 1
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
		Range = 120,
		Values = {3, 13, 0.1, 1}
	},
	Movement = {
		Speed = 135,
		Delay = 4,
		Reversed = true
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush",
		Min = 2,
		Max = 5,
		Delay = 1.5
	},
	Damage = {
		Enabled = false,
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
		Cause = "Rebound"
	}
})
entity:Run()

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned, giving a Achievement.")
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/Entity-Spawner/refs/heads/main/AchievementSystem.lua"))()

achievementGiver({
    Title = "Out Of Many Rebounds",
    Desc = "Back for more!",
    Reason = "Encounter Rebound.",
    Image = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/reboundIcon.png"
})
	end)
