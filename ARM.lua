local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Undertale: Remnants of the Multiverse",
   LoadingTitle = "Script",
   LoadingSubtitle = "by Doku",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Un"
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

local Tab = Window:CreateTab("AutoFarm", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
   Name = "Auto Exp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    _G.Auto = Value
    while _G.Auto == true do
        workspace:WaitForChild("PointSoulGive"):WaitForChild("Give18point"):WaitForChild("AddFear"):FireServer()
        wait(0.8)
    end
   end,
})
local Tab = Window:CreateTab("Characters", 4483362458)
local Label = Tab:CreateLabel("If you die while selecting a character")
local Label = Tab:CreateLabel("Then once you've reincarnated, choose a character again")
local Label = Tab:CreateLabel("Try as many times as it takes, if it fails, use immortality.")
local Section = Tab:CreateSection("Characters:")
-- Получаем доступ к сервису Workspace
local workspace = game:GetService("Workspace")

-- Получаем доступ к папке CHARACTERSTUFF.CHARACTER
local characterFolder = workspace:WaitForChild("CHARACTERSTUFF"):WaitForChild("CHARACTER")

-- Функция для телепортации к указанной модели
local function teleportToModel(model)
    local middleChest = model:FindFirstChild("Chest"):FindFirstChild("Middle")
    if middleChest then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = middleChest.CFrame
    end
end

-- Создаем кнопки для каждой модели в папке CHARACTER
for _, child in ipairs(characterFolder:GetChildren()) do
    local modelName = child.Name
    
    local Button = Tab:CreateButton({
        Name = modelName,
        Callback = function()
            teleportToModel(child)
        end,
    })
end
