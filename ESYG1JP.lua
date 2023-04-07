local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Every Second You Get +1 Jump Power",
   LoadingTitle = "AutoFarm Gui V1",
   LoadingSubtitle = "by Andy Gade",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "9WGczwFcZx", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

local Tab = Window:CreateTab("AutoFarm", 4483362458) -- Title, Image
local Section = Tab:CreateSection("AutoFarm(No stop)")
local Toggle = Tab:CreateToggle({
   Name = "AutoFarm Wins",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   	local Players = game:GetService("Players")
	local WaitTime = 1/60

while true do
	local player = game:GetService("Players").LocalPlayer
	local stage = game:GetService("Workspace").Wins.World14
	local stageCFrame = stage.CFrame
	player.Character:SetPrimaryPartCFrame(stageCFrame)
	wait(WaitTime)
	end

   end,
})

local Toggle = Tab:CreateToggle({
   Name = "AutoRebirth",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
	while Value do
		local WaitTime = 1/60
		game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
		wait(WaitTime)
	end
   end,
})

local Tab = Window:CreateTab("Credits", 4483362458) -- Title, Image
local Paragraph = Tab:CreateParagraph({Title = "Script by", Content = "Andy Gade"})

Rayfield:Notify({
   Title = "Andy Gade",
   Content = "Thank you for using my script",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
   Scriptblox = {
         Name = "Copy ScriptBlox",
         Callback = function()
         setclipboard("https://scriptblox.com/u/AndyGade")
      end
   }
},
})
