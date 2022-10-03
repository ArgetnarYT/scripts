local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Window = OrionLib:MakeWindow({Name = "Redcliff City RP", HidePremium = true, SaveConfig = true, ConfigFolder = "Redcliff Exploit"})
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

local Section = Tab:AddSection({
	Name = "Visual(For fix rejoin)"
})


Tab:AddButton({
	Name = "Delete TrainSystem",
	Callback = function()
     game:GetService("Workspace")["Redcliff City Map"].Subway.TrainSystem:Destroy()
  	end    
})



Tab:AddButton({
	Name = "Delete Backrooms",
	Callback = function()
     game:GetService("Workspace")["Redcliff City Map"]["Secret Areas"].Backrooms:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Delete Buildings",
	Callback = function()
     game:GetService("Workspace")["Redcliff City Map"].Buildings:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Delete Vehicles",
	Callback = function()
     game:GetService("Workspace")["_Vehicles"]:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Delete Map",
	Callback = function()
     game:GetService("Workspace")["Redcliff City Map"].Lighting:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"].Props:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"].Vegetation:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"].Interiors:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"].Border:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"].Teleporters:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"]["Secret Areas"]:Destroy()
	 game:GetService("Workspace")["Redcliff City Map"].Subway:Destroy()
  	end    
})


Tab:AddButton({
	Name = "Delete Foundation",
	Callback = function()
     game:GetService("Workspace")["Redcliff City Map"].Foundation:Destroy()
  	end    
})



Tab:AddButton({
	Name = "Delete System block",
	Callback = function()
     game:GetService("Workspace")["_CustomStreaming"]:Destroy()
  	end    
})









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
	Name = "Homes teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Tap on number home for tp"
})


--1
Tab:AddButton({
	Name = "1",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-220.085, 48.2279, 52.41); -- Change x,y,z to the coordinates you got
  	end    
})
--2
Tab:AddButton({
	Name = "2",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-344.504, 35.8983, 61.1426); -- Change x,y,z to the coordinates you got
  	end    
})

--3
Tab:AddButton({
	Name = "3",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-213.502, 35.8983, 9.02125); -- Change x,y,z to the coordinates you got
  	end    
})

--4
Tab:AddButton({
	Name = "4",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-344.035, 35.8983, 9.28282); -- Change x,y,z to the coordinates you got
  	end    
})























local Tab = Window:MakeTab({
	Name = "Event tp",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Spawn",
	Callback = function()
     local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-184.66, 21.3496, 694.146); -- Change x,y,z to the coordinates you got
  	end    
})

local Section = Tab:AddSection({
	Name = "teleport to event"
})

Tab:AddButton({
	Name = "Update event(Lyle,lyle, Crocodile)",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-491.12, -253.602, 591.854); -- Change x,y,z to the coordinates you got
  	end    
})

Tab:AddButton({
	Name = "Update event(Metro)",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-204.628, -277.703, 1711.3); -- Change x,y,z to the coordinates you got
  	end    
})

local Section = Tab:AddSection({
	Name = "teleport metro"
})
Tab:AddButton({
	Name = "Beach Station",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-199.198, -277.21, -964.675); -- Change x,y,z to the coordinates you got
  	end    
})
Tab:AddButton({
	Name = "Mall Station",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-200.151, -278.132, 196.83); -- Change x,y,z to the coordinates you got
  	end    
})
Tab:AddButton({
	Name = "AirPort Station",
	Callback = function()
      		local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-200.462, -276.863, 1343.01); -- Change x,y,z to the coordinates you got
  	end    
})

local Section = Tab:AddSection({
	Name = "Event(Backrooms)"
})

Tab:AddButton({
	Name = "Backrooms login",
	Callback = function()
     local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-484.378, 44.7245, -668.923); -- Change x,y,z to the coordinates you got
  	end    
})
Tab:AddButton({
	Name = "Backrooms exit",
	Callback = function()
     local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(-665.578, -25.3712, -559.979); -- Change x,y,z to the coordinates you got
  	end    
})




local Tab = Window:MakeTab({
	Name = "Animation",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})







Tab:AddButton({
	Name = "Sad God(+Telekinesis)",
	Callback = function()
     --[[
    FE SAD
    works on R6, R15, no hats needed
    controls: F to fly
]]

if "its sad enough to use MyWorld's reanimate" then
    local Vector3_101 = Vector3.new(1, 0, 1)
    local netless_Y = Vector3.new(0, 25.1, 0)
    local function getNetlessVelocity(realPartVelocity) --edit this if you have a better netless method
        local netlessVelocity = realPartVelocity * Vector3_101
        local mag = netlessVelocity.Magnitude
        if mag > 0.1 then
            netlessVelocity *= 100 / mag
        end
        netlessVelocity += netless_Y
        return netlessVelocity
    end
    local simradius = "shp" --simulation radius (net bypass) method
    --"shp" - sethiddenproperty
    --"ssr" - setsimulationradius
    --false - disable
    local noclipAllParts = true --set it to true if you want noclip
    local flingpart = "HumanoidRootPart" --the part that will be used to fling (ctrl + F "fling function")
    local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
    local newanimate = true --disables the animate script and enables after reanimation
    local discharscripts = true --disables all localScripts parented to your character before reanimation
    local R15toR6 = true --tries to convert your character to r6 if its r15
    local hatcollide = true --makes hats cancollide (credit to ShownApe) (works only with reanimate method 0)
    local humState16 = true --enables collisions for limbs before the humanoid dies (using hum:ChangeState)
    local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
    local hedafterneck = true --disable aligns for head and enable after neck is removed
    local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
    local method = 3 --reanimation method
    --methods:
    --0 - breakJoints (takes [loadtime] seconds to laod)
    --1 - limbs
    --2 - limbs + anti respawn
    --3 - limbs + breakJoints after [loadtime] seconds
    --4 - remove humanoid + breakJoints
    --5 - remove humanoid + limbs
    local alignmode = 2 --AlignPosition mode
    --modes:
    --1 - AlignPosition rigidity enabled true
    --2 - 2 AlignPositions rigidity enabled both true and false
    --3 - AlignPosition rigidity enabled false
    
    local lp = game:GetService("Players").LocalPlayer
    local rs = game:GetService("RunService")
    local stepped = rs.Stepped
    local heartbeat = rs.Heartbeat
    local renderstepped = rs.RenderStepped
    local sg = game:GetService("StarterGui")
    local ws = game:GetService("Workspace")
    local cf = CFrame.new
    local v3 = Vector3.new
    local v3_0 = v3(0, 0, 0)
    local inf = math.huge
    
    local c = lp.Character
    
    if not (c and c.Parent) then
    	return
    end
    
    c.Destroying:Connect(function()
    	c = nil
    end)
    
    local function gp(parent, name, className)
    	if typeof(parent) == "Instance" then
    		for i, v in pairs(parent:GetChildren()) do
    			if (v.Name == name) and v:IsA(className) then
    				return v
    			end
    		end
    	end
    	return nil
    end
    
    local function align(Part0, Part1)
    	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
    
    	local att0 = Instance.new("Attachment", Part0)
    	att0.Orientation = v3_0
    	att0.Position = v3_0
    	att0.Name = "att0_" .. Part0.Name
    	local att1 = Instance.new("Attachment", Part1)
    	att1.Orientation = v3_0
    	att1.Position = v3_0
    	att1.Name = "att1_" .. Part1.Name
    
    	if (alignmode == 1) or (alignmode == 2) then
    		local ape = Instance.new("AlignPosition", att0)
    		ape.ApplyAtCenterOfMass = false
    		ape.MaxForce = inf
    		ape.MaxVelocity = inf
    		ape.ReactionForceEnabled = false
    		ape.Responsiveness = 200
    		ape.Attachment1 = att1
    		ape.Attachment0 = att0
    		ape.Name = "AlignPositionRtrue"
    		ape.RigidityEnabled = true
    	end
    
    	if (alignmode == 2) or (alignmode == 3) then
    		local apd = Instance.new("AlignPosition", att0)
    		apd.ApplyAtCenterOfMass = false
    		apd.MaxForce = inf
    		apd.MaxVelocity = inf
    		apd.ReactionForceEnabled = false
    		apd.Responsiveness = 200
    		apd.Attachment1 = att1
    		apd.Attachment0 = att0
    		apd.Name = "AlignPositionRfalse"
    		apd.RigidityEnabled = false
    	end
    
    	local ao = Instance.new("AlignOrientation", att0)
    	ao.MaxAngularVelocity = inf
    	ao.MaxTorque = inf
    	ao.PrimaryAxisOnly = false
    	ao.ReactionTorqueEnabled = false
    	ao.Responsiveness = 200
    	ao.Attachment1 = att1
    	ao.Attachment0 = att0
    	ao.RigidityEnabled = false
    
    	if type(getNetlessVelocity) == "function" then
    	    local realVelocity = v3_0
            local steppedcon = stepped:Connect(function()
                Part0.Velocity = realVelocity
            end)
            local heartbeatcon = heartbeat:Connect(function()
                realVelocity = Part0.Velocity
                Part0.Velocity = getNetlessVelocity(realVelocity)
            end)
            Part0.Destroying:Connect(function()
                Part0 = nil
                steppedcon:Disconnect()
                heartbeatcon:Disconnect()
            end)
        end
    end
    
    local function respawnrequest()
    	local ccfr = ws.CurrentCamera.CFrame
    	local c = lp.Character
    	lp.Character = nil
    	lp.Character = c
    	local con = nil
    	con = ws.CurrentCamera.Changed:Connect(function(prop)
    	    if (prop ~= "Parent") and (prop ~= "CFrame") then
    	        return
    	    end
    	    ws.CurrentCamera.CFrame = ccfr
    	    con:Disconnect()
        end)
    end
    
    local destroyhum = (method == 4) or (method == 5)
    local breakjoints = (method == 0) or (method == 4)
    local antirespawn = (method == 0) or (method == 2) or (method == 3)
    
    hatcollide = hatcollide and (method == 0)
    
    addtools = addtools and gp(lp, "Backpack", "Backpack")
    
    local fenv = getfenv()
    local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.set_hidden_prop or fenv.sethiddenprop
    local ssr = fenv.setsimulationradius or fenv.set_simulation_radius or fenv.set_sim_radius or fenv.setsimradius or fenv.set_simulation_rad or fenv.setsimulationrad
    
    if shp and (simradius == "shp") then
    	spawn(function()
    		while c and heartbeat:Wait() do
    			shp(lp, "SimulationRadius", inf)
    		end
    	end)
    elseif ssr and (simradius == "ssr") then
    	spawn(function()
    		while c and heartbeat:Wait() do
    			ssr(inf)
    		end
    	end)
    end
    
    antiragdoll = antiragdoll and function(v)
    	if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
    		v.Parent = nil
    	end
    end
    
    if antiragdoll then
    	for i, v in pairs(c:GetDescendants()) do
    		antiragdoll(v)
    	end
    	c.DescendantAdded:Connect(antiragdoll)
    end
    
    if antirespawn then
    	respawnrequest()
    end
    
    if method == 0 then
    	wait(loadtime)
    	if not c then
    		return
    	end
    end
    
    if discharscripts then
    	for i, v in pairs(c:GetChildren()) do
    		if v:IsA("LocalScript") then
    			v.Disabled = true
    		end
    	end
    elseif newanimate then
    	local animate = gp(c, "Animate", "LocalScript")
    	if animate and (not animate.Disabled) then
    		animate.Disabled = true
    	else
    		newanimate = false
    	end
    end
    
    if addtools then
    	for i, v in pairs(addtools:GetChildren()) do
    		if v:IsA("Tool") then
    			v.Parent = c
    		end
    	end
    end
    
    pcall(function()
    	settings().Physics.AllowSleep = false
    	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
    end)
    
    local OLDscripts = {}
    
    for i, v in pairs(c:GetDescendants()) do
    	if v.ClassName == "Script" then
    		table.insert(OLDscripts, v)
    	end
    end
    
    local scriptNames = {}
    
    for i, v in pairs(c:GetDescendants()) do
    	if v:IsA("BasePart") then
    		local newName = tostring(i)
    		local exists = true
    		while exists do
    			exists = false
    			for i, v in pairs(OLDscripts) do
    				if v.Name == newName then
    					exists = true
    				end
    			end
    			if exists then
    				newName = newName .. "_"    
    			end
    		end
    		table.insert(scriptNames, newName)
    		Instance.new("Script", v).Name = newName
    	end
    end
    
    c.Archivable = true
    local hum = c:FindFirstChildOfClass("Humanoid")
    if hum then
    	for i, v in pairs(hum:GetPlayingAnimationTracks()) do
    		v:Stop()
    	end
    end
    local cl = c:Clone()
    if hum and humState16 then
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        if destroyhum then
            wait(1.6)
        end
    end
    if hum and hum.Parent and destroyhum then
        hum:Destroy()
    end
    
    if not c then
        return
    end
    
    local head = gp(c, "Head", "BasePart")
    local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
    local root = gp(c, "HumanoidRootPart", "BasePart")
    if hatcollide and c:FindFirstChildOfClass("Accessory") then
        local anything = c:FindFirstChildOfClass("BodyColors") or gp(c, "Health", "Script")
        if not (torso and root and anything) then
            return
        end
        torso:Destroy()
        root:Destroy()
        if shp then
            for i,v in pairs(c:GetChildren()) do
                if v:IsA("Accessory") then
                    shp(v, "BackendAccoutrementState", 0)
                end 
            end
        end
        anything:Destroy()
    end
    
    for i, v in pairs(cl:GetDescendants()) do
    	if v:IsA("BasePart") then
    		v.Transparency = 1
    		v.Anchored = false
    	end
    end
    
    local model = Instance.new("Model", c)
    model.Name = model.ClassName
    
    model.Destroying:Connect(function()
    	model = nil
    end)
    
    for i, v in pairs(c:GetChildren()) do
    	if v ~= model then
    		if addtools and v:IsA("Tool") then
    			for i1, v1 in pairs(v:GetDescendants()) do
    				if v1 and v1.Parent and v1:IsA("BasePart") then
    					local bv = Instance.new("BodyVelocity", v1)
    					bv.Velocity = v3_0
    					bv.MaxForce = v3(1000, 1000, 1000)
    					bv.P = 1250
    					bv.Name = "bv_" .. v.Name
    				end
    			end
    		end
    		v.Parent = model
    	end
    end
    
    if breakjoints then
    	model:BreakJoints()
    else
    	if head and torso then
    		for i, v in pairs(model:GetDescendants()) do
    			if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
    				local save = false
    				if (v.Part0 == torso) and (v.Part1 == head) then
    					save = true
    				end
    				if (v.Part0 == head) and (v.Part1 == torso) then
    					save = true
    				end
    				if save then
    					if hedafterneck then
    						hedafterneck = v
    					end
    				else
    					v:Destroy()
    				end
    			end
    		end
    	end
    	if method == 3 then
    		spawn(function()
    			wait(loadtime)
    			if model then
    				model:BreakJoints()
    			end
    		end)
    	end
    end
    
    cl.Parent = c
    for i, v in pairs(cl:GetChildren()) do
    	v.Parent = c
    end
    cl:Destroy()
    
    local noclipmodel = (noclipAllParts and c) or model
    local noclipcon = nil
    local function uncollide()
    	if noclipmodel then
    		for i, v in pairs(noclipmodel:GetDescendants()) do
    		    if v:IsA("BasePart") then
    			    v.CanCollide = false
    		    end
    		end
    	else
    		noclipcon:Disconnect()
    	end
    end
    noclipcon = stepped:Connect(uncollide)
    uncollide()
    
    for i, scr in pairs(model:GetDescendants()) do
    	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
    		local Part0 = scr.Parent
    		if Part0:IsA("BasePart") then
    			for i1, scr1 in pairs(c:GetDescendants()) do
    				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
    					local Part1 = scr1.Parent
    					if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
    						align(Part0, Part1)
    						break
    					end
    				end
    			end
    		end
    	end
    end
    
    if (typeof(hedafterneck) == "Instance") and head then
    	local aligns = {}
    	local con = nil
    	con = hedafterneck.Changed:Connect(function(prop)
    	    if (prop == "Parent") and not hedafterneck.Parent then
    	        con:Disconnect()
        		for i, v in pairs(aligns) do
        			v.Enabled = true
        		end
    		end
    	end)
    	for i, v in pairs(head:GetDescendants()) do
    		if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
    			i = tostring(i)
    			aligns[i] = v
    			v.Destroying:Connect(function()
    			    aligns[i] = nil
    			end)
    			v.Enabled = false
    		end
    	end
    end
    
    for i, v in pairs(c:GetDescendants()) do
    	if v and v.Parent then
    		if v.ClassName == "Script" then
    			if table.find(scriptNames, v.Name) then
    				v:Destroy()
    			end
    		elseif not v:IsDescendantOf(model) then
    			if v:IsA("Decal") then
    				v.Transparency = 1
    			elseif v:IsA("ForceField") then
    				v.Visible = false
    			elseif v:IsA("Sound") then
    				v.Playing = false
    			elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
    				v.Enabled = false
    			end
    		end
    	end
    end
    
    if newanimate then
    	local animate = gp(c, "Animate", "LocalScript")
    	if animate then
    		animate.Disabled = false
    	end
    end
    
    if addtools then
    	for i, v in pairs(c:GetChildren()) do
    		if v:IsA("Tool") then
    			v.Parent = addtools
    		end
    	end
    end
    
    local hum0 = model:FindFirstChildOfClass("Humanoid")
    if hum0 then
        hum0.Destroying:Connect(function()
            hum0 = nil
        end)
    end
    
    local hum1 = c:FindFirstChildOfClass("Humanoid")
    if hum1 then
        hum1.Destroying:Connect(function()
            hum1 = nil
        end)
    end
    
    if hum1 then
    	ws.CurrentCamera.CameraSubject = hum1
    	local camSubCon = nil
    	local function camSubFunc()
    		camSubCon:Disconnect()
    		if c and hum1 then
    			ws.CurrentCamera.CameraSubject = hum1
    		end
    	end
    	camSubCon = renderstepped:Connect(camSubFunc)
    	if hum0 then
    		hum0.Changed:Connect(function(prop)
    			if hum1 and (prop == "Jump") then
    				hum1.Jump = hum0.Jump
    			end
    		end)
    	else
    		respawnrequest()
    	end
    end
    
    local rb = Instance.new("BindableEvent", c)
    rb.Event:Connect(function()
    	rb:Destroy()
    	sg:SetCore("ResetButtonCallback", true)
    	if destroyhum then
    		c:BreakJoints()
    		return
    	end
    	if hum0 and (hum0.Health > 0) then
    		model:BreakJoints()
    		hum0.Health = 0
    	end
    	if antirespawn then
    	    respawnrequest()
    	end
    end)
    sg:SetCore("ResetButtonCallback", rb)
    
    spawn(function()
    	while c do
    		if hum0 and hum1 then
    			hum1.Jump = hum0.Jump
    		end
    		wait()
    	end
    	sg:SetCore("ResetButtonCallback", true)
    end)
    
    R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
    if R15toR6 then
        local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "LowerTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
    	if part then
    	    local cfr = part.CFrame
    		local R6parts = { 
    			head = {
    				Name = "Head",
    				Size = v3(2, 1, 1),
    				R15 = {
    					Head = 0
    				}
    			},
    			torso = {
    				Name = "Torso",
    				Size = v3(2, 2, 1),
    				R15 = {
    					UpperTorso = 0.2,
    					LowerTorso = -0.8
    				}
    			},
    			root = {
    				Name = "HumanoidRootPart",
    				Size = v3(2, 2, 1),
    				R15 = {
    					HumanoidRootPart = 0
    				}
    			},
    			leftArm = {
    				Name = "Left Arm",
    				Size = v3(1, 2, 1),
    				R15 = {
    					LeftHand = -0.85,
    					LeftLowerArm = -0.2,
    					LeftUpperArm = 0.4
    				}
    			},
    			rightArm = {
    				Name = "Right Arm",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightHand = -0.85,
    					RightLowerArm = -0.2,
    					RightUpperArm = 0.4
    				}
    			},
    			leftLeg = {
    				Name = "Left Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					LeftFoot = -0.85,
    					LeftLowerLeg = -0.15,
    					LeftUpperLeg = 0.6
    				}
    			},
    			rightLeg = {
    				Name = "Right Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightFoot = -0.85,
    					RightLowerLeg = -0.15,
    					RightUpperLeg = 0.6
    				}
    			}
    		}
    		for i, v in pairs(c:GetChildren()) do
    			if v:IsA("BasePart") then
    				for i1, v1 in pairs(v:GetChildren()) do
    					if v1:IsA("Motor6D") then
    						v1.Part0 = nil
    					end
    				end
    			end
    		end
    		part.Archivable = true
    		for i, v in pairs(R6parts) do
    			local part = part:Clone()
    			part:ClearAllChildren()
    			part.Name = v.Name
    			part.Size = v.Size
    			part.CFrame = cfr
    			part.Anchored = false
    			part.Transparency = 1
    			part.CanCollide = false
    			for i1, v1 in pairs(v.R15) do
    				local R15part = gp(c, i1, "BasePart")
    				local att = gp(R15part, "att1_" .. i1, "Attachment")
    				if R15part then
    					local weld = Instance.new("Weld", R15part)
    					weld.Name = "Weld_" .. i1
    					weld.Part0 = part
    					weld.Part1 = R15part
    					weld.C0 = cf(0, v1, 0)
    					weld.C1 = cf(0, 0, 0)
    					R15part.Massless = true
    					R15part.Name = "R15_" .. i1
    					R15part.Parent = part
    					if att then
    						att.Parent = part
    						att.Position = v3(0, v1, 0)
    					end
    				end
    			end
    			part.Parent = c
    			R6parts[i] = part
    		end
    		local R6joints = {
    			neck = {
    				Parent = R6parts.torso,
    				Name = "Neck",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.head,
    				C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
    				C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    			},
    			rootJoint = {
    				Parent = R6parts.root,
    				Name = "RootJoint" ,
    				Part0 = R6parts.root,
    				Part1 = R6parts.torso,
    				C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
    				C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    			},
    			rightShoulder = {
    				Parent = R6parts.torso,
    				Name = "Right Shoulder",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.rightArm,
    				C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    				C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    			},
    			leftShoulder = {
    				Parent = R6parts.torso,
    				Name = "Left Shoulder",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.leftArm,
    				C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    				C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    			},
    			rightHip = {
    				Parent = R6parts.torso,
    				Name = "Right Hip",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.rightLeg,
    				C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    				C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    			},
    			leftHip = {
    				Parent = R6parts.torso,
    				Name = "Left Hip" ,
    				Part0 = R6parts.torso,
    				Part1 = R6parts.leftLeg,
    				C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    				C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    			}
    		}
    		for i, v in pairs(R6joints) do
    			local joint = Instance.new("Motor6D")
    			for prop, val in pairs(v) do
    				joint[prop] = val
    			end
    			R6joints[i] = joint
    		end
    		hum1.RigType = Enum.HumanoidRigType.R6
    		hum1.HipHeight = 0
    	end
    end
    
    --fling function
    --usage: fling([part or CFrame or Vector3], [fling duration (seconds)], [rotation velocity (Vector3)])
    
    local flingpart0 = gp(model, flingpart, "BasePart")
    local flingpart1 = gp(c, flingpart, "BasePart")
    
    local fling = function() end
    if flingpart0 and flingpart1 then
        flingpart0.Destroying:Connect(function()
            flingpart0 = nil
            fling = function() end
        end)
        flingpart1.Destroying:Connect(function()
            flingpart1 = nil
            fling = function() end
        end)
        --flingpart1.Archivable = true
        local att0 = gp(flingpart0, "att0_" .. flingpart0.Name, "Attachment")
        local att1 = gp(flingpart1, "att1_" .. flingpart1.Name, "Attachment")
        if att0 and att1 then
            fling = function(target, duration, rotVelocity)
                if (typeof(target) == "Instance" and target:IsA("BasePart")) or (typeof(target) == "CFrame") then
                    target = target.Position
                elseif typeof(target) ~= "Vector3" then
                    return
                end
                if type(duration) ~= number then
                    duration = tonumber(duration) or 0.5
                end
                if typeof(rotVelocity) ~= "Vector3" then
                    rotVelocity = v3(20000, 20000, 20000)
                end
                if not (target and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                local flingpart = flingpart0:Clone()
                flingpart.Transparency = 1
                flingpart.Size = v3(0.01, 0.01, 0.01)
                flingpart.CanCollide = false
                flingpart.Name = "flingpart_" .. flingpart0.Name
                flingpart.Anchored = true
                flingpart.Destroying:Connect(function()
                    flingpart = nil
                end)
                flingpart.Parent = flingpart1
                if flingpart0.Transparency > 0.5 then
                    flingpart0.Transparency = 0.5
                end
                att1.Parent = flingpart
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = false
                    end
                end
                local con = nil
                con = heartbeat:Connect(function()
                    if target and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = rotVelocity
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                local steppedRotVel = v3(
                    ((target.X > 0) and -1) or 1,
                    ((target.Y > 0) and -1) or 1,
                    ((target.Z > 0) and -1) or 1
                )
                local con = nil
                con = stepped:Connect(function()
                    if target and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = steppedRotVel
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                wait(duration)
                target = nil
                if not (flingpart and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                flingpart0.RotVelocity = v3_0
                att1.Parent = flingpart1
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = true
                    end
                end
                flingpart:Destroy()
            end
        end
    end
end

--end of reanimate

local lp = game:GetService("Players").LocalPlayer

local ws = game:GetService("Workspace")

local c = lp.Character
if not (c and c.Parent) then
	return print("character not found")
end
c:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (c and c.Parent) then
        c = nil
    end
end)

--getPart function

local function gp(parent, name, className)
	local ret = nil
	pcall(function()
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
				break
			end
		end
	end)
	return ret
end

--check if reanimate loaded

local model = gp(c, "Model", "Model")
if not model then return print("model not found") end

--find body parts

local head = gp(c, "Head", "BasePart")
if not head then return print("head not found") end

local torso = gp(c, "Torso", "BasePart")
if not torso then return print("torso not found") end

local humanoidRootPart = gp(c, "HumanoidRootPart", "BasePart")
if not humanoidRootPart then return print("humanoid root part not found") end

local leftArm = gp(c, "Left Arm", "BasePart")
if not leftArm then return print("left arm not found") end

local rightArm = gp(c, "Right Arm", "BasePart")
if not rightArm then return print("right arm not found") end

local leftLeg = gp(c, "Left Leg", "BasePart")
if not leftLeg then return print("left leg not found") end

local rightLeg = gp(c, "Right Leg", "BasePart")
if not rightLeg then return print("right leg not found") end

--find rig joints

local neck = gp(torso, "Neck", "Motor6D")
if not neck then return print("neck not found") end

local rootJoint = gp(humanoidRootPart, "RootJoint", "Motor6D")
if not rootJoint then return print("root joint not found") end

local leftShoulder = gp(torso, "Left Shoulder", "Motor6D")
if not leftShoulder then return print("left shoulder not found") end

local rightShoulder = gp(torso, "Right Shoulder", "Motor6D")
if not rightShoulder then return print("right shoulder not found") end

local leftHip = gp(torso, "Left Hip", "Motor6D")
if not leftHip then return print("left hip not found") end

local rightHip = gp(torso, "Right Hip", "Motor6D")
if not rightHip then return print("right hip not found") end

--humanoid

local hum = c:FindFirstChildOfClass("Humanoid")
if not hum then return print("humanoid not found") end

local animate = gp(c, "Animate", "LocalScript")
if animate then
	animate.Disabled = true
end

for i, v in pairs(hum:GetPlayingAnimationTracks()) do
	v:Stop()
end

--60 fps

local fps = 60
local event = Instance.new("BindableEvent", c)
event.Name = "60 fps"
local floor = math.floor
fps = 1 / fps
local tf = 0
local con = nil
con = game:GetService("RunService").RenderStepped:Connect(function(s)
	if not c then
		con:Disconnect()
		return
	end
	tf += s
	if tf >= fps then
		for i=1, floor(tf / fps) do
			event:Fire(c)
		end
		tf = 0
	end
end)
local event = event.Event

local function stopIfRemoved(instance)
    if not (instance and instance.Parent) then
        c = nil
        return
    end
    instance:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (instance and instance.Parent) then
            c = nil
        end
    end)
end
stopIfRemoved(c)
stopIfRemoved(hum)
for i, v in pairs({head, torso, leftArm, rightArm, leftLeg, rightLeg, humanoidRootPart}) do
    stopIfRemoved(v)
end
for i, v in pairs({neck, rootJoint, leftShoulder, rightShoulder, leftHip, rightHip}) do
    stopIfRemoved(v)
end
if not c then
    return
end
uis = game:GetService("UserInputService")
local flying = false
uis.InputBegan:Connect(function(keycode)
    if uis:GetFocusedTextBox() then
        return
    end
	keycode = keycode.KeyCode
	if keycode == Enum.KeyCode.F then
	    flying = not flying
	end
end)
hum.WalkSpeed = 50
hum.HipHeight = 5
hum.JumpPower = 0
hum.CameraOffset = Vector3.new(0, -3, 0)
local flyspeed = 1
local cf, v3, euler, sin, sine = CFrame.new, Vector3.new, CFrame.fromEulerAnglesXYZ, math.sin, 0
while event:Wait() do
    sine += 1
    hum.PlatformStand = flying
    humanoidRootPart.Anchored = flying
    if flying then
        humanoidRootPart.Velocity = v3(0, 0, 0)
        local flycf = humanoidRootPart.CFrame
        local fb = ((uis:IsKeyDown("W") and flyspeed) or 0) + ((uis:IsKeyDown("S") and -flyspeed) or 0)
    	local lr = ((uis:IsKeyDown("A") and -flyspeed) or 0) + ((uis:IsKeyDown("D") and flyspeed) or 0)
    	local camcf = ws.CurrentCamera.CFrame
    	flycf += camcf.lookVector * fb
    	flycf += camcf.rightVector * lr
    	humanoidRootPart.CFrame = flycf
    end
    if humanoidRootPart.Velocity.Y < -20 then
        humanoidRootPart.Velocity = v3(0, -20, 0)
    end
    if humanoidRootPart.Velocity.Magnitude > 1 then -- walk
        neck.C0 = neck.C0:Lerp(cf(0, 1, 0) * euler(-1.2217304763960306, 0.17453292519943295 * sin(sine * 0.025), -3.1590459461097367), 0.2) 
        rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -2 + 0.5 * sin(sine * 0.05), 2) * euler(-2.443460952792061 + -0.08726646259971647 * sin((sine + 10) * 0.05), 0.05235987755982989 * sin(sine * 0.025), -3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.025)), 0.2) 
        leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), -1.5882496193148399 + -0.17453292519943295 * sin((sine + 20) * 0.05), -2.0943951023931953), 0.2) 
        rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), 1.5707963267948966 + 0.17453292519943295 * sin((sine + 20) * 0.05), 2.0943951023931953), 0.2) 
        leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1, 0) * euler(0, -1.5882496193148399, 0.3490658503988659 + -0.17453292519943295 * sin((sine + 30) * 0.05)), 0.2) 
        rightHip.C0 = rightHip.C0:Lerp(cf(1, -1, 0) * euler(0, 1.5707963267948966, -0.3490658503988659 + 0.17453292519943295 * sin((sine + 40) * 0.05)), 0.2) 
    else
        neck.C0 = neck.C0:Lerp(cf(0, 1, 0) * euler(-2.0943951023931953 + -0.2617993877991494 * sin((sine + 20) * 0.05), 0.3490658503988659 * sin(sine * 0.025), -3.1590459461097367), 0.2) 
        rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -2 + 1 * sin(sine * 0.05), 0) * euler(-2.792526803190927 + -0.08726646259971647 * sin((sine + 10) * 0.05), 0.05235987755982989 * sin(sine * 0.025), -3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.025)), 0.2) 
        leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), -1.5882496193148399 + -0.17453292519943295 * sin((sine + 20) * 0.05), -1.2217304763960306), 0.2) 
        rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 0.5, 0) * euler(-0.12217304763960307 * sin((sine + 25) * 0.05), 1.5707963267948966 + 0.17453292519943295 * sin((sine + 20) * 0.05), 1.2217304763960306), 0.2) 
        leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1, 0) * euler(0, -1.5882496193148399, -1.2217304763960306 + -0.17453292519943295 * sin((sine + 30) * 0.05)), 0.2) 
        rightHip.C0 = rightHip.C0:Lerp(cf(1, -1, 0) * euler(0, 1.5707963267948966, 1.2217304763960306 + 0.17453292519943295 * sin((sine + 40) * 0.05)), 0.2) 
    end
end
  	end    
})

Tab:AddLabel("Help Telekinesis")
Tab:AddLabel("Q & E - bring closer and further")
Tab:AddLabel("R - Roates Block")
Tab:AddLabel("T - Tilts Block")
Tab:AddLabel("Y - Throws Block")

Tab:AddButton({
	Name = "Telekinesis(Car)",
	Callback = function()
	-- Q & E - bring closer and further
	-- R - Roates Block
	-- T - Tilts Block
	-- Y - Throws Block
	local function a(b, c)
		local d = getfenv(c)
		local e =
			setmetatable(
			{},
			{__index = function(self, f)
					if f == "script" then
						return b
					else
						return d[f]
					end
				end}
		)
		setfenv(c, e)
		return c
	end
	local g = {}
	local h = Instance.new("Model", game:GetService("Lighting"))
	local i = Instance.new("Tool")
	local j = Instance.new("Part")
	local k = Instance.new("Script")
	local l = Instance.new("LocalScript")
	local m = sethiddenproperty or set_hidden_property
	i.Name = "Telekinesis"
	i.Parent = h
	i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
	i.GripForward = Vector3.new(-0, -1, -0)
	i.GripRight = Vector3.new(0, 0, 1)
	i.GripUp = Vector3.new(1, 0, 0)
	j.Name = "Handle"
	j.Parent = i
	j.CFrame = CFrame.new(-17.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	j.Orientation = Vector3.new(0, 180, 90)
	j.Position = Vector3.new(-17.2635937, 15.4915619, 46)
	j.Rotation = Vector3.new(-180, 0, -90)
	j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	j.Transparency = 1
	j.Size = Vector3.new(1, 1.20000005, 1)
	j.BottomSurface = Enum.SurfaceType.Weld
	j.BrickColor = BrickColor.new("Really black")
	j.Material = Enum.Material.Metal
	j.TopSurface = Enum.SurfaceType.Smooth
	j.brickColor = BrickColor.new("Really black")
	k.Name = "LineConnect"
	k.Parent = i
	table.insert(
		g,
		a(
			k,
			function()
				wait()
				local n = script.Part2
				local o = script.Part1.Value
				local p = script.Part2.Value
				local q = script.Par.Value
				local color = script.Color
				local r = Instance.new("Part")
				r.TopSurface = 0
				r.BottomSurface = 0
				r.Reflectance = .5
				r.Name = "Laser"
				r.Locked = true
				r.CanCollide = false
				r.Anchored = true
				r.formFactor = 0
				r.Size = Vector3.new(1, 1, 1)
				local s = Instance.new("BlockMesh")
				s.Parent = r
				while true do
					if n.Value == nil then
						break
					end
					if o == nil or p == nil or q == nil then
						break
					end
					if o.Parent == nil or p.Parent == nil then
						break
					end
					if q.Parent == nil then
						break
					end
					local t = CFrame.new(o.Position, p.Position)
					local dist = (o.Position - p.Position).magnitude
					r.Parent = q
					r.BrickColor = color.Value.BrickColor
					r.Reflectance = color.Value.Reflectance
					r.Transparency = color.Value.Transparency
					r.CFrame = CFrame.new(o.Position + t.lookVector * dist / 2)
					r.CFrame = CFrame.new(r.Position, p.Position)
					s.Scale = Vector3.new(.25, .25, dist)
					wait()
				end
				r:remove()
				script:remove()
			end
		)
	)
	k.Disabled = true
	l.Name = "MainScript"
	l.Parent = i
	table.insert(
		g,
		a(
			l,
			function()
				wait()
				tool = script.Parent
				lineconnect = tool.LineConnect
				object = nil
				mousedown = false
				found = false
				BP = Instance.new("BodyPosition")
				BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
				BP.P = BP.P * 1.1
				dist = nil
				point = Instance.new("Part")
				point.Locked = true
				point.Anchored = true
				point.formFactor = 0
				point.Shape = 0
				point.BrickColor = BrickColor.Black()
				point.Size = Vector3.new(1, 1, 1)
				point.CanCollide = false
				local s = Instance.new("SpecialMesh")
				s.MeshType = "Sphere"
				s.Scale = Vector3.new(.7, .7, .7)
				s.Parent = point
				handle = tool.Handle
				front = tool.Handle
				color = tool.Handle
				objval = nil
				local u = false
				local v = BP:clone()
				v.maxForce = Vector3.new(30000, 30000, 30000)
				function LineConnect(o, p, q)
					local w = Instance.new("ObjectValue")
					w.Value = o
					w.Name = "Part1"
					local x = Instance.new("ObjectValue")
					x.Value = p
					x.Name = "Part2"
					local y = Instance.new("ObjectValue")
					y.Value = q
					y.Name = "Par"
					local z = Instance.new("ObjectValue")
					z.Value = color
					z.Name = "Color"
					local A = lineconnect:clone()
					A.Disabled = false
					w.Parent = A
					x.Parent = A
					y.Parent = A
					z.Parent = A
					A.Parent = workspace
					if p == object then
						objval = x
					end
				end
				function onButton1Down(B)
					if mousedown == true then
						return
					end
					mousedown = true
					coroutine.resume(
						coroutine.create(
							function()
								local C = point:clone()
								C.Parent = tool
								LineConnect(front, C, workspace)
								while mousedown == true do
									C.Parent = tool
									if object == nil then
										if B.Target == nil then
											local t = CFrame.new(front.Position, B.Hit.p)
											C.CFrame = CFrame.new(front.Position + t.lookVector * 1000)
										else
											C.CFrame = CFrame.new(B.Hit.p)
										end
									else
										LineConnect(front, object, workspace)
										break
									end
									wait()
								end
								C:remove()
							end
						)
					)
					while mousedown == true do
						if B.Target ~= nil then
							local D = B.Target
							if D.Anchored == false then
								object = D
								dist = (object.Position - front.Position).magnitude
								break
							end
						end
						wait()
					end
					while mousedown == true do
						if object.Parent == nil then
							break
						end
						local t = CFrame.new(front.Position, B.Hit.p)
						BP.Parent = object
						BP.position = front.Position + t.lookVector * dist
						wait()
					end
					BP:remove()
					object = nil
					objval.Value = nil
				end
				function onKeyDown(E, B)
					local E = E:lower()
					local F = false
					if E == "q" then
						if dist >= 5 then
							dist = dist - 10
						end
					end
					if E == "r" then
						if object == nil then
							return
						end
						for G, H in pairs(object:children()) do
							if H.className == "BodyGyro" then
								return nil
							end
						end
						BG = Instance.new("BodyGyro")
						BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
						BG.cframe = CFrame.new(object.CFrame.p)
						BG.Parent = object
						repeat
							wait()
						until object.CFrame == CFrame.new(object.CFrame.p)
						BG.Parent = nil
						if object == nil then
							return
						end
						for G, H in pairs(object:children()) do
							if H.className == "BodyGyro" then
								H.Parent = nil
							end
						end
						object.Velocity = Vector3.new(0, 0, 0)
						object.RotVelocity = Vector3.new(0, 0, 0)
						object.Orientation = Vector3.new(0, 0, 0)
					end
					if E == "e" then
						dist = dist + 10
					end
					if E == "t" then
						if dist ~= 10 then
							dist = 10
						end
					end
					if E == "y" then
						if dist ~= 200 then
							dist = 200
						end
					end
					if E == "=" then
						BP.P = BP.P * 1.5
					end
					if E == "-" then
						BP.P = BP.P * 0.5
					end
				end
				function onEquipped(B)
					keymouse = B
					local I = tool.Parent
					human = I.Humanoid
					human.Changed:connect(
						function()
							if human.Health == 0 then
								mousedown = false
								BP:remove()
								point:remove()
								tool:remove()
							end
						end
					)
					B.Button1Down:connect(
						function()
							onButton1Down(B)
						end
					)
					B.Button1Up:connect(
						function()
							mousedown = false
						end
					)
					B.KeyDown:connect(
						function(E)
							onKeyDown(E, B)
						end
					)
					B.Icon = "rbxasset://textures\\GunCursor.png"
				end
				tool.Equipped:connect(onEquipped)
			end
		)
	)
	for J, H in pairs(h:GetChildren()) do
		H.Parent = game:GetService("Players").LocalPlayer.Backpack
		pcall(
			function()
				H:MakeJoints()
			end
		)
	end
	h:Destroy()
	for J, H in pairs(g) do
		spawn(
			function()
				pcall(H)
			end
		)
	end
  	end    
})

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Credits:AddParagraph("Made by:","Brinen & Argetnar & Doku.")
wait(0.5)
Credits:AddParagraph("Script on Redcliff City RP","Version 1.2")

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
