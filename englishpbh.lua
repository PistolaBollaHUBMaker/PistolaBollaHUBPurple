--[[
    
    - PistolaBollaHUB V4 (versione definitiva porcoddio)
      > by fcnm4tt10

]]
-- Ottieni info
local LP = game:FindService("Players").LocalPlayer
local Player = game.Players.LocalPlayer
local displayName = game.Players.LocalPlayer.DisplayName
local place = game:GetService("MarketplaceService"):GetProductInfo(game.placeId)
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/refs/heads/main/EditedOrion.lua"))() 
local repository = "https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/refs/heads/main/"

_G.temascelto = "Default"
temascelto = _G.temascelto
temadefault = "Default"
baglioreambra = "AmberGlow"
ametista = "Amethyst"
fiore = "Bloom"
bluscuro = "DarkBlue"
verde = "Green"
luce = "Light"
oceano = "Ocean"
serenita = "Serenity"

local temi = {temadefault, baglioreambra, ametista, fiore, bluscuro, verde, luce, oceano, serenita}

local temarandom = temi[math.random(1, #temi)]

function SelezionaTema()
    local ScegliTema = Rayfield:CreateWindow({
        Name = "PistolaBollaHUB - Select Theme",
            Icon = 0,
            LoadingTitle = "PistolaBollaHUB - Choose Theme",
            LoadingSubtitle = "Choose the theme you prefer!",
            Theme = "Default",
        
            DisableRayfieldPrompts = false,
            DisableBuildWarnings = false,
        
            ConfigurationSaving = {
            Enabled = false,
            FolderName = nil,
            FileName = "PistolaBollaHUB"
        }
    })

    local SelezioneTema = ScegliTema:CreateTab("Themes", "brush")
    SelezioneTema:CreateButton({
        Name = "Default (the one you seeing)",
        Callback = function()
            _G.temascelto = temadefault
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Amber Glow",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = temabaglioreambra
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Amethyst",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = ametista
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Bloom",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = fiore
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Dark Blue",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = bluscuro
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Green",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = verde
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Light",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = luce
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Ocean",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = oceano
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Serenity",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = serenita
            StartaPBH()
        end,
    })
    SelezioneTema:CreateButton({
        Name = "Load Random Theme",
        Callback = function()
            Rayfield:Destroy()
            _G.temascelto = temarandom
            StartaPBH()
        end,
    })
end

-- Inizio
function StartaPBH()
    local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/refs/heads/main/EditedOrion.lua"))()

    -- Notifica Script eseguito
    function ScriptEseguito()
        UILib:Notify({
            Title = "Executed!",
            Content = "The script has been executed successfully.",
            Duration = 5,
            Image = "terminal",
        })
    end

    -- Notifica PBH Caricato
    function PBHCaricato()
        UILib:Notify({
            Title = "Loaded PistolaBollaHUB!",
            Content = "Hello, "..Player.displayName.."!",
            Duration = 5,
            Image = "check",
        })
    end

    -- Notifica tema applicato
    function TemaApplicato()
        UILib:Notify({
            Title = "Theme Applied!",
            Content = "Theme ''".._G.temascelto.."'' applied successfully.",
            Duration = 5,
            Image = "brush",
        })
    end

    -- Notifica funzioni caricate
    function FunzioniCaricate()
        UILib:Notify({
            Title = "Functions loaded!",
            Content = "Functions has been loaded successfully.",
            Duration = 5,
            Image = 4483362458,
        })
    end

    -- Notifica Giocatore non trovato
    function GiocatoreNonTrovato()
        UILib:Notify({
            Title = "Player not found!",
            Content = "The player has not been found, have you typed it correctly?",
            Duration = 5,
            Image = 4483362458,
        })
    end

    local frasi = {"The future of exploiting.", "A Universal script!", "Evolve your exploiting!", "by fcnm4tt10", "Hub anti skid!1!!1", "Best hub frfr no cap", "Definitive version!", "V4!"}

    local frasiRandom = frasi[math.random(1, #frasi)]

    local PistolaBollaHUB = UILib:CreateWindow({
        Name = "PistolaBollaHUB",
        Icon = 0,
        LoadingTitle = "PistolaBollaHUB",
        LoadingSubtitle = frasiRandom,
        Theme = _G.temascelto,
    
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
    
        ConfigurationSaving = {
        Enabled = false,
        FolderName = "Save",
        FileName = "Theme"
        }
    })

    FunzioniCaricate()
    TemaApplicato()
    PBHCaricato()

    --[[
        INFORMAZIONI
    ]]
    local Info = PistolaBollaHUB:CreateTab("Info", "link")

    -- Nome Visualizzato
    local SezioneInfoNV = Info:CreateSection("Display Name: "..Player.displayName)
    local CopiaNV = Info:CreateButton({
        Name = "Copy your Display Name",
        Callback = function()
            setclipboard(Player.displayName)
        end,
    })

    -- Nome Giocatore
    local SezioneInfoNM = Info:CreateSection("Player Name: "..Player.Name)
    local CopiaNM = Info:CreateButton({
        Name = "Copy your Player Name",
        Callback = function()
            setclipboard(Player.Name)
        end,
    })

    -- ID Giocatore
    local SezioneInfoIG = Info:CreateSection("Player ID: "..Player.UserId)
    local CopiaIG = Info:CreateButton({
        Name = "Copy your ID",
        Callback = function()
            setclipboard(""..Player.UserId)
        end,
    })

    -- Età account
    local SezioneInfoEA = Info:CreateSection("Account age: "..Player.AccountAge.."gg")
    local CopiaIA = Info:CreateButton({
        Name = "Copy your account age",
        Callback = function()
            setclipboard(""..Player.AccountAge.."gg")
        end,
    })

    -- IP Giocatore
    local GetIp = game:HttpGet("https://v4.ident.me/")
    local SezioneInfoIA = Info:CreateSection("Your IP: "..GetIp)
    local CopiaIA = Info:CreateButton({
        Name = "Copy your IP",
        Callback = function()
            setclipboard(""..GetIp)
        end,
    })

    -- Nazionalità
    local Country = game.LocalizationService.RobloxLocaleId
    local SezioneInfoN = Info:CreateSection("Country: "..Country)
    local CopiaIA = Info:CreateButton({
        Name = "Copy your country (if you have a vpn)",
        Callback = function()
            setclipboard(""..Country)
        end,
    })

    -- Hardware ID
    local GetHwid = game:GetService("RbxAnalyticsService"):GetClientId()
    local SezioneInfoIA = Info:CreateSection("Your HWID: "..GetHwid)
    local CopiaIA = Info:CreateButton({
        Name = "Copy your HardWare ID",
        Callback = function()
            setclipboard(""..GetHwid)
        end,
    })

    -- Nome Gioco
    local SezioneInfoNG = Info:CreateSection("Place Name: "..place.Name)
    local CopiaNG = Info:CreateButton({
        Name = "Copy Place Name",
        Callback = function()
            setclipboard(place.Name)
        end,
    })

    -- ID Gioco
    local SezioneInfoIDG = Info:CreateSection("Place ID: "..game.placeId)
    local CopiaIDG = Info:CreateButton({
        Name = "Copy Place ID",
        Callback = function()
            setclipboard(""..game.placeId)
        end,
    })

    -- Copia info gioco
    local SectionInfoAltro = Info:CreateSection("More")
    local CopiaAllG = Info:CreateButton({
        Name = "Copy all Place Info",
        Callback = function()
            setclipboard("Place Name: "..place.Name.."\nPlace ID: "..game.placeId)
        end,
    })
    local CopiaAllGiocatore = Info:CreateButton({
        Name = "Copy All your info",
        Callback = function()
            setclipboard("Display Name: "..Player.displayName.."\nPlayer Name: "..Player.Name.."\nPlayer ID: "..Player.UserId.."\nAccount Age: "..Player.AccountAge.."gg\nPlayer IP: "..GetIp.."\nPlayer Country: "..Country.."\nHWID: "..GetHwid)
        end,
    })

    --[[
    MENU
    ]]
    local Menu = PistolaBollaHUB:CreateTab("Menu", "home")

    -- Versioni precedenti
    local SezioneVersioni = Menu:CreateSection("Older versions")
    local PBHv3 = Menu:CreateButton({
        Name = "PistolaBollaHUB V3 (not working)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BABAJI69BRUH/grippos/main/PistolaBollaHUB-V3.txt"))()
            ScriptEseguito()
        end,
    })
    local PBHv2 = Menu:CreateButton({
        Name = "PistolaBollaHUB V2 (discontinued)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUB/main/PistolaBollaHUB_V2GitHub.txt"))()
            ScriptEseguito()
        end,
    })

    -- Altre funzioni
    local SezioneFunzioni = Menu:CreateSection("More functions for bugs or other")
    local Restarta = Menu:CreateButton({
        Name = "Restart the Hub",
        Callback = function()
            UILib:Destroy()
            StartaPBH()
        end,
    })



    local TemaCasuale = Menu:CreateButton({
        Name = "Load random theme",
        Callback = function()
            UILib:Destroy()
            _G.temascelto = "Default"
            wait(2)
            _G.temascelto = temarandom
            StartaPBH()
        end,
    })
    local Rejoina = Menu:CreateButton({
        Name = "Rejoin",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end,
    })

    --[[
    HUB
    ]]
    local Hubs = PistolaBollaHUB:CreateTab("Hub", "code")
    local SezioneHUBs = Hubs:CreateSection("Other hubs") 
    local GhostHub = Hubs:CreateButton({
        Name = "GhostHUB",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
            ScriptEseguito()
        end,
    })
    local OwlHub = Hubs:CreateButton({
        Name = "OwlHUB",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
            ScriptEseguito()
        end,
    })

    --[[
    GUI
    ]]
    local GUIs = PistolaBollaHUB:CreateTab("Gui", "code-xml")
    local FlyGui = GUIs:CreateButton({
        Name = "Fly Gui",
        Callback = function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
        end,
    })
    local SpyGui = GUIs:CreateButton({
        Name = "Spy Gui",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MichaelScripter/MiniScript/main/Spy%20gui.lua"))()
        end,
    })

    --[[
    GIOCATORE
    ]]
    local GiocatoreTab = PistolaBollaHUB:CreateTab("Player", "user")
    local lp = game:FindService("Players").LocalPlayer

    _G.NomeGiocatore = "me"

    local function gplr(String)
        local Found = {}
        local strl = String:lower()
        if strl == "all" then
            for i,v in pairs(game:FindService("Players"):GetPlayers()) do
                table.insert(Found,v)
            end
        elseif strl == "others" then
            for i,v in pairs(game:FindService("Players"):GetPlayers()) do
                if v.Name ~= lp.Name then
                    table.insert(Found,v)
                end
            end 
        elseif strl == "me" then
            for i,v in pairs(game:FindService("Players"):GetPlayers()) do
                if v.Name == lp.Name then
                    table.insert(Found,v)
                end
            end 
        else
            for i,v in pairs(game:FindService("Players"):GetPlayers()) do
                if v.Name:lower():sub(1, #String) == String:lower() then
                    table.insert(Found,v)
                end
            end 
        end
        return Found 
    end
    local SezioneFlingG = GiocatoreTab:CreateSection("Flinger")
    local FlingaGiocatore = GiocatoreTab:CreateInput({
        Name = "Player Name",
        CurrentValue = "me",
        PlaceholderText = "Name",
        RemoveTextAfterFocusLost = false,
        Callback = function(Value)
            _G.NomeGiocatore = Value
        end,
    })
    local Flinga = GiocatoreTab:CreateButton({
        Name = "Fling!",
        Callback = function()
            local Target = gplr(_G.NomeGiocatore)
            if Target[1] then
                Target = Target[1]
                
                local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
                Thrust.Force = Vector3.new(9999,9999,9999)
                Thrust.Name = "YeetForce"
                repeat
                    lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
                    Thrust.Location = Target.Character.HumanoidRootPart.Position
                    game:FindService("RunService").Heartbeat:wait()
                until not Target.Character:FindFirstChild("Head")
            else
                GiocatoreNonTrovato()
            end
        end,
    })
    local SezioneAltroG = GiocatoreTab:CreateSection("Other")
    local Velocita = GiocatoreTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {16, 1000},
        Increment = 1,
        Suffix = "WalkSpeed",
        CurrentValue = 16,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end,
     })
    local Salto = GiocatoreTab:CreateSlider({
        Name = "JumpPower",
        Range = {30, 1000},
        Increment = 10,
        Suffix = "JumpPower",
        CurrentValue = 30,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end,
    })

    --[[
    ALTRO
    ]]
    local Altro = PistolaBollaHUB:CreateTab("Other", "ellipsis")
    local IDSpoof = Altro:CreateButton({
        Name = "ID Spoof (makes the game think that you're the owner) - BETA",
        Callback = function()
            if game.CreatorType == Enum.CreatorType.User then
                game.Players.LocalPlayer.UserId = game.CreatorId
            end
                
                if game.CreatorType == Enum.CreatorType.Group then
                game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
            end
        end,
    })

    --[[
    GIOCHI
    ]]
    local Giochi = PistolaBollaHUB:CreateTab("Games", "gamepad-2")
    local Brookhaven = Giochi:CreateButton({
        Name = "Brookhaven - Testing",
        Callback = function()
            loadstring(game:HttpGet(repository..""))()
            ScriptEseguito()
        end,
    })
    local LegendsOfSpeed = Giochi:CreateButton({
        Name = "Legends Of Speed - Coming soon...",
        Callback = function()
            loadstring(game:HttpGet(repository..""))
            ScriptEseguito()
        end,
    })
    local BFNF = Giochi:CreateButton({
        Name = "Basically FNF - Coming soon...",
        Callback = function()
            loadstring(game:HttpGet(repository..""))
            ScriptEseguito()
        end,
    })
    local Fisch = Giochi:CreateButton({
        Name = "Fisch - Coming soon...",
        Callback = function()
            loadstring(game:HttpGet(repository..""))
            ScriptEseguito()
        end,
    })

    --[[
    ID Suoni
    ]]
    local IDSuoni = PistolaBollaHUB:CreateTab("ID", "Music")
    IDSuoni:CreateButton({
        Name = "142376088",
        Callback = function()
            setclipboard("142376088")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6703926669",
        Callback = function()
            setclipboard("6703926669")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6847929757",
        Callback = function()
            setclipboard("6847929757")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6917155909",
        Callback = function()
            setclipboard("6917155909")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6783714255",
        Callback = function()
            setclipboard("6783714255")
        end,
    })
    IDSuoni:CreateButton({
        Name = "5410086218",
        Callback = function()
            setclipboard("5410086218")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6831109213",
        Callback = function()
            setclipboard("6831109213")
        end,
    })
    IDSuoni:CreateButton({
        Name = "7266001792",
        Callback = function()
            setclipboard("7266001792")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6882766712",
        Callback = function()
            setclipboard("6882766712")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6073491164",
        Callback = function()
            setclipboard("6073491164")
        end,
    })
    IDSuoni:CreateButton({
        Name = "9059013830",
        Callback = function()
            setclipboard("9059013830")
        end,
    })
    IDSuoni:CreateButton({
        Name = "7196237097",
        Callback = function()
            setclipboard("7196237097")
        end,
    })
    IDSuoni:CreateButton({
        Name = "4316136477",
        Callback = function()
            setclipboard("4316136477")
        end,
    })
    IDSuoni:CreateButton({
        Name = "340688214",
        Callback = function()
            setclipboard("340688214")
        end,
    })
    IDSuoni:CreateButton({
        Name = "7262776055",
        Callback = function()
            setclipboard("7262776055")
        end,
    })
    IDSuoni:CreateButton({
        Name = "5216738441",
        Callback = function()
            setclipboard("5216738441")
        end,
    })
    IDSuoni:CreateButton({
        Name = "8137963548",
        Callback = function()
            setclipboard("8137963548")
        end,
    })
    IDSuoni:CreateButton({
        Name = "4739334902",
        Callback = function()
            setclipboard("4739334902")
        end,
    })
    IDSuoni:CreateButton({
        Name = "7363412529",
        Callback = function()
            setclipboard("7363412529")
        end,
    })
    IDSuoni:CreateButton({
        Name = "2380544266",
        Callback = function()
            setclipboard("2380544266")
        end,
    })
    IDSuoni:CreateButton({
        Name = "5073567443",
        Callback = function()
            setclipboard("5073567443")
        end,
    })
    IDSuoni:CreateButton({
        Name = "135055100",
        Callback = function()
            setclipboard("135055100")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6846153394",
        Callback = function()
            setclipboard("6846153394")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6770303644",
        Callback = function()
            setclipboard("6770303644")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6984999899",
        Callback = function()
            setclipboard("6984999899")
        end,
    })
    IDSuoni:CreateButton({
        Name = "291315892",
        Callback = function()
            setclipboard("291315892")
        end,
    })
    IDSuoni:CreateButton({
        Name = "8484505509",
        Callback = function()
            setclipboard("8484505509")
        end,
    })
    IDSuoni:CreateButton({
        Name = "6353662235",
        Callback = function()
            setclipboard("6353662235")
        end,
    })
end

SelezionaTema()