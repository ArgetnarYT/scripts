local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KeyHub Argetnar", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Your in!",
	Content = "Argetnar KeyHub v128", 
	Image = "rbxassetid://4483345998",
	Time = 5
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/Key.lua"))()

function MakeScriptHub()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/Sheep%20Tycoon.lua"))()


end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "Welcome :D",
        Image = "rbxassetid://4483345998",
        Time = 2
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key",
        Content = "Wrong key",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function GetKeyNotifications()
    OrionLib:MakeNotification({
        Name = "GetKey",
        Content = "Discord Link Copied =)",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.EnterKey then
			CorrectKeyNotifications()
			wait(3)
         MakeScriptHub()
     else
        WrongKeyNotifications()
        end
  	end    
})

Tab:AddLabel("Get Key")
Tab:AddButton({
	Name = "Copy link!",
	Callback = function()
      		setclipboard("https://discord.gg/DaKyeHFx8d")
			  GetKeyNotifications()
  	end    
})
