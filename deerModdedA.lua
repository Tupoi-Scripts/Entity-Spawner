local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "DeerGod_Movin",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/Utilities/CustomDesing.rbxm?raw=true",
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
		Range = 700,
		Values = {3, 2, 0.1, 1}
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

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned, giving a Achievement.")
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/Entity-Spawner/refs/heads/main/AchievementSystem.lua"))()

achievementGiver({
    Title = "Last Chance to Look Away",
    Desc = "Why are you running?",
    Reason = "Survive the rar Entity called Dear God.",
    Image = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/Utilities/DEER.png"
})
    game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(85, 30, 107)
game.Lighting.MainColorCorrection.Contrast = 0.8
game.Lighting.MainColorCorrection.Saturation = -0.7
game.Lighting.MainColorCorrection.Brightness = -0.1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2), {Contrast = 0}):Play()
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2), {Saturation = 0}):Play()
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2), {Brightness = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(3),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
	end)
