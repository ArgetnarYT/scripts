local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Window = Library.CreateLib("Argetnar KeyHub", "DarkTheme")
local Tab = Window:NewTab("KeyTab")

Notification:Notify(
    {Title = "Your in!", Description = "Argetnar KeyHub v132"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/Key.lua"))()

function MakeScriptHub()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/PetsimXUI.lua"))()
end

function CorrectKeyNotifications()
Notification:Notify(
    {Title = "Correct Key!", Description = "Welcome :D"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end


function WrongKeyNotifications()
Notification:Notify(
    {Title = "Wrong key!", Description = "Key not correct("},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end

function GetKeyNotifications()
Notification:Notify(
    {Title = "Discord Link", Description = "The link was copied"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end

local Section = Tab:NewSection("Key")
Section:NewTextBox("Enter Key!", "Enter Key from discord", function(Value)
	_G.KeyInput = Value
end)
Section:NewButton("Check Key!", "Cheking Your Key", function()
            if _G.KeyInput == _G.EnterKey then
			CorrectKeyNotifications()
			wait(3)
         MakeScriptHub()
     else
        WrongKeyNotifications()
        end
end)

Section:NewLabel("Get Key!")
Section:NewButton("Get Key!", "Copy link Discord server", function()
          		setclipboard("https://discord.gg/DaKyeHFx8d")
			  GetKeyNotifications()
end)
