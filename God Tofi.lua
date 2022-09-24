game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
--godmode
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4900761581"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)
wait(0.1)
--Inf R
        game.Workspace.Map["MapCFrame"]:Destroy()
        game.Workspace.Map["MapSize"]:Destroy()
        game.Workspace.Map.Model["InvisibleWalls"]:Destroy()
--









































--Chat
wait()
_G.hidechat = true
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = ' [ GOD TOFI ] *\n' ..Chat, 
          [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

--red Глаза
            for _, v in pairs(game.ReplicatedStorage.RogueEffects:GetChildren()) do
                if v.Name == "RedEyes" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Trail.Lifetime = 2
                    sword2.Trail.Lifetime = 2
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Head"]
                    sword2.Name = "CLOWNEYES"
                    weld.C0 = CFrame.new(0, 0, -0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end


       --SPEED
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 150
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10

game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.One then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929669003"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.00001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                
                local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3924265388"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20 + Vector3.new(0, 1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
    end
end)
        
        
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Two then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929669003"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -0.001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.7)
                local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7501550774"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.7)
                  local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://6998858440"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0, -50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)

local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects
    end
end)

--inf jump
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
--Skills

--0 - fling
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Zero then
local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = [[]],
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
local part = Instance.new("Part")
part.Parent = Game.Workspace
part.Anchored = true
part.Position = Vector3.new(20.4143,-143.366,3483.62)
part.Size = Vector3.new(16,1.2,16)
part.Name = "FlignPart"
local part = Instance.new("Part")
part.Parent = Game.Workspace
part.Anchored = true
part.CanCollide = falsed
part.Size = Vector3.new(0.1,0.2,0.1)
part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
part.Name = "tp"
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20.4143,-141.366,3483.62) 
wait(0.2)
spawn(function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "PatienceAttack",
            [3] = r2.p,
            [4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
end)
wait(3.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.tp.CFrame
game.Workspace.tp:Destroy()
game.Workspace.FlignPart:Destroy()
    end
               end)
--H - blueboom
 player = game.Players.LocalPlayer
char = player.Character
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "h" then
        local AnimationId = "4408052168"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","SpearGroundExplosion",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
end
            for _,v in pairs(game.workspace:GetChildren()) do
                if v:FindFirstChildOfClass('Humanoid') and v ~= char and v:FindFirstChild('HumanoidRootPart') then
                    mag = (char.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
                    if mag <= 10 then
                        spawn(function()
                            local A_1 = getrenv()._G.Pass
                            local A_2 = v
                            local A_3 =  {
                                ["Type"] = "Normal",
                                ["HitEffect"] = "HeavyHitEffect", 
                                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.Clashing, 
                                ["Velocity"] = Vector3.new(0, -0.1, 0), 
                                ["HitTime"] = 1, 
                                ["CombatInv"] = true, 
                                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge, 
                                ["Damage"] = 4
                            }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
                        end)
                    end
                end
            end
        end
end)

--T - fly
loadstring(game:HttpGet("https://pastebin.com/raw/2DsZ55C9", true))()
--rejoin num6
wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadSix then
wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadSix then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ GOD TOFI ] *
-Rejoin- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        game:GetService("TeleportService"):Teleport(3198259055, LocalPlayer)
end
end)
end
end)
