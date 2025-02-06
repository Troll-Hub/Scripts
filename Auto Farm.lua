-- Bucle para el comando /frm, sin interrupciones y con delays
    local function startAutoFarm()
        -- Aceptar misión
        local argsQuest = {0, 6503, 1, true}
        ReplicatedStorage.Grigora.Host.Remotes.GetQuest:FireServer(unpack(argsQuest))

        -- Espera de 0.5 segundos antes de la teletransportación
        Delay(0.5, function()
            local zenoSama = Workspace:FindFirstChild("Zeno Sama")
            if zenoSama and zenoSama:FindFirstChild("Humanoid") then
                local humanoid = zenoSama.Humanoid
                local vidaAnterior = humanoid.Health

                -- Código extra antes de la verificación de vida
                local argsExtra = {1, 5884}
                ReplicatedStorage.Grigora.Host.Remotes.Combat:FireServer(unpack(argsExtra))

                -- Verificación de la vida de Zeno Sama
                humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                    local nuevaVida = humanoid.Health
                    if math.abs(nuevaVida - vidaAnterior) >= 1 then
                        -- Si la vida cambia por lo menos en 1 punto, activar el daño masivo
                        local argsFarm = {humanoid, 70000000}
                        ReplicatedStorage._BindableEvents.Moves.TakeDamage:FireServer(unpack(argsFarm))
                        -- Reiniciar el ciclo después de la muerte de Zeno Sama
                        vidaAnterior = nuevaVida  -- Resetear la vida para detectar cambios
                    end
                end)
            end
        end)
    end

    -- Llamar a la función startAutoFarm para ejecutar el comando /frm
    startAutoFarm()
