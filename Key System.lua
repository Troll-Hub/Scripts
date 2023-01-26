local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "Key System"})

OrionLib:MakeNotification({
	Name = "Logged!",
	Content = "Log success " ..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "troll-roblox"
_G.KeyInput = "string"

function MakeScriptHub()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/Animal%20Simulator')))()

function CorrectKeyNotification()
        OrionLib:MakeNotification({
	Name = "Key",
	Content = "Correct Key",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function InCorrectKeyNotification()
        OrionLib:MakeNotification({
	Name = "Key",
	Content = "Incorrect Key",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key System",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
        MakeScriptHub()
        CorrectKeyNotification()
        OrionLib:Destroy()
        else
        InCorrectKeyNotification()
        end
  	end
})
OrionLib:Init()
