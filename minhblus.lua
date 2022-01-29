game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "minh";
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
local TextLabel = Instance.new("TextLabel")
local StepJP = Instance.new("Frame")
local viet_2 = Instance.new("TextBox")
local Enter_2 = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local StepSP = Instance.new("Frame")
local viet_3 = Instance.new("TextBox")
local Enter_3 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local OUT = Instance.new("TextButton")
local Open = Instance.new("TextButton")


MemiHack.Name = "MemiHack"
MemiHack.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
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
Nameten.Text = "MemuHack"
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
WALKSPEED.MouseButton1Click:Connect(function()
	StepSP.Visible = true
	StepJP.Visible = false
	StepTp.Visible = false
end)

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
JUMPPOWER.MouseButton1Click:Connect(function()
	StepJP.Visible = true
	StepTp.Visible = false
	StepSP.Visible = false
end)

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
	StepJP.Visible = false
	StepSP.Visible = false
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

TextButton.Parent = StepTp
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

TextLabel.Parent = StepTp
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.180064306, 0, 0.0274999999, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Teleporter"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

StepJP.Name = "StepJP"
StepJP.Parent = Frame
StepJP.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
StepJP.BorderSizePixel = 0
StepJP.Position = UDim2.new(0.222499996, 0, 0, 0)
StepJP.Size = UDim2.new(0, 311, 0, 400)
StepJP.Visible = false

viet_2.Name = "viet_2"
viet_2.Parent = StepJP
viet_2.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
viet_2.BorderSizePixel = 0
viet_2.Position = UDim2.new(0.176848873, 0, 0.165000007, 0)
viet_2.Size = UDim2.new(0, 200, 0, 50)
viet_2.Font = Enum.Font.FredokaOne
viet_2.Text = ""
viet_2.TextColor3 = Color3.fromRGB(255, 255, 255)
viet_2.TextScaled = true
viet_2.TextSize = 14.000
viet_2.TextWrapped = true

Enter_2.Name = "Enter_2"
Enter_2.Parent = StepJP
Enter_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Enter_2.BorderSizePixel = 0
Enter_2.Position = UDim2.new(0.337620556, 0, 0.354999989, 0)
Enter_2.Size = UDim2.new(0, 100, 0, 50)
Enter_2.Font = Enum.Font.Code
Enter_2.Text = "Enter"
Enter_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter_2.TextScaled = true
Enter_2.TextSize = 14.000
Enter_2.TextWrapped = true
Enter_2.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = viet_2.Text
end)

TextButton_2.Parent = StepJP
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(0.94749999, 0, -0.0474999994, 0)
TextButton_2.Size = UDim2.new(0, 30, 0, 30)
TextButton_2.Font = Enum.Font.FredokaOne
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Click:Connect(function()
StepJP.Visible = false
end)

TextLabel_2.Parent = StepJP
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.180064306, 0, 0.0274999999, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Jump"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

StepSP.Name = "StepSP"
StepSP.Parent = Frame
StepSP.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
StepSP.BorderSizePixel = 0
StepSP.Position = UDim2.new(0.222499996, 0, 0, 0)
StepSP.Size = UDim2.new(0, 311, 0, 400)
StepSP.Visible = false

viet_3.Name = "viet_3"
viet_3.Parent = StepSP
viet_3.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
viet_3.BorderSizePixel = 0
viet_3.Position = UDim2.new(0.176848873, 0, 0.165000007, 0)
viet_3.Size = UDim2.new(0, 200, 0, 50)
viet_3.Font = Enum.Font.FredokaOne
viet_3.Text = ""
viet_3.TextColor3 = Color3.fromRGB(255, 255, 255)
viet_3.TextScaled = true
viet_3.TextSize = 14.000
viet_3.TextWrapped = true

Enter_3.Name = "Enter_3"
Enter_3.Parent = StepSP
Enter_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Enter_3.BorderSizePixel = 0
Enter_3.Position = UDim2.new(0.337620556, 0, 0.354999989, 0)
Enter_3.Size = UDim2.new(0, 100, 0, 50)
Enter_3.Font = Enum.Font.Code
Enter_3.Text = "Enter"
Enter_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter_3.TextScaled = true
Enter_3.TextSize = 14.000
Enter_3.TextWrapped = true
Enter_3.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = viet_3.Text
end)

TextButton_3.Parent = StepSP
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.Position = UDim2.new(0.94749999, 0, -0.0474999994, 0)
TextButton_3.Size = UDim2.new(0, 30, 0, 30)
TextButton_3.Font = Enum.Font.FredokaOne
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Click:Connect(function()
StepSP.Visible = false
end)

TextLabel_3.Parent = StepSP
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.180064306, 0, 0.0274999999, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.FredokaOne
TextLabel_3.Text = "Speed"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

OUT.Name = "OUT"
OUT.Parent = Frame
OUT.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
OUT.BackgroundTransparency = 1.000
OUT.BorderSizePixel = 0
OUT.Position = UDim2.new(0.967499971, 0, -0.184999987, 0)
OUT.Size = UDim2.new(0, 30, 0, 30)
OUT.Font = Enum.Font.FredokaOne
OUT.Text = "X"
OUT.TextColor3 = Color3.fromRGB(255, 0, 0)
OUT.TextScaled = true
OUT.TextSize = 14.000
OUT.TextWrapped = true
OUT.MouseButton1Click:Connect(function()
Frame.Visible = false
end)

Open.Name = "Open"
Open.Parent = MemiHack
Open.Active = true
Open.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Open.Position = UDim2.new(0, 0, 0.595825434, 0)
Open.Size = UDim2.new(0, 67, 0, 25)
Open.Font = Enum.Font.FredokaOne
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 85, 0)
Open.TextSize = 14.000
Open.Draggable = true
Open.MouseButton1Click:Connect(function()
Frame.Visible = true
end)
