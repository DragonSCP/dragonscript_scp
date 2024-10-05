local Section = R:AddSection({
    Name = "Camera Controls"
})

MoveCamTooMoonToggle = R:AddToggle({
    Name = "Move Cam to Moon",
    Default = false,
    Flag = "Move Cam to Moon",
    Save = true,
    Callback = function(Value)
        _G.AutoDooHee = Value
    end    
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoDooHee then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
            end
        end)
    end
end)
