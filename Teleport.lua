local Section = R:AddSection({
    Name = "Teleport"
})

R:AddButton({
    Name = "Teleport to Gear",
    Callback = function()
        _G.TweenMGear = true
        StopTween(_G.TweenMGear)	
    end    
})

R:AddButton({
    Name = "Teleport to Top On Great Tree",
    Callback = function()
        TweenTempleLegit()
    end    
})

R:AddButton({
    Name = "Teleport to Temple of Time",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    end    
})

-- Adicione os outros botões de teletransporte aqui seguindo a mesma lógica.
