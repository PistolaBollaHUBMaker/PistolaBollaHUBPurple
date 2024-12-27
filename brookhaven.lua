local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB Brookhaven", HidePremium = false, SaveConfig = false, IntroEnabled = false})
local ColorePelle = Window:MakeTab({
 Name = "Avatar",
 Icon = "rbxassetid://12392896519",
 PremiumOnly = false
})

_G.ArcobalenoBelo = true
_G.MacchinaLGBT = true

function ArcobalenoBelo()
while _G.ArcobalenoBelo == true do
    local args = {
        [1] = "skintone",
        [2] = "Really red"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(0.75)
    local args = {
        [1] = "skintone",
        [2] = "Deep orange"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(0.75)
    local args = {
        [1] = "skintone",
        [2] = "New Yeller"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(0.75)
    local args = {
        [1] = "skintone",
        [2] = "Lime green"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(0.75)
    local args = {
        [1] = "skintone",
        [2] = "Cyan"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(0.75)
    local args = {
        [1] = "skintone",
        [2] = "Really blue"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(0.75)
    local args = {
        [1] = "skintone",
        [2] = "Magenta"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    wait(2)
end
end

function MacchinaLGBT()
while _G.MacchinaLGBT == true do
--rosso
game:GetService("ReplicatedStorage").JK.TR["1Player1sCa1r"]:FireServer("PickingCarColor",Color3.new(1, 0, 0))
wait(1)
--aranciome
game:GetService("ReplicatedStorage").JK.TR["1Player1sCa1r"]:FireServer("PickingCarColor",Color3.new(1, 0, 0.154196))
wait(1)
--giallo
game:GetService("ReplicatedStorage").JK.TR["1Player1sCa1r"]:FireServer("PickingCarColor",Color3.new(1, 0, 0.154196))
wait(1)
--verde
game:GetService("ReplicatedStorage").JK.TR["1Player1sCa1r"]:FireServer("PickingCarColor",Color3.new(0.761252, 0.743564, 0))
wait(1)
--azzurro
game:GetService("ReplicatedStorage").JK.TR["1Player1sCa1r"]:FireServer("PickingCarColor",Color3.new(0.00241068, 0.541505, 0.761252))
wait(1)
--blu
game:GetService("ReplicatedStorage").JK.TR["1Player1sCa1r"]:FireServer("PickingCarColor",Color3.new(0, 0.172659, 0.761252))
wait(5)
end
end

ColorePelle:AddButton({
 Name = "Rosso",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "Really red"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))    
end
})
ColorePelle:AddButton({
 Name = "Arancione",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "Deep orange"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))    
end
})
ColorePelle:AddButton({
 Name = "Giallo",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "New Yeller"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))    
end
})
ColorePelle:AddButton({
 Name = "Verde",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "Lime green"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))    
end
})
ColorePelle:AddButton({
 Name = "Azzurro",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "Cyan"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))    
end
})
ColorePelle:AddButton({
 Name = "Blu",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "Really blue"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))    
end
})
ColorePelle:AddButton({
 Name = "Magenta",
 Callback = function()
    local args = {
        [1] = "skintone",
        [2] = "Magenta"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
    
end
})
ColorePelle:AddToggle({
	Name = "Arcobaleno (Rischio kick, provero' a sistemare)",
	Default = false,
	Callback = function(Value)
	_G.ArcobalenoBelo = Value
	ArcobalenoBelo()
end  
})
ColorePelle:AddButton({
 Name = "Rimetti il tuo avatar",
 Callback = function()
    local args = {
        [1] = "OCA"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("JK"):WaitForChild("TR"):WaitForChild("1Avata1rOrigina1l"):FireServer(unpack(args))    
end
})
local Macchina = Window:MakeTab({
 Name = "Macchina",
 Icon = "rbxassetid://13631802498",
 PremiumOnly = false
})

_G.IdHoverboard = "string"

function IdHoverboard()
    local args = {
    [1] = "PickingScooterMusicText",
    [2] = _G.IdHoverboard
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
end

_G.IdMacchina = "string"

function IdMacchina()
    local args = {
    [1] = "PickingCarMusicText",
    [2] = _G.IdMacchina
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
end

Macchina:AddTextbox({
 Name = "ID Musica(pass richiesto, hoverboard)",
 Default = "",
 TextDisappear = false,
 Callback = function(Value)
    _G.IdHoverboard = Value
 end
})
Macchina:AddButton({
 Name = "Starta musica (Hoverboard)",
 Callback = function()
    IdHoverboard()
    end
})
Macchina:AddTextbox({
  Name = "ID Musica(pass richiesto, macchina)",
  Default = "",
  TextDisappear = false,
  Callback = function(Value)
    _G.IdHoverboard = Value
    end
})
Macchina:AddButton({
  Name = "Starta musica (Macchina)",
  Callback = function()
    IdMacchina()
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