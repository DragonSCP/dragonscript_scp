local Section = R:AddSection({
    Name = "Race v4"
})

R:AddToggle({
    Name = "Auto Buy Gear",
    Default = false,
    Flag = "Auto Buy Gear",
    Save = true,
    Callback = function(Value)
        _G.Auto_Farm_Bone4 = Value
        StopTween(_G.Auto_Farm_Bone4)
    end    
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_Farm_Bone4 then
                local args = {
                    [1] = true
                }

                local args2 = {
                    [1] = "UpgradeRace",
                    [2] = "Buy"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args2))
            end
        end)  
    end
end)
