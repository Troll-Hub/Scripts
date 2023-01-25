--Made by TROLL-ROBLOX
if game.PlaceId == 5712833750 then
        
        ---Load
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        
        ---Main
        local Window = OrionLib:MakeWindow({Name = "Troll Hub | Animal Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "Hubcfg", IntroEnabled = true, IntroText = "Troll Hub"})
        
        ---Valor
_G.Coins = true
_G.LavaMonster = true
_G.Griffin = true
        
        ---function
function Coins()
        while _G.Coins == true do
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        wait(1)
        end
end
function LavaMonster()
        while _G.LavaMonster == true do
        local args = {
    [1] = workspace.NPC.LavaGorilla.Humanoid,
    [2] = 1
}

game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
        wait(0.001)
        end
end
function Griffin()
        while _G.Griffin == true do
        local args = {
    [1] = workspace.NPC.Griffin.Humanoid,
    [2] = 1
}

game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
        wait(0.001)
        end
end

        --Jogador
        local JogadorTab = Window:MakeTab({
	Name = "Jogador",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
        local Section = JogadorTab:AddSection({
	Name = "Auto-Farm"
})
        JogadorTab:AddToggle({
	Name = "Auto Level/Coins",
	Default = false,
	Callback = function(Value)
		_G.Coins = Value
Coins()
	end    
})

        --Others
        local OthersTab = Window:MakeTab({
	Name = "Others",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
        local Section = OthersTab:AddSection({
	Name = "Others"
})
        OthersTab:AddButton({
	Name = "RTX",
	Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/RTX.lua'))()


  	end    
})
        OthersTab:AddButton({
	Name = "RTX 2",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Troll-Hub/Scripts/main/RTX_SCRIPT_v3.txt'))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
        OthersTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

        --Beta
        local BetaTab = Window:MakeTab({
	Name = "Beta",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
        local Section = BetaTab:AddSection({
	Name = "Beta functions"
})
        BetaTab:AddToggle({
	Name = "Auto Lava Monster",
	Default = false,
	Callback = function(Value)
		_G.LavaMonster = Value
LavaMonster()
	end    
})
        BetaTab:AddButton({
	Name = "Tp to spawn Gorilla",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(148.361176, 669.264893, 1441.97571, -0.023542881, 0, -0.999722898, 0, 1, 0, 0.999722898, 0, -0.023542881)
  	end    
})

        BetaTab:AddToggle({
	Name = "Auto Griffin",
	Default = false,
	Callback = function(Value)
	        _G.Griffin = Value
Griffin()
	end    
})
        
        
end
