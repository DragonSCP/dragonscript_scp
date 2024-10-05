-- race_module.lua

-- Inicializa as lógicas dos toggles para Race
local function initializeRaceModule()
    -- Seção para Race v2
    local SectionRace = R:AddSection({
        Name = "Race v2"
    })

    R:AddToggle({
        Name = "Auto Race(V1 - V2 - V3)",
        Default = false,
        Flag = "Auto Race",
        Save = true,
        Callback = function(Value)
            print("Auto Race toggled: ", Value)
            -- Aqui você pode adicionar a lógica específica para Auto Race, se necessário
        end    
    })

    -- Seção para Pull Lever
    local SectionPullLever = R:AddSection({
        Name = "Pull Lever"
    })

    R:AddToggle({
        Name = "Auto Pull Lever",
        Default = false,
        Flag = "Auto Pull Lever",
        Save = true,
        Callback = function(Value)
            _G.AutoPullLever = Value
            StopTween("AutoPullLever")
        end    
    })

    -- Auto Turn On Race v3
    R:AddToggle({
        Name = "Auto Turn On Race v3",
        Default = false,
        Flag = "Auto Turn On Race v3",
        Save = true,
        Callback = function(Value)
            _G.V3 = Value
        end    
    })

    spawn(function()
        while wait() do
            pcall(function()
                if _G.V3 then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                end
            end)
        end
    end)

    -- Auto Turn On Race v4
    R:AddToggle({
        Name = "Auto Turn On Race v4",
        Default = false,
        Flag = "Auto Turn On Race v4",
        Save = true,
        Callback = function(Value)
            _G.V4 = Value
        end    
    })

    spawn(function()
        while wait() do
            pcall(function()
                if _G.V4 then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                end
            end)
        end
    end)
end

-- Expor a função de inicialização
return {
    initializeRaceModule = initializeRaceModule
}
