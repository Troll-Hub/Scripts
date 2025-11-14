-- Hecho por TROLL-ROBLOX
if game.PlaceId == 5712833750 then
    -- Cargar OrionLib
    local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

    -- Crear ventana
    local Window = OrionLib:MakeWindow({
        Name = "Troll Hub | Animal Simulator",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Hubcfg",
        IntroEnabled = true,
        IntroText = "Troll Hub",
        IntroIcon = "rbxassetid://13118324992",
        Icon = "rbxassetid://13118324992"
    })

    -- Variables globales
    _G.Coins = true
    _G.LavaMonster = true
    _G.Griffin = true
    _G.Dummies = true
    _G.CoinTP = true

    -- Funciones
    local function Coins()
        while _G.Coins do
            game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
            wait(0.001)
        end
    end

local function CoinTP()
        while _G.CoinTP do
          local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")

local function teleportObjectsToPlayer()
    for _, coinTemplate in pairs(workspace:GetChildren()) do
        if coinTemplate.Name:match("CoinTemplate") then
            for _, object in pairs(coinTemplate:GetChildren()) do
                if object:IsA("BasePart") then
                    object.CFrame = humanoidRootPart.CFrame
                    wait(1) -- Ajusta el tiempo entre teletransportaciones según tus preferencias
                end
            end
        end
    end
end

teleportObjectsToPlayer()

         end
    end

    local function LavaMonster()
        while _G.LavaMonster do
            local npc = workspace:FindFirstChild("NPC") and workspace.NPC:FindFirstChild("LavaGorilla")
            if npc and npc:FindFirstChild("Humanoid") then
                local event = game:GetService("ReplicatedStorage"):FindFirstChild("jdskhfsIIIllliiIIIdchgdIiIIIlIlIli")
                if event then
                    event:FireServer(npc.Humanoid, 1)
                end
            end
            wait(0.001)
        end
    end

    local function Griffin()
        while _G.Griffin do
            local npc = workspace:FindFirstChild("NPC") and workspace.NPC:FindFirstChild("Griffin")
            if npc and npc:FindFirstChild("Humanoid") then
                local event = game:GetService("ReplicatedStorage"):FindFirstChild("jdskhfsIIIllliiIIIdchgdIiIIIlIlIli")
                if event then
                    event:FireServer(npc.Humanoid, 1)
                end
            end
            wait(0.001)
        end
    end

    local function Dummies()
        while _G.Dummies do
            local dummy = workspace.MAP and workspace.MAP:FindFirstChild("5k_dummies") and workspace.MAP["5k_dummies"]:FindFirstChild("Dummy2")
            if dummy and dummy:FindFirstChild("Humanoid") then
                local event = game:GetService("ReplicatedStorage"):FindFirstChild("jdskhfsIIIllliiIIIdchgdIiIIIlIlIli")
                if event then
                    event:FireServer(dummy.Humanoid, 5)
                end
            end
            wait(0.001)
        end
    end

    -- Crear pestaña de Jugador
    local JogadorTab = Window:MakeTab({
        Name = "Jogador",
        Icon = "rbxassetid://13118324992",
        PremiumOnly = false
    })

    JogadorTab:AddSection({ Name = "Auto-Farm" })

    JogadorTab:AddToggle({
        Name = "Auto Level/Coins",
        Default = false,
        Callback = function(Value)
            _G.Coins = Value
            Coins()
        end
    })

    JogadorTab:AddToggle({
        Name = "Auto 5K Dummies",
        Default = false,
        Callback = function(Value)
            _G.Dummies = Value
            Dummies()
        end
    })
  
  JogadorTab:AddToggle({
        Name = "Auto Coin Tp(Must Crash)",
        Default = false,
        Callback = function(Value)
            _G.CoinTP = Value
            CoinTP()
        end
    })

    -- Crear pestaña de Otros
    local OthersTab = Window:MakeTab({
        Name = "Otros",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    OthersTab:AddSection({ Name = "Otros" })

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

    OthersTab:AddButton({
        Name = "Infinite Yield",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end
    })

    OthersTab:AddButton({
        Name = "Destroy Hub",
        Callback = function()
            OrionLib:Destroy()
        end
    })

    -- Crear pestaña de Beta
    local BetaTab = Window:MakeTab({
        Name = "Beta",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    BetaTab:AddSection({ Name = "Funciones Beta" })

    BetaTab:AddToggle({
        Name = "Auto Lava Monster",
        Default = false,
        Callback = function(Value)
            _G.LavaMonster = Value
            LavaMonster()
        end
    })

    BetaTab:AddButton({
        Name = "Tp to Lava Monster",
        Callback = function()
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local NPC = workspace:FindFirstChild("NPC") and workspace.NPC:FindFirstChild("LavaGorilla")
            if NPC and NPC:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = NPC.HumanoidRootPart.CFrame
            end
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

    BetaTab:AddButton({
        Name = "Tp to Dummies",
        Callback = function()
            local rootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                rootPart.CFrame = CFrame.new(-50, 591, 828)
            end
        end
    })

    BetaTab:AddButton({
        Name = "Tp to Griffin",
        Callback = function()
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local NPC = workspace:FindFirstChild("NPC") and workspace.NPC:FindFirstChild("Griffin")
            if NPC and NPC:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = NPC.HumanoidRootPart.CFrame
            end
        end
    })

end
