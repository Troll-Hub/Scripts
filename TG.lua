-- Ejecutar habilidades personalizadas en /tg
            local args1 = {
                [1] = {
                    [1] = {
                        [1] = "Celestial Dragon God",
                        [2] = 0,
                        [3] = 0,
                        [4] = 0
                    },
                    [2] = "Other"
                }
            }

            ReplicatedStorage._BindableEvents.RequestSkill:InvokeServer(unpack(args1))
