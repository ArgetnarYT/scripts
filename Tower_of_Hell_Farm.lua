--Script by Doku
--If you take the script please specify the author <3


local auto = false

local function createGui()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "AutoTeleportGui"
    screenGui.ResetOnSpawn = false 
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 100)
    frame.Position = UDim2.new(0, 100, 0, 100)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BackgroundTransparency = 0.3
    frame.BorderSizePixel = 0
    frame.Parent = screenGui
    frame.Active = true
    frame.Draggable = true

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 10)
    uiCorner.Parent = frame

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 10))
    }
    gradient.Rotation = 45
    gradient.Parent = frame

    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0.8, 0, 0.4, 0)
    toggleButton.Position = UDim2.new(0.1, 0, 0.3, 0)
    toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    toggleButton.Font = Enum.Font.GothamBold
    toggleButton.TextSize = 14
    toggleButton.Text = "Start Auto TP"
    toggleButton.Parent = frame

    local toggleCorner = Instance.new("UICorner")
    toggleCorner.CornerRadius = UDim.new(0, 10)
    toggleCorner.Parent = toggleButton

    local hideButton = Instance.new("TextButton")
    hideButton.Size = UDim2.new(0.2, 0, 0.2, 0)
    hideButton.Position = UDim2.new(0.9, -25, 0, 5)
    hideButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    hideButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    hideButton.Font = Enum.Font.GothamBold
    hideButton.TextSize = 14
    hideButton.Text = "X"
    hideButton.Parent = frame

    local hideCorner = Instance.new("UICorner")
    hideCorner.CornerRadius = UDim.new(0, 10)
    hideCorner.Parent = hideButton

    toggleButton.MouseButton1Click:Connect(function()
        auto = not auto
        if auto then
            toggleButton.Text = "Stop Auto TP"
            toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        else
            toggleButton.Text = "Start Auto TP"
            toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        end
    end)

    hideButton.MouseButton1Click:Connect(function()
        frame.Visible = not frame.Visible
    end)
end

createGui()

local plr = game:service("Players").LocalPlayer

local function tp(x, y, z)
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
    end
end

local function getFirstChildPosition()
    local finishesFolder = game.Workspace:FindFirstChild("tower"):FindFirstChild("finishes")
    
    if finishesFolder then
        local firstChild = finishesFolder:FindFirstChildWhichIsA("BasePart")
        if firstChild then
            return firstChild.Position
        else
            warn("Нет подходящего ребенка в 'finishes'")
        end
    else
        warn("Folder 'finishes' не найден в 'tower'")
    end
    return nil
end

spawn(function()
    while true do
        if auto then
            local position = getFirstChildPosition()
            if position then
                tp(position.X, position.Y, position.Z)
            end
        end
        wait(1)
    end
end)
