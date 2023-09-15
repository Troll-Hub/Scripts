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
