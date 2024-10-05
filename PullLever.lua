local Section = R:AddSection({
    Name = "Pull Lever"
})

AutoPullLever = R:AddToggle({
    Name = "Auto Pull Lever",
    Default = false,
    Flag = "Auto Pull Lever",
    Save = true,
    Callback = function(Value)
        _G.AutoPullLever = Value
        StopTween("AutoPullLever")
    end    
})
