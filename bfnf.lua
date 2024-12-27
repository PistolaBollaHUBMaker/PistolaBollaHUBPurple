local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Basically FNF: Remix)", HidePremium = false, SaveConfig = false, IntroEnabled = false})

VirtualInputManager = game:GetService("VirtualInputManager")
plr = game:GetService("Players").LocalPlayer

getgenv().settings = {
    autoPlay = {
        enabled = false
    }
}

function getSide()
    local side = plr.File.CurrentPlayer.Value
    if tostring(side) == 'Player2' then
        return '2'
    elseif tostring(side) == 'Player1' then
        return '1'
    end
    return nil
end

arrowNotes = {
    ["Arrow1"] = 'A',
    ["Arrow2"] = 'S',
    ["Arrow3"] = 'W',
    ["Arrow4"] = 'D'
}

playedNotes = {}

function autoPlay()
    task.spawn(function()
        while settings.autoPlay.enabled and task.wait() do
            playedNotes = {}
            while plr.File.CurrentPlayer.Value and task.wait() do 
                local side = getSide()
                if side then
                    for _,v in pairs(plr.PlayerGui.Main.MatchFrame['KeySync' .. side]:GetChildren()) do
                        local frame = v.Notes
                        for _, note in pairs(frame:GetChildren()) do
                            local distance = (note.AbsolutePosition - v.AbsolutePosition).magnitude
                            if distance < 30 then
                                local curParent = note.Parent
                                game.VirtualInputManager:SendKeyEvent(1, arrowNotes[v.Name], 0, game)
                                repeat task.wait() until curParent ~= note.Parent
                                game.VirtualInputManager:SendKeyEvent(0, arrowNotes[v.Name], 0, game)
                                
                            end
                        end
                    end
                end
                if settings.autoPlay.enabled == false then break end;
            end
        end
    end)
end

local Home = Window:MakeTab({
 Name = "Home",
 Icon = "rbxassetid://12260531445",
 PremiumOnly = false
})
Home:AddToggle({
 Name = "Auto Play (A volte si bugga quando ci sono fin troppe note)",
 Default = false,
 Callback = function(Value)
    settings.autoPlay.enabled = Value
        if Value then
            autoPlay()
        end
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