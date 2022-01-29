game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Simple";
	Text = "MinhBlusDepzaiVai";
})

local MemiHack = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Nameten = Instance.new("TextLabel")
local Main = Instance.new("TextButton")
local Thanh = Instance.new("Frame")
local WALKSPEED = Instance.new("TextButton")
local JUMPPOWER = Instance.new("TextButton")
local Teleporter = Instance.new("TextButton")
local StepTp = Instance.new("Frame")
local viet = Instance.new("TextBox")
local Enter = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")


MemiHack.Name = "MemiHack"
MemiHack.Parent = game.CoreGui
MemiHack.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = MemiHack
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(0, 170, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.21671389, 0, 0.138519943, 0)
Frame.Size = UDim2.new(0, 400, 0, 400)
Frame.Draggable = true

Nameten.Name = "Nameten"
Nameten.Parent = Frame
Nameten.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Nameten.BackgroundTransparency = 0.500
Nameten.BorderColor3 = Color3.fromRGB(0, 170, 0)
Nameten.BorderSizePixel = 5
Nameten.Position = UDim2.new(0, 0, -0.144999996, 0)
Nameten.Size = UDim2.new(0, 400, 0, 50)
Nameten.Font = Enum.Font.Code
Nameten.Text = "MemiHack"
Nameten.TextColor3 = Color3.fromRGB(255, 255, 255)
Nameten.TextScaled = true
Nameten.TextSize = 14.000
Nameten.TextWrapped = true

Main.Name = "Main"
Main.Parent = Frame
Main.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Main.BackgroundTransparency = 0.500
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0225000009, 0, 0.0274999999, 0)
Main.Size = UDim2.new(0, 52, 0, 28)
Main.Font = Enum.Font.Code
Main.Text = "Main"
Main.TextColor3 = Color3.fromRGB(255, 255, 255)
Main.TextScaled = true
Main.TextSize = 14.000
Main.TextWrapped = true

Thanh.Name = "Thanh"
Thanh.Parent = Frame
Thanh.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Thanh.BackgroundTransparency = 0.500
Thanh.BorderSizePixel = 0
Thanh.Position = UDim2.new(0.185000002, 0, 0, 0)
Thanh.Size = UDim2.new(0, 15, 0, 400)

WALKSPEED.Name = "WALKSPEED"
WALKSPEED.Parent = Frame
WALKSPEED.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
WALKSPEED.BackgroundTransparency = 0.500
WALKSPEED.BorderSizePixel = 0
WALKSPEED.Position = UDim2.new(0.270000011, 0, 0.0274999999, 0)
WALKSPEED.Size = UDim2.new(0, 52, 0, 28)
WALKSPEED.Font = Enum.Font.Code
WALKSPEED.Text = "WALKSPEED"
WALKSPEED.TextColor3 = Color3.fromRGB(255, 255, 255)
WALKSPEED.TextScaled = true
WALKSPEED.TextSize = 14.000
WALKSPEED.TextWrapped = true

JUMPPOWER.Name = "JUMPPOWER"
JUMPPOWER.Parent = Frame
JUMPPOWER.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
JUMPPOWER.BackgroundTransparency = 0.500
JUMPPOWER.BorderSizePixel = 0
JUMPPOWER.Position = UDim2.new(0.435000002, 0, 0.0274999999, 0)
JUMPPOWER.Size = UDim2.new(0, 52, 0, 28)
JUMPPOWER.Font = Enum.Font.Code
JUMPPOWER.Text = "JUMPPOWER"
JUMPPOWER.TextColor3 = Color3.fromRGB(255, 255, 255)
JUMPPOWER.TextScaled = true
JUMPPOWER.TextSize = 14.000
JUMPPOWER.TextWrapped = true

Teleporter.Name = "Teleporter"
Teleporter.Parent = Frame
Teleporter.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Teleporter.BackgroundTransparency = 0.500
Teleporter.BorderSizePixel = 0
Teleporter.Position = UDim2.new(0.607500017, 0, 0.0274999999, 0)
Teleporter.Size = UDim2.new(0, 52, 0, 28)
Teleporter.Font = Enum.Font.Code
Teleporter.Text = "Teleporter"
Teleporter.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleporter.TextScaled = true
Teleporter.TextSize = 14.000
Teleporter.TextWrapped = true
Teleporter.MouseButton1Click:Connect(function()
StepTp.Visible = true
end)

StepTp.Name = "StepTp"
StepTp.Parent = Frame
StepTp.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
StepTp.BorderSizePixel = 0
StepTp.Position = UDim2.new(0.222499996, 0, 0, 0)
StepTp.Size = UDim2.new(0, 311, 0, 400)
StepTp.Visible = false

viet.Name = "viet"
viet.Parent = StepTp
viet.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
viet.BorderSizePixel = 0
viet.Position = UDim2.new(0.176848873, 0, 0.165000007, 0)
viet.Size = UDim2.new(0, 200, 0, 50)
viet.Font = Enum.Font.FredokaOne
viet.Text = ""
viet.TextColor3 = Color3.fromRGB(255, 255, 255)
viet.TextScaled = true
viet.TextSize = 14.000
viet.TextWrapped = true

Enter.Name = "Enter"
Enter.Parent = StepTp
Enter.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Enter.BorderSizePixel = 0
Enter.Position = UDim2.new(0.337620556, 0, 0.354999989, 0)
Enter.Size = UDim2.new(0, 100, 0, 50)
Enter.Font = Enum.Font.Code
Enter.Text = "Enter"
Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter.TextScaled = true
Enter.TextSize = 14.000
Enter.TextWrapped = true
Enter.MouseButton1Click:Connect(function()
	local textpl = viet.Text
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[textpl].Character.HumanoidRootPart.CFrame
end)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.94749999, 0, -0.0474999994, 0)
TextButton.Size = UDim2.new(0, 30, 0, 30)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
	StepTp.Visible = false
end)
