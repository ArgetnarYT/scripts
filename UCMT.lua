--Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--window
local Window = Rayfield:CreateWindow({
   Name = "Undertale Crazy Multiverse Timeline",
   LoadingTitle = "Ver: 1.2",
   LoadingSubtitle = "by Doku",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Doku"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
--tab
local Tab = Window:CreateTab("Autofarm", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Farms")
--functions
local Toggle = Tab:CreateToggle({
   Name = "Core Giver (Hard)",
   CurrentValue = false,
   Flag = "Core", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
	getgenv().G = v
while getgenv().G do
wait()
for i = 1,100 do
game:GetService("Workspace").Give13Core.AddFear:FireServer()
end
end
end,
})
local Toggle = Tab:CreateToggle({
   Name = "AutoFarm Dungeon",
   CurrentValue = false,
   Flag = "Dun", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
	_G.farmon = v
while _G.farmon do
   game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(821.514709, 388.48056, 4214.9834, -0.0403586291, -7.05200875e-09, 0.999185264, -1.10081348e-08, 1, 6.61312383e-09, -0.999185264, -1.07322702e-08, -0.0403586291)
   game:GetService("Workspace").Obby.Obby2.Head.CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
   task.wait()
end
end,
})

local Tab = Window:CreateTab("Credits", 4483362458) -- Title, Image
local Label = Tab:CreateLabel("Creators:")
local Paragraph = Tab:CreateParagraph({Title = "Funcions:", Content = "DokuTengoku"})
local Paragraph = Tab:CreateParagraph({Title = "Gui:", Content = "Rayfield"})
local Paragraph = Tab:CreateParagraph({Title = "Discord:"})
local Button = Tab:CreateButton({
   Name = "Tap to copy.",
   Callback = function()
   setclipboard("9WGczwFcZx")
   end,
})
