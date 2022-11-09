--Библия
local ArgetnarLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/Library/main/ArgetnarLibrary.lua"))()

--Гуи
local win = ArgetnarLib:Window("Hi Pusya")
local TabFarm = win:Tab("Пуся)")
TabFarm:Toggle("CoreGiver", function(v)

    getgenv().G = v
while getgenv().G do
wait()
for i = 1,100 do
game:GetService("Workspace").Give13Core.AddFear:FireServer()
end
end

end)
TabFarm:Toggle("Фармик для любимой❤", function(Bool)
    _G.farmon = Bool
while _G.farmon do
   game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(821.514709, 388.48056, 4214.9834, -0.0403586291, -7.05200875e-09, 0.999185264, -1.10081348e-08, 1, 6.61312383e-09, -0.999185264, -1.07322702e-08, -0.0403586291)
   game:GetService("Workspace").Obby.Obby2.Head.CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
   task.wait()
end
end)
