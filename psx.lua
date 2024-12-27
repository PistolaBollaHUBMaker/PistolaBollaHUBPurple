local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Pet Simulator X)", HidePremium = false, SaveConfig = false, IntroEnabled = false})

_G.AutoRegali = true

function AutoRegali()
while _G.AutoRegali == true do
if game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Free Gifts"] then
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(1)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(2)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(3)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(4)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(5)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(6)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(7)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(8)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(9)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(10)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(11)
wait(0.01)
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(12)
wait(0.01)
else
warn("Impossibile aprire i regali")
end
end
end

local AutoFarm = Window:MakeTab({
 Name = "Auto Farm",
 Icon = "rbxassetid://13650090966",
 PremiumOnly = false
})
AutoFarm:AddToggle({
 Name = "Auto Regali",
 Callback = function(Value)
    _G.AutoRegali = Value
    AutoRegali()
    end
})
local Ritorna = Window:MakeTab({
 Name = "Torna All'HUB",
 Icon = "rbxassetid://12378312397",
 PremiumOnly = false
})
Ritorna:AddButton({
 Name = "Torna indietro",
 Callback = function()
     PizdaMata()
     end
})