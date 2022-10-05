--library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Window = OrionLib:MakeWindow({Name = "Sheep Tycoon 🐑", HidePremium = true, SaveConfig = true, ConfigFolder = "Redcliff Exploit"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Universal-Script"
})

Tab:AddButton({
	Name = "Reset",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.Health = 0
  	end    
})

Tab:AddButton({
	Name = "Kick",
	Callback = function()
     game.Players.LocalPlayer:Kick("bye")
  	end    
})

Tab:AddButton({
	Name = "Rejoin",
	Callback = function()
     local ts = game:GetService("TeleportService")

     local p = game:GetService("Players").LocalPlayer



     ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
  	end    
})

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 200,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(s)
		 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end    
})

--ESP
local Tab = Window:MakeTab({
        Name = "ESP",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})

getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false


getgenv().esp_loaded = false
getgenv().Visibility = false


Tab:AddToggle({
    Name = "Visual",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().Visibility = Value
    end   
})

Tab:AddToggle({
    Name = "Box ESP",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().boxESP = Value
    end   
})


Tab:AddToggle({
    Name = "Name",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().nameESP = Value
    end   
})


Tab:AddToggle({
    Name = "Chams",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().cham = Value
    end   
})


function SendNote(message : string, time)
    OrionLib:MakeNotification({
        Name = "Title!",
        Content = message,
        Image = "rbxassetid://4483345998",
        Time = time or 3
    })
end



Tab:AddToggle({
        Name = "Use Team-Color",
        Default = false,
        Callback = function(Value)
            getgenv().useTeamColor = Value
        end
})
local Tab = Window:MakeTab({
	Name = "Sheep Tycoon 🐑",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Auto Sell Wools",
	Callback = function()
      		while wait() do
   game:GetService("ReplicatedStorage").Signals.RemoteEvents.PutRemote:FireServer()
end
  	end    
})

Tab:AddButton({
	Name = "Autofarm on!",
	Callback = function()
      		getgenv().auto = true
while task.wait() and auto do
 game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(17)
end
  	end    
})
Tab:AddButton({
	Name = "AutoFarm off!",
	Callback = function()
      		getgenv().auto = false
while task.wait() and auto do
 game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(17)
end
  	end    
})

Tab:AddButton({
	Name = "Auto obby+2x"
	Callback = function()
			local Player = game:GetService("Players").LocalPlayer.Name

_G.doublemoney = true
while _G.doublemoney == true do
game:GetService("Workspace")[(Player)].HumanoidRootPart.CFrame = CFrame.new(-935.611084, 186.181, 837.546143, 0, 0, 1, 0, 1, -0, -1, 0, 0)
wait()
end

OrionLib:MakeNotification({
	Name = "Script"
	Content = "this script was made 1234567#3209",
	Image = "rbxassetid://4483345998",
	Time = 5
})
  	end    
})


Tab:AddButton({
	Name = "Auto Upgrade"
	Callback = function()
      		local Player = game:GetService("Players").LocalPlayer.Name

_G.doublemoney = true
while _G.doublemoney == true do
game:GetService("Workspace")[(Player)].HumanoidRootPart.CFrame = CFrame.new(373.492767, 3.96199751, 653.940735, 0.0610412732, -0.153412193, 0.986275136, 8.30876967e-09, 0.988117754, 0.153698802, -0.998135269, -0.00938196294, 0.0603159666)
wait()
end
  	end    
})
Tab:AddButton({
	Name = "give Wools!83.1m"
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Tamachiru/AppleX/main/Wool'))()
  	end    
})












local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Credits:AddParagraph("Made by:","Brinen & Argetnar & Doku & 1234567#3209")
wait(0.5)
Credits:AddParagraph("Script on Sheep Tycoon 🐑","")

Credits:AddButton({
	Name = "Discord Server copy",
	Callback = function()
      		setclipboard("https://discord.gg/DaKyeHFx8d")
			  OrionLib:MakeNotification({
	Name = "Script",
	Content = "Discord Link has been copy!",
	Image = "rbxassetid://4483345998",
	Time = 2
})

  	end    
})
