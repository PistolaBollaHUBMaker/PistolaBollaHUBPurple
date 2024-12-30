local place = game:GetService("MarketplaceService"):GetProductInfo(game.placeId)
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/refs/heads/main/EditedOrion.lua"))()

local frasi = {"Evolve your exploiting.", "by fcnm4tt10", "Hub anti skid!1!!1", "Best hub frfr no cap", "Definitive version!", "V4!", "Brookhaven", "Wolfpaq, a professional ball sucker"}

_G.RainbowSkin = true

function RainbowSkin()
    while _G.RainbowSkin == true do
        local args = {
            [1] = "skintone",
            [2] = "Really red"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "skintone",
            [2] = "Deep orange"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "skintone",
            [2] = "New Yeller"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "skintone",
            [2] = "Lime green"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "skintone",
            [2] = "Cyan"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "skintone",
            [2] = "Really blue"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "skintone",
            [2] = "Royal purple"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
        wait(0.5)
    end
end

local frasiRandom = frasi[math.random(1, #frasi)]

function PistolaBollaHUBBrook()
    -- Crea finestra
    local PBHBrookhaven = Rayfield:CreateWindow({
        Name = "PistolaBollaHUB - Brookhaven",
        Icon = 0,
        LoadingTitle = "PistolaBollaHUB - Brookhaven",
        LoadingSubtitle = frasiRandom,
        Theme = "Default",

        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,

        ConfigurationSaving = {
        Enabled = false,
        FolderName = "Save",
        FileName = "Theme"
        }
    })

    local Veicoli = PBHBrookhaven:CreateTab("Vehicles", "car-front")

    _G.IDMusica = "string"

    function IDMusica()
        local args = {
        [1] = "PickingScooterMusicText",
        [2] = _G.IDMusica
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
    end

    local IDCustom = Veicoli:CreateInput({
        Name = "Custom Music ID(only with pass, hoverboard)",
        CurrentValue = "142376088",
        PlaceholderText = "ID here",
        RemoveTextAfterFocusLost = false,
        Callback = function(Value)
            _G.IDMusica = Value
        end,
    })

    local StartaMusica = Veicoli:CreateButton({
        Name = "Start Music",
        Callback = function()
            IDMusica()
        end,
    })

    local Avatar = PBHBrookhaven:CreateTab("Avatar", "user")
    local SkinArcobaleno = Avatar:CreateToggle({
        Name = "Rainbow skin",
        CurrentValue = false,
        Callback = function(Value)
            if CurrentValue == false and _G.RainbowSkin == true then
                RainbowSkin:Disconnect()
            else
                _G.RainbowSkin = Value
                RainbowSkin()
            end
        end,
     })
end

if game.placeId ~= 4924922222 then
    game.Players.LocalPlayer:Kick("\nYou're not in brookhavem!\nJoin Brookhaven and retry.")
else
    PistolaBollaHUBBrook()
end