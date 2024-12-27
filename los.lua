
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10000

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Legends Of Speed)", HidePremium = false, SaveConfig = false, IntroEnabled = false})

_G.OrbRossi = true
_G.OrbArancioni = true
_G.OrbGialli = true
_G.Gemme = true
_G.GemmeSpazio = true
_G.OrbRossiSpazio = true
_G.OrbArancioniSpazio = true
_G.OrbGialliSpazio = true
_G.OrbBluSpazio = true
_G.AutoRebirth = true
_G.AutoRace = true
_G.OrbRossiMagma = true
_G.GemmeMagma = true

function OrbRossiMagma()
while _G.OrbRossiMagma == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
    wait()
end
end

function GemmeMagma()
while _G.GemmeMagma == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Magma City")
    wait()
    end
    end

function AutoRace()
while _G.AutoRace == true do
    game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer("joinRace")
    wait()
    end
    end

function AutoRebirth()
while _G.AutoRebirth == true do
    game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
    wait()
    end
end

function OrbGialliSpazio()
while _G.OrbGialliSpazio == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","Space")
    wait()
    end
    end

function OrbArancioniSpazio()
while _G.OrbArancioniSpazio == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Orange Orb","Space")
    wait()
    end
    end

function OrbRossiSpazio()
while _G.OrbRossiSpazio == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Space")
    wait()
end
end

function OrbBluSpazio()
while _G.OrbBluSpazio == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Blue Orb","Space")
    wait()
end
end

function GemmeSpazio()
while _G.GemmeSpazio == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Space")
    wait()
    end
    end

function Gemme()
while _G.Gemme == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","City")
    wait()
    end
    end

function OrbGialli()
while _G.OrbGialli == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Yellow Orb","City")
    wait()
    end
    end

function OrbArancioni()
while _G.OrbArancioni == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Orange Orb","City")
    wait()
    end
    end

function OrbRossi()
while _G.OrbRossi == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","City")
    wait()
end
end

local AutoFarm = Window:MakeTab({
 Name = "Auto Farm",
 Icon = "rbxassetid://13650090966",
 PremiumOnly = false
})
AutoFarm:AddParagraph("Zona Autofarm:", "Città")
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Rossi",
 Default = false,
 Callback = function(Value)
    _G.OrbRossi = Value
    OrbRossi()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Arancioni",
 Default = false,
 Callback = function(Value)
    _G.OrbArancioni = Value
    OrbArancioni()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Gialli",
 Default = false,
 Callback = function(Value)
    _G.OrbGialli = Value
    OrbGialli()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Gemme",
 Default = false,
 Callback = function(Value)
    _G.Gemme = Value
    Gemme()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Accetta Gara",
 Default = false,
 Callback = function(Value)
    _G.AutoRace = Value
    AutoRace()
    end
})
AutoFarm:AddParagraph("Zona Autofarm:", "Città magma")
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Rossi",
 Default = false,
 Callback = function(Value)
    _G.OrbRossiMagma = Value
    OrbRossiMagma()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Gemme",
 Default = false,
 Callback = function(Value)
    _G.GemmeMagma = Value
    GemmeMagma()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Accetta Gara",
 Default = false,
 Callback = function(Value)
    _G.AutoRace = Value
    AutoRace()
    end
})
AutoFarm:AddParagraph("Zona Autofarm:", "Spazio Esterno")
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Rossi",
 Default = false,
 Callback = function(Value)
    _G.OrbRossiSpazio = Value
    OrbRossiSpazio()
    end
})

AutoFarm:AddToggle({
 Name = "Auto Farm Orb Arancioni",
 Default = false,
 Callback = function(Value)
    _G.OrbArancioniSpazio = Value
    OrbArancioniSpazio()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Gialli",
 Default = false,
 Callback = function(Value)
    _G.OrbGialliSpazio = Value
    OrbGialliSpazio()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Orb Blu",
 Default = false,
 Callback = function(Value)
    _G.OrbBluSpazio = Value
    OrbBluSpazio()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Farm Gemme",
 Default = false,
 Callback = function(Value)
    _G.GemmeSpazio = Value
    GemmeSpazio()
    end
})
AutoFarm:AddToggle({
 Name = "Auto Accetta Gara",
 Default = false,
 Callback = function(Value)
    _G.AutoRace = Value
    AutoRace()
    end
})
local Rebirth = Window:MakeTab({
 Name = "Rebirth",
 Icon = "rbxassetid://13631849486",
 PremiumOnly = false
})
Rebirth:AddToggle({
 Name = "Auto Rebirth",
 Default =false,
 Callback = function(Value)
    _G.AutoRebirth = Value
    AutoRebirth()
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