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
        if game.PlaceId == 6104994594 then
local Player = game.Players.LocalPlayer
        --Load
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        OrionLib:MakeNotification({
	Name = "Title!",
	Content = "You are logging as "..Players.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 10
})
        
        --Main
        local Window = OrionLib:MakeWindow({Name = "Troll Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Hubcfg", IntroEnabled = true, IntroText = "Troll Hub | Pelfering Pirates"})
        
        --Jogador
        local JogadrTab = Window:MakeTab({
	Name = "Jogador",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
        local Section = JogadorTab:AddSection({
	Name = "Auto-Farm"
})
        JogadorTab:AddButton({
	Name = "Hitbox",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/hitbox.lua')))()
  	end    
})
        
        --Others
        local OthersTab = Window:MakeTab({
	Name = "Others",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
        local Section = OthersTab:AddSection({
	Name = "Others Scripts"
})
        OthersTab:AddButton({
	Name = "RTX",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/RTX.lua')))()
  	end    
})
        OthersTab:AddButton({
	Name = "IY",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})


end
OrionLib:Init()
        end

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
