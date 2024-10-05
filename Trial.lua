local Section = R:AddSection({
    Name = "Other Trials"
})

R:AddToggle({
    Name = "Auto Complete Trials",
    Default = false,
    Flag = "Auto Complete Trials",
    Save = true,
    Callback = function(Value)
        _G.AutoQuestRace = Value
        StopTween(_G.AutoQuestRace)
    end    
})

R:AddToggle({
    Name = "Auto Kill Players After Trials",
    Default = false,
    Flag = "KillTrials",
    Save = true,
    Callback = function(Value)
        KillPlayer = Value
        StopTween(KillPlayer)
        _G.TurnKen = Value
    end    
})
