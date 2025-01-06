print("nah oyu really want to spawn jeff the killer")
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("nah oyu really want to spawn jeff the killer (press R to spwan)",true)

local UserInputService = game:GetService("UserInputService")

local function myFunction()
local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local entity = spawner.Create({
	Entity = {
		Name = "JEFF THE KILLER!!!!!!!!!!!!!!!!!!!!111!11!!!!!!!!!!1!1!1!1!1!",
		Asset = "https://github.com/Tupoi-Scripts/Entity-Spawner/blob/main/Jeff_the_Killar.rbxm?raw=true",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 666
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
		Values = {3, 2, 0.1, 1}
	},
	Movement = {
		Speed = 50,
		Delay = 0,
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
		Range = 25,
		Amount = 75
	},
	Crucifixion = {
		Enabled = true,
		Range = 30,
		Resist = true,
		Break = false
	},
	Death = {
		Type = "Curious",
		Hints = {"LMFAO", "YOU DIED TO JEAF THE KAKA!!", "XD😂😂😂🤣🤣🤣🤣", "try again NOOB!"},
		Cause = "JEFF THE KILARRR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!111!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	}
})
entity:Run()
  
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.R then
        myFunction()
    end
end)
