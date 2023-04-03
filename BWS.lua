local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "AutoFarm by Doku", HidePremium = false,})
local Tab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "AutoFarm"
})

Tab:AddToggle({
	Name = "Auto Train",
	Default = false,
	Callback = function(Value)

		local args = {
    [1] = game:GetService("Players").LocalPlayer
}

while Value do
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("TrainHit"):FireServer(unpack(args))
    wait(0.5) --Delay (don't set it too low or it will lag!) | Задержка(не ставь слишком мало, а то лагать будет!)
end

	end    
})

Tab:AddButton({
	Name = "AutoRebirth(GameAnalysticsError!)",

	Callback = function()
      		local args = {
    [1] = 1,
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Rebirth"):FireServer(unpack(args))

  	end    
})

Tab:AddButton({
	Name = "Auto Money",
	Callback = function()

    local endPosition = game:GetService("Workspace").End["10"]
    local localPlayer = game.Players.LocalPlayer
    localPlayer.Character.HumanoidRootPart.CFrame = endPosition.CFrame

  	end    
})

Tab:AddButton({
	Name = "Buy Last Egg(26M)",
	Callback = function()
      		
local args = {
    [1] = "110"
}

game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Hatch"):FireServer(unpack(args))


  	end    
})
