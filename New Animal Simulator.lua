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
        wait(0.00001)
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

BetaTab:AddButton({
  Name = "Enable Fly"
  Defaut = false
  Callback = function()
          -- Obtén el jugador local

local jugadorLocal = game.Players.LocalPlayer

local character = jugadorLocal.Character

-- Verifica que el jugador tenga un personaje y que no esté volando actualmente
if character and not character:FindFirstChild("HumanoidFlying") then
    -- Crea un objeto HumanoidFlying en el personaje del jugador
    local flying = Instance.new("HumanoidFlying")
    flying.MaxSlope = 89  -- Ajusta el ángulo máximo de inclinación
    flying.Parent = character.Humanoid
    jugadorLocal.PlayerGui:SetTopbarTransparency(0)  -- Muestra la barra superior de nuevo

    -- Activa el vuelo
    character.HumanoidRootPart.Anchored = false
    character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    character.HumanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.Position)

    -- Desactiva la gravedad
    character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)

    -- Configura el control de vuelo en el dispositivo móvil
    if jugadorLocal:GetMouse() then
        local touchControl = Instance.new("TouchControl", jugadorLocal.PlayerGui)
        touchControl.Name = "FlightControl"
        touchControl.Size = UDim2.new(0, 200, 0, 200)  -- Ajusta el tamaño según tus preferencias
        touchControl.Position = UDim2.new(0, 0, 1, -200)  -- Coloca el control en la esquina inferior izquierda
        touchControl.Style = Enum.TouchControlStyle.Thumbstick
        touchControl.Visible = true

        -- Conecta la entrada del usuario al control de vuelo
        touchControl.TouchPan:Connect(function(direction)
            flying:SetDesiredMoveDirection(Vector3.new(direction.x, 0, direction.y))
        end)
    end
end

  end
})
BetaTab:AddButton({
  Name = "Disable Fly"
  Defaut = false
  Callback = function()
    -- Obtén el jugador local

local jugadorLocal = game.Players.LocalPlayer

local character = jugadorLocal.Character

-- Función para desactivar el vuelo
local function desactivarVuelo()
    -- Verifica si el jugador tiene un objeto HumanoidFlying
    if character and character:FindFirstChild("HumanoidFlying") then
        -- Elimina el objeto HumanoidFlying del personaje
        character.HumanoidFlying:Destroy()
        
        -- Activa la gravedad nuevamente
        character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
        
        -- Elimina el control de vuelo en el dispositivo móvil (si existe)
        local flightControl = jugadorLocal.PlayerGui:FindFirstChild("FlightControl")
        if flightControl then
            flightControl:Destroy()
        end
    end
end

-- Conecta la función a un evento que indica cuando el jugador quiere desactivar el vuelo
-- Por ejemplo, puedes hacer que esto ocurra cuando el jugador toca un botón "Detener vuelo" en la interfaz de usuario
local botonDetenerVuelo = script.Parent:FindFirstChild("BotonDetenerVuelo") -- Ajusta el nombre según tu botón
if botonDetenerVuelo then
    botonDetenerVuelo.MouseButton1Click:Connect(desactivarVuelo)
end

})
end

        
        
end
