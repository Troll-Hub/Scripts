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
