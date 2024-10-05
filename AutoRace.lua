local Section = R:AddSection({
    Name = "Race v2"
})

R:AddToggle({
    Name = "Auto Race(V1 - V2 - V3)",
    Default = false,
    Flag = "Auto Race",
    Save = true,
    Callback = function(Value)
        print("Auto Race toggled: " .. tostring(Value))
    end    
})

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
