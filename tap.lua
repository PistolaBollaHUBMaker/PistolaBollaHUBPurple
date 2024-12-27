local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Tapping Simulator)", HidePremium = false, SaveConfig = false, IntroEnabled = false})

_G.AutoClickTap = true

function AutoClickTap()
while _G.AutoClickTap == true do
local args = {
    [1] = "Main"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tap"):FireServer(unpack(args))
wait(.000000000000000000000000001)
end
end

local AutoFarm = Window:MakeTab({
 Name = "Auto Farm",
 Icon = "rbxassetid://12605314452",
 PremiumOnly = false
})
AutoFarm:AddToggle({
 Name = "Auto Clicker",
 Default = false,
 Callback = function(Value)
    _G.AutoClickTap = Value
    AutoClickTap()
    end
})
local Rebirth = Window:MakeTab({
 Name = "Rebirth",
 Icon = "rbxassetid://13631849486",
 PremiumOnly = false
})
Rebirth:AddButton({
 Name = "1 Rebirth",
 Callback = function()
    local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
Rebirth:AddButton({
 Name = "5 Rebirth",
 Callback = function()
    local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
Rebirth:AddButton({
 Name = "10 Rebirth",
 Callback = function()
    local args = {
    [1] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
Rebirth:AddButton({
 Name = "20 Rebirth",
 Callback = function()
    local args = {
    [1] = 20
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
local TornaB = Window:MakeTab({
 Name = "Torna All'HUB",
 Icon = "rbxassetid://12378312397",
 PremiumOnly = false
})
TornaB:AddButton({
 Name = "Torna indietro",
 Callback = function()
    PizdaMata()
    end
})