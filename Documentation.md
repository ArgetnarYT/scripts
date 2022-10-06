# Argetnar UI Library
UI Library Designed for Easy Use
# UI Library
```lua
local ArgetnarLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/ArgetnarLibrary.lua"))()
```
# Creating A Notification
```lua
ArgetnarLib:Notify("Notification!", "Text!")
```
# Creating The Window
```lua
local win = ArgetnarLib:Window("Argetnar Hub")
```
# Creating A Tab
```lua
local TabFarm = win:Tab("Autofarm")
```
# Creating A Button
```lua
TabFarm:Button("print hi", function()
    print("Hi!")
end)
```
# Creating A Toggle
```lua
TabFarm:Toggle("Print True / False", function(Bool)
    print(tostring(Bool))
end)
```
# Creating A Dropdown
```lua
TabFarm:Dropdown("Select Enemies", {"Bandit", "Crook", "Marine"}, function(EnemyName)
    print(EnemyName)
end)
```
# Creating A Slider
```lua
TabFarm:Slider("Walk Speed", 16, 500, 50, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)
```
# Creating A TextBox
```lua
TabFarm:TextBox("Type Hi", function(Value)
    if Value == "Hi" then
        print("Correct Text")
    else
        print("Incorrect Text")
    end
end)
```
# Creating A KeyBind
```lua
TabFarm:KeyBind("Spam Hi", Enum.KeyCode.B, function(Value)
    while Value do task.wait()
        print("Hi")
    end
end)
```
# Creating A Label
```lua
TabFarm:Label("This is A Label")
```
# Item functions
# Dropdown Dropdown Refreshing
```lua
local Enemies = {
"Bandit",
"Marine"
}
local DropRef = TabFarm:Dropdown("Select Enemy", Enemies, function(Value)
    print(Value)
end)
local Enemies2 = {
"Bandit2",
"Marine2"
}
DropRef:Refresh(Enemies2)
```
# Label Refreshing
```lua
local LabelRef = TabFarm:Label("This is a Label")

LabelRef:Refresh("Lol New Title")
```
#UI Library by Doku & Argetnar KeyHub
This Ui is made to simplify the work of the authors of our Argetnar Hub server
`https://discord.gg/cwyH9FrKQr`
