-- Ejecutar habilidades personalizadas en /sk
            local args1 = {
                [1] = {
                    [1] = {
                        [1] = "[EVENT]Frostbite Flare",
                        [2] = 0,
                        [3] = 0,
                        [4] = 0
                    },
                    [2] = "SkillsPass"
                }
            }

            ReplicatedStorage._BindableEvents.RequestSkill:InvokeServer(unpack(args1))
