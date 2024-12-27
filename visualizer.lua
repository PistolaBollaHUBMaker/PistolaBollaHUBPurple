local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUBPurple/main/EditedOrion.lua?')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB Visualizer", HidePremium = false, SaveConfig = false, IntroEnabled = false})

_G.id = value

local VisualizerSu = Window:MakeTab({
 Name = "Home",
 Icon = "rbxassetid://12392975271",
 PremiumOnly = false
})
VisualizerSu:AddTextbox({
 Name = "Duplica Radio",
 Default = "Numero",
 TextDisappear = true,
 Callback = function(dupe)
    local plr = game:GetService("Players").LocalPlayer
local char = plr.Character

local amount = dupe -- how many times the duper will run


local ogpos = char.HumanoidRootPart.Position

for i = 1, amount do
   char:WaitForChild("HumanoidRootPart")
   for i,v in pairs(plr.Backpack:GetChildren()) do
       if v:IsA("Tool") then v.Parent = char end
   end
   for i,v in pairs(char:GetChildren()) do
       if v:IsA("Tool") then v.Parent = char end
   end
   char.HumanoidRootPart.CFrame = CFrame.new(0,999999,0)
   repeat wait() until not plr.Backpack:FindFirstChildOfClass("Tool")
   wait(0.25)
   for i,v in pairs(char:GetChildren()) do
       if v:IsA("BasePart") then
           v.CanCollide = false
           v.Anchored = true
       end
   end
   for i,v in pairs(char:GetChildren()) do
       if v:IsA("Tool") then v.Parent = workspace end
   end
   char:BreakJoints()
   plr.CharacterAdded:Wait()
   char = plr.Character
end

char:WaitForChild('HumanoidRootPart')
wait(0.15)
char.HumanoidRootPart.CFrame = CFrame.new(ogpos)
for i,v in pairs(workspace:GetChildren()) do
   if v:IsA("Tool") then
       char.Humanoid:EquipTool(v)    
   end
end
    end
})
VisualizerSu:AddTextbox({
 Name = "ID",
 Default = "Metti l'id del suono",
 Callback = function(value)
    _G.id = value
    end
})
VisualizerSu:AddButton({
 Name = "Massplay",
 Callback = function()
 for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character
    end
end
    if vis == false then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "BoomBox" then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					idtoplay = _G.id
					v.Parent=game.Players.LocalPlayer.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(idtoplay:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
				end)()
			end
		end
	else
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "BoomBox" then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					idtoplay = _G.id
					v.Parent=game.Players.LocalPlayer.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(idtoplay:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
				end)()
			end
		end
	end
	wait(1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "BoomBox" then
			coroutine.wrap(function()
				v.Handle:FindFirstChildOfClass("Sound").TimePosition=0
				v.Handle:FindFirstChildOfClass("Sound").Playing=true
			end)()
		end
	end
	end
})
VisualizerSu:AddLabel("Preset belli")
VisualizerSu:AddButton({
 Name = "Orbit bello",
 Callback = function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Position = game.Players[player].Character.Torso.Position
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 2, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(math.rad((i*(360/#tools))+rot),0,0) * CFrame.new(0,0+ym.Value,0+off.Value+v.Handle.Sound.PlaybackLoudness/150)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
	end
})
VisualizerSu:AddButton({
 Name = "Cerchio",
 Callback = function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
				v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value+v.Handle.Sound.PlaybackLoudness/250) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(yv.Value + time() * math.pi)) * v.Handle.Sound.PlaybackLoudness * 0.005 * pbl.Value, math.cos(math.rad(val.Value+v.Handle.Sound.PlaybackLoudness/250) + time() * sin.Value) * off.Value)
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 4, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(0+v.Handle.Sound.PlaybackLoudness/600,0,0) * CFrame.new(0,0,0+v.Handle.Sound.PlaybackLoudness/300)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
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