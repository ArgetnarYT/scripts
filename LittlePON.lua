local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("LittlePON V1 Test Version", "RJTheme4")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("esp")
Section:NewButton("Esp on", "Shows other players through walls, etc.", function()

Notification:Notify(
    {Title = "Script", Description = "ESP ON"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
--// Locals:
local workspace = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera

--// Settings:
local on = true -- Use this if your making gui

local Box_Color = Color3.fromRGB(0, 255, 50)
local Box_Thickness = 1.4
local Box_Transparency = 1 -- 1 Visible, 0 Not Visible

local Tracers = true
local Tracer_Color = Color3.fromRGB(0, 255, 50)
local Tracer_Thickness = 1.4
local Tracer_Transparency = 1 -- 1 Visible, 0 Not Visible

local Autothickness = false -- Makes screen less encumbered

local Team_Check = false
local red = Color3.fromRGB(227, 52, 52)
local green = Color3.fromRGB(88, 217, 24)

local function NewLine()
    local line = Drawing.new("Line")
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(1, 1)
    line.Color = Box_Color
    line.Thickness = Box_Thickness
    line.Transparency = Box_Transparency
    return line
end

--// Main Function:
for i, v in pairs(game.Players:GetChildren()) do
    --// Lines for 3D box (12)
    local lines = {
        line1 = NewLine(),
        line2 = NewLine(),
        line3 = NewLine(),
        line4 = NewLine(),
        line5 = NewLine(),
        line6 = NewLine(),
        line7 = NewLine(),
        line8 = NewLine(),
        line9 = NewLine(),
        line10 = NewLine(),
        line11 = NewLine(),
        line12 = NewLine(),
        Tracer = NewLine()
    }

    lines.Tracer.Color = Tracer_Color
    lines.Tracer.Thickness = Tracer_Thickness
    lines.Tracer.Transparency = Tracer_Transparency

    --// Updates ESP (lines) in render loop
    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if on and v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= player.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if vis then
                    local Scale = v.Character.Head.Size.Y/2
                    local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                    local Top1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                    local Top2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                    local Top3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                    local Top4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

                    --// Top:
                    lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                    lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                    lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                    lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                    lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                    lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                    --// Bottom:
                    lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                    lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                    lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                    lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

                    --//S ides:
                    lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                    lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line12.To = Vector2.new(Top4.X, Top4.Y)

                    --// Tracer:
                    if Tracers then
                        local trace = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)

                        lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
                        lines.Tracer.To = Vector2.new(trace.X, trace.Y)
                    end

                    --// Teamcheck:
                    if Team_Check then
                        if v.TeamColor == player.TeamColor then
                            for u, x in pairs(lines) do
                                x.Color = green
                            end
                        else 
                            for u, x in pairs(lines) do
                                x.Color = red
                            end
                        end
                    end

                    --// Autothickness:
                    if Autothickness then
                        local distance = (player.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                        local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(lines) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(lines) do
                            x.Thickness = Box_Thickness
                        end
                    end

                    for u, x in pairs(lines) do
                        if x ~= lines.Tracer then
                            x.Visible = true
                        end
                    end
                    if Tracers then
                        lines.Tracer.Visible = true
                    end
                else 
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(lines) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(v.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end

game.Players.PlayerAdded:Connect(function(newplr)
    --// Lines for 3D box (12)
    local lines = {
        line1 = NewLine(),
        line2 = NewLine(),
        line3 = NewLine(),
        line4 = NewLine(),
        line5 = NewLine(),
        line6 = NewLine(),
        line7 = NewLine(),
        line8 = NewLine(),
        line9 = NewLine(),
        line10 = NewLine(),
        line11 = NewLine(),
        line12 = NewLine(),
        Tracer = NewLine()
    }

    lines.Tracer.Color = Tracer_Color
    lines.Tracer.Thickness = Tracer_Thickness
    lines.Tracer.Transparency = Tracer_Transparency

    --// Updates ESP (lines) in render loop
    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if on and newplr.Character ~= nil and newplr.Character:FindFirstChild("Humanoid") ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= player.Name and newplr.Character.Humanoid.Health > 0 and newplr.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                if vis then
                    local Scale = newplr.Character.Head.Size.Y/2
                    local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                    local Top1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                    local Top2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                    local Top3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                    local Top4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

                    --// Top:
                    lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                    lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                    lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                    lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                    lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                    lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                    --// Bottom:
                    lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                    lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                    lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                    lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

                    --//S ides:
                    lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                    lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line12.To = Vector2.new(Top4.X, Top4.Y)

                    --// Tracer:
                    if Tracers then
                        local trace = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)
                        lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
                        lines.Tracer.To = Vector2.new(trace.X, trace.Y)
                    end

                    --// Teamcheck:
                    if Team_Check then
                        if newplr.TeamColor == player.TeamColor then
                            for u, x in pairs(lines) do
                                x.Color = green
                            end
                        else 
                            for u, x in pairs(lines) do
                                x.Color = red
                            end
                        end
                    end

                    --// Autothickness:
                    if Autothickness then
                        local distance = (player.Character.HumanoidRootPart.Position - newplr.Character.HumanoidRootPart.Position).magnitude
                        local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(lines) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(lines) do
                            x.Thickness = Box_Thickness
                        end
                    end

                    for u, x in pairs(lines) do
                        if x ~= lines.Tracer then
                            x.Visible = true
                        end
                    end
                    if Tracers then
                        lines.Tracer.Visible = true
                    end
                else 
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(lines) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(newplr.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end)
end)

Section:NewSlider("WalkSpeed", "Edit your speed", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpGravity", "Edit your Gravity", 50, 200, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Workspace.Gravity = s
end)

Section:NewButton("Leave(kick from server)", "Script kick you from server", function()
    game:service('Players').LocalPlayer:Kick('Script kick you =3')
end)

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("FLY tap")

Section:NewToggle("Toggle FLy", "Turn on Fly", function(state)
    if state then
		Notification:Notify(
    {Title = "Script", Description = "Fly ON"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
                
				loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/FLY.lua"))() 
Fly(true)

else
	Notification:Notify(
    {Title = "Script", Description = "Fly OFF"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
                
				loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/FLY.lua"))() 
Fly(false)

    end
end)
local Section = Tab:NewSection("GodMode")
Section:NewButton("GodMode on", "You GOD!", function()
    game.Players.LocalPlayer.Character.Humanoid:Remove()

Notification:Notify(
    {Title = "Script", Description = "ERROR 207(Game not Supported)"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

end)
local Section = Tab:NewSection("Telepot")

Section:NewButton("TP UP", "Teleport you on sky", function()
    Notification:Notify(
    {Title = "Script", Description = "Teleport"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.944122, 2785.56445, -131.61937, -0.996191084, 0.0840699226, -0.0231415443, 1.62679861e-08, 0.265394598, 0.964139879, 0.0871968046, 0.960467577, -0.264383733)
end)

Section:NewButton("TP Down", "Teleport you on dirty", function()
    Notification:Notify(
    {Title = "Script", Description = "Teleport"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(273.936829, -399.729706, 388.207977, 0.771613479, -0.113897905, 0.625811398, 1.48162911e-07, 0.983838379, 0.17905876, -0.636091709, -0.138164058, 0.759142995)
end)

local Tab = Window:NewTab("Universal Scripts")
local Section = Tab:NewSection("Scripts")


Section:NewButton("Infinite Yield", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/Infinite%20Yielt.lua", true))()
end)
Section:NewButton("MoneyBag FE", "script gives the item - Money Bag FE.", function()
    --money money money money
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Sound3 = Instance.new("Sound")
Sound4 = Instance.new("Sound")
Sound5 = Instance.new("Sound")
Script6 = Instance.new("Script")
Tool0.Name = "Moneybag"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=16659163"
Tool0.Grip = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Tool0.GripForward = Vector3.new(1, -0, -0)
Tool0.GripPos = Vector3.new(0, 0.5, 0)
Tool0.GripRight = Vector3.new(0, 0, 1)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(-25.303894, 0.400000066, -1.19561768, -0.999999046, -5.09965332e-08, 5.69780241e-08, 5.09965332e-08, 1, 3.9571205e-08, 5.69780241e-08, -3.9571205e-08, -1.00000024)
Part1.Orientation = Vector3.new(0, 180, 0)
Part1.Position = Vector3.new(-25.30389404296875, 0.40000006556510925, -1.19561767578125)
Part1.Rotation = Vector3.new(-180, 0, 180)
Part1.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part1.Size = Vector3.new(1, 0.800000011920929, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Mid gray")
Part1.Locked = true
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Mid gray")
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=16657069"
SpecialMesh2.Scale = Vector3.new(0.5, 0.6000000238418579, 0.5)
SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=16657057"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
Sound3.Name = "MoneySound2"
Sound3.Parent = Part1
Sound3.SoundId = "http://www.roblox.com/asset/?id=16720502"
Sound3.Volume = 1
Sound4.Name = "MoneySound3"
Sound4.Parent = Part1
Sound4.SoundId = "http://www.roblox.com/asset/?id=16720508"
Sound4.Volume = 1
Sound5.Name = "MoneySound1"
Sound5.Parent = Part1
Sound5.SoundId = "http://www.roblox.com/asset/?id=16720281"
Sound5.Volume = 1
Script6.Name = "MoneyBagScript"
Script6.Parent = Tool0
table.insert(cors,sandbox(Script6,function()
local Tool = script.Parent;
debris = game:GetService("Debris")

enabled = true

local sounds = {Tool.Handle.MoneySound1, Tool.Handle.MoneySound2, Tool.Handle.MoneySound3}
local buck = nil


buck = Instance.new("Part")
buck.formFactor = 2
buck.Size = Vector3.new(2,.4,1)
buck.BrickColor = BrickColor.new(28)
buck.TopSurface = 0
buck.BottomSurface = 0
buck.Elasticity = .01 

local d = Instance.new("Decal")
d.Face = 4
d.Texture = "http://www.roblox.com/asset/?id=16658163"
d.Parent = buck

local d2 = d:Clone()
d2.Face = 1
d2.Parent = buck

function isTurbo(character)
	return character:FindFirstChild("Monopoly") ~= nil
end
function MakeABuck(pos)
	local limit = 5
	if (isTurbo(Tool.Parent) == true) then
		limit = 15 -- LOL!
	end
	for i=1,limit do
		local b = buck:Clone()
		local v = Vector3.new(math.random() - .5, math.random() - .5, math.random() - .5).unit
		b.CFrame = CFrame.new(pos + (v * 2) + Vector3.new(0,4,0), v)
		b.Parent = game.Workspace
		debris:AddItem(b, 5)
	end
end
function onActivated()
	if not enabled  then
		return
	end
	enabled = true
	local char = Tool.Parent
	sounds[math.random(3)]:Play()
	MakeABuck(Tool.Handle.Position)
	enabled = true
end
script.Parent.Activated:connect(onActivated)


end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
--all
end)

Section:NewButton("Nword Spammer(Patch)", "nword moist critical lyrics chat", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/paygammy/1c1b6074d8a5beca2a304e521d0372df/raw"))()
end)



Section:NewButton("KeyStrokes", "Keystrokes [W A S D], Cps lmb and rmb, Fps, Ping.", function()
getgenv().k1 = "W"
getgenv().k2 = "A"
getgenv().k3 =  "S"
getgenv().k4 = "D"

getgenv().backdrop = false -- only if you want the shadow bg.
getgenv().showms = true -- only if you want to have your ms shown.
getgenv().showfps = true -- only if you want to have your fps shown.
getgenv().showkps = true -- only if you want to have your kps shown.
getgenv().animated = true -- only if you want the GUI to have the animated shadow.
getgenv().showarrows = false -- only if you want arrow keys to be shown.
getgenv().keydrag = false -- only if you want the keys to be draggable, can also be buggy, will be worked on in the future.

loadstring(game:HttpGet("https://raw.githubusercontent.com/Zirmith/Util-Tools/main/keyStrokes.lua"))()

end)




















local Tab = Window:NewTab("Games Scripts")
local Section = Tab:NewSection("Scripts")

Section:NewButton("Vxpe V4 (for bedwars)", "Very good bedwars script!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

Section:NewLabel("no Key")

Section:NewButton("NUKEvsCITY(ManyGames)", "MAAAAAAAAAAAANY GAMES", function()

 _G.key = "iloverobucs" --the key is between the two " "
loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()

end)



























































































local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Script by Doku & Brinen")
Section:NewLabel("Script Version 1.4")
Section:NewLabel("New Update")
Section:NewLabel("Add Credits and New funcion")
Section:NewLabel("MoneyBag FE")
Section:NewLabel("Add FlyToggle, GodMode, Teleport")
Section:NewLabel("Key Strokes")
