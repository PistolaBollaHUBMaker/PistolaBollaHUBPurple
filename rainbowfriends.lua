local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Rainbow Friends)", HidePremium = false, SaveConfig = false, IntroEnabled = false})

_G.FakeBox = true

function FakeBox()
while _G.FakeBox == true do
game:GetService("ReplicatedStorage").communication.boxes.cl.BoxUpdated:FireServer("Equip")
wait(.01)
end
end

local Plaier = Window:MakeTab({
 Name = "Giocatore",
 Icon = "rbxassetid://12318039078",
 PremiumOnly = false
})
Plaier:AddToggle({
 Name = "Scatola Fake (Ti fa nascondere da Blue)",
 Default = false,
 Callback = function(Value)
    _G.FakeBox = Value
    FakeBox()
    end
})
local Visuall = Window:MakeTab({
 Name = "Visuale",
 Icon = "rbxassetid://13631826228",
 PremiumOnly = false
})
Visuall:AddButton({
 Name = "Visione al buio",
 Callback = function()
    local a = game.Lighting
a.Ambient = Color3.fromRGB(128, 128, 128)
a.Brightness = 1
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 255, 255)
a.EnvironmentDiffuseScale = 1
a.EnvironmentSpecularScale = 1
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
a.ShadowSoftness = 1
a.GeographicLatitude = 0
a.ExposureCompensation = 0

local bloom = game.Lighting:FindFirstChildOfClass("BloomEffect")
if bloom then
    bloom:Destroy()
end

local colorCorrection = game.Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
if colorCorrection then
    colorCorrection:Destroy()
end
end
})
local Tornahub = Window:MakeTab({
 Name = "Torna All'HUB",
 Icon = "rbxassetid://12378312397",
 PremiumOnly = false
})
Tornahub:AddButton({
 Name = "Torna indietro",
 Callback = function()
    PizdaMata()
    end
})