game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Seizo Hub";
	Text = "Ver : 1.0.0";
})

local UIS = game:GetService("UserInputService")
local SoiHub = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Reset = Instance.new("TextButton")
local Destroy = Instance.new("TextButton")
local NAme = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Thanh = Instance.new("Frame")
local NAme_2 = Instance.new("TextLabel")
local AutoFarmMain = Instance.new("Frame")
local AutoFarm = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local NAme_3 = Instance.new("TextLabel")
local Esp = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local NAme_4 = Instance.new("TextLabel")
local Onesp = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local OnAuto = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local Thanh_2 = Instance.new("Frame")
local AutoFarmClicks = Instance.new("TextButton")
local Teleporter = Instance.new("Frame")
local Teleporter_2 = Instance.new("Frame")
local NAme_5 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Telebox = Instance.new("TextBox")
local Enter = Instance.new("TextButton")
local TeleSpped = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local MissMain = Instance.new("TextButton")
local MissMain_2 = Instance.new("Frame")
local WalkSpeed = Instance.new("Frame")
local NAme_6 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Telebox_2 = Instance.new("TextBox")
local Enter_2 = Instance.new("TextButton")
local JumpPower = Instance.new("Frame")
local NAme_7 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local Telebox_3 = Instance.new("TextBox")
local Enter_3 = Instance.new("TextButton")
local TeleportMain = Instance.new("TextButton")
local UiStroke = Instance.new("UIStroke")
local UiStroke1 = Instance.new("UIStroke")
local UiStroke2 = Instance.new("UIStroke")
local UiStroke3 = Instance.new("UIStroke")
local UiStroke4 = Instance.new("UIStroke")
local Mouse = Player:GetMouse()
local AutoTaps = true;
local OnAutoYo = false
local OEsp = false
local On = false
local Destroy = false

UIS.InputBegan:Connect(function(Input)
	if Input.KeyCode == Enum.KeyCode.RightControl then
		if On == false then
			SoiHub.Enabled = false
			On = true
		elseif On == true then
			SoiHub.Enabled = true
			On = false
		end
	end
end)

UiStroke.Color = Color3.fromRGB(0, 85, 0)
UiStroke.Thickness = 2
UiStroke.Parent = AutoFarm

UiStroke1.Color = Color3.fromRGB(0, 85, 0)
UiStroke1.Thickness = 2
UiStroke1.Parent = Esp

UiStroke2.Color = Color3.fromRGB(0, 85, 0)
UiStroke2.Thickness = 2
UiStroke2.Parent = Teleporter_2

UiStroke3.Color = Color3.fromRGB(0, 85, 0)
UiStroke3.Thickness = 2
UiStroke3.Parent = WalkSpeed

UiStroke4.Color = Color3.fromRGB(0, 85, 0)
UiStroke4.Thickness = 2
UiStroke4.Parent = JumpPower

SoiHub.Name = "SoiHub"
SoiHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SoiHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SoiHub
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.204137951, 0, 0.178368136, 0)
Frame.Size = UDim2.new(0, 429, 0, 338)
Frame.Draggable = true

NAme.Name = "NAme"
NAme.Parent = Frame
NAme.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAme.BackgroundTransparency = 1.000
NAme.Position = UDim2.new(0.0163170155, 0, 0, 0)
NAme.Size = UDim2.new(0, 112, 0, 50)
NAme.Font = Enum.Font.Cartoon
NAme.Text = "Seizo Hub"
NAme.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme.TextScaled = true
NAme.TextSize = 14.000
NAme.TextWrapped = true

UICorner.Parent = Frame

Thanh.Name = "Thanh"
Thanh.Parent = Frame
Thanh.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
Thanh.BorderSizePixel = 0
Thanh.Position = UDim2.new(0.0151515156, 0, 0.112426035, 0)
Thanh.Size = UDim2.new(0, 415, 0, 3)

NAme_2.Name = "NAme"
NAme_2.Parent = Frame
NAme_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAme_2.BackgroundTransparency = 1.000
NAme_2.Position = UDim2.new(0.748251736, 0, 0.0384615399, 0)
NAme_2.Size = UDim2.new(0, 100, 0, 25)
NAme_2.Font = Enum.Font.Cartoon
NAme_2.Text = "Version : 1.0.0"
NAme_2.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_2.TextScaled = true
NAme_2.TextSize = 14.000
NAme_2.TextWrapped = true

AutoFarmMain.Name = "AutoFarmMain"
AutoFarmMain.Parent = Frame
AutoFarmMain.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
AutoFarmMain.BorderSizePixel = 0
AutoFarmMain.Position = UDim2.new(0.164335668, 0, 0.121301778, 0)
AutoFarmMain.Size = UDim2.new(0, 358, 0, 297)

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = AutoFarmMain
AutoFarm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
AutoFarm.BorderColor3 = Color3.fromRGB(0, 85, 0)
AutoFarm.Position = UDim2.new(0.0441278219, 0, 0.0292958617, 0)
AutoFarm.Size = UDim2.new(0, 100, 0, 30)

UICorner_2.Parent = AutoFarm

NAme_3.Name = "NAme"
NAme_3.Parent = AutoFarm
NAme_3.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_3.BackgroundTransparency = 1.000
NAme_3.Size = UDim2.new(0, 99, 0, 30)
NAme_3.Font = Enum.Font.Cartoon
NAme_3.Text = "AutoFarm"
NAme_3.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_3.TextScaled = true
NAme_3.TextSize = 14.000
NAme_3.TextWrapped = true

Esp.Name = "Esp"
Esp.Parent = AutoFarmMain
Esp.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Esp.BorderColor3 = Color3.fromRGB(0, 85, 0)
Esp.Position = UDim2.new(0.0430003442, 0, 0.196033522, 0)
Esp.Size = UDim2.new(0, 100, 0, 30)

UICorner_3.Parent = Esp

NAme_4.Name = "NAme"
NAme_4.Parent = Esp
NAme_4.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_4.BackgroundTransparency = 1.000
NAme_4.Size = UDim2.new(0, 99, 0, 30)
NAme_4.Font = Enum.Font.Cartoon
NAme_4.Text = "Esp"
NAme_4.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_4.TextScaled = true
NAme_4.TextSize = 14.000
NAme_4.TextWrapped = true

Onesp.Name = "Onesp"
Onesp.Parent = AutoFarmMain
Onesp.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Onesp.BorderColor3 = Color3.fromRGB(0, 85, 0)
Onesp.BorderSizePixel = 2
Onesp.Position = UDim2.new(0.373413146, 0, 0.192487434, 0)
Onesp.Size = UDim2.new(0, 50, 0, 30)
Onesp.Font = Enum.Font.SourceSans
Onesp.Text = ""
Onesp.TextColor3 = Color3.fromRGB(0, 0, 0)
Onesp.TextSize = 14.000
Onesp.MouseButton1Click:Connect(function()
	if OEsp == false then
		Frame_2:TweenPosition(UDim2.new(0.400000006, 0, 0.166666672, 0),"In","Linear",0.3,true)
		wait(0.3)
		Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		OEsp = true
		local esp_settings = {
			textsize = 8,
			colour = 255,255,255
		}

		local gui = Instance.new("BillboardGui")
		local esp13 = Instance.new("TextLabel",gui)
		gui.Name = "Crackedesp";
		gui.ResetOnSpawn = false
		gui.AlwaysOnTop = true;
		gui.LightInfluence = 0;
		gui.Size = UDim2.new(1.75, 0, 1.75, 0);
		esp13.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		esp13.Text = ""
		esp13.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
		esp13.BorderSizePixel = 4;
		esp13.BorderColor3 = Color3.new(esp_settings.colour)
		esp13.BorderSizePixel = 0
		esp13.Font = "GothamSemibold"
		esp13.TextSize = esp_settings.textsize
		esp13.TextColor3 = Color3.fromRGB(esp_settings.colour)
		game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs (game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Crackedesp")==nil and OEsp == true then
					esp13.Text = "{"..v.Name.."}"
					gui:Clone().Parent = v.Character.Head
				end
			end
		end)
	elseif OEsp == true then
		Frame_2:TweenPosition(UDim2.new(0.139999986, 0, 0.166666672, 0),"In","Linear",0.3,true)
		wait(0.3)
		Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		OEsp = false
		game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs (game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and OEsp == false then
					v.Character.Head.Crackedesp:Destroy()
				end
			end
		end)
	end
end)

Frame_2.Parent = Onesp
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame_2.Position = UDim2.new(0.139999956, 0, 0.200000003, 0)
Frame_2.Size = UDim2.new(0, 20, 0, 20)

OnAuto.Name = "OnAuto"
OnAuto.Parent = AutoFarmMain
OnAuto.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
OnAuto.BorderColor3 = Color3.fromRGB(0, 85, 0)
OnAuto.BorderSizePixel = 2
OnAuto.Position = UDim2.new(0.374255866, 0, 0.0264082998, 0)
OnAuto.Size = UDim2.new(0, 50, 0, 30)
OnAuto.Font = Enum.Font.SourceSans
OnAuto.Text = ""
OnAuto.TextColor3 = Color3.fromRGB(0, 0, 0)
OnAuto.TextSize = 14.000
OnAuto.MouseButton1Click:Connect(function()
	if OnAutoYo == false then
		Frame_3:TweenPosition(UDim2.new(0.400000006, 0, 0.166666672, 0),"In","Linear",0.3,true)
		wait(0.3)
		Frame_3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		OnAutoYo = true
		AutoTaps = true;
		while AutoTaps == true do
			local args = {
				[1] = false,
				[2] = "Clicker!"
			}
			game:GetService("ReplicatedStorage").Remotes.ClickRemote:FireServer(unpack(args))
			wait()
		end
	elseif OnAutoYo == true then
		Frame_3:TweenPosition(UDim2.new(0.139999986, 0, 0.166666672, 0),"In","Linear",0.3,true)
		wait(0.3)
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		OnAutoYo = false
		AutoTaps = false;
	end
end)

Frame_3.Parent = OnAuto
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame_3.Position = UDim2.new(0.139999986, 0, 0.166666672, 0)
Frame_3.Size = UDim2.new(0, 20, 0, 20)

Thanh_2.Name = "Thanh"
Thanh_2.Parent = Frame
Thanh_2.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
Thanh_2.BorderSizePixel = 0
Thanh_2.Position = UDim2.new(0.157342657, 0, 0.121301778, 0)
Thanh_2.Size = UDim2.new(0, 3, 0, 297)

AutoFarmClicks.Name = "AutoFarmClicks"
AutoFarmClicks.Parent = Frame
AutoFarmClicks.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
AutoFarmClicks.BorderColor3 = Color3.fromRGB(0, 85, 0)
AutoFarmClicks.BorderSizePixel = 2
AutoFarmClicks.Position = UDim2.new(0.0250000004, 0, 0.144999996, 0)
AutoFarmClicks.Size = UDim2.new(0, 50, 0, 30)
AutoFarmClicks.Font = Enum.Font.Cartoon
AutoFarmClicks.Text = "AutoFarm"
AutoFarmClicks.TextColor3 = Color3.fromRGB(0, 170, 0)
AutoFarmClicks.TextScaled = true
AutoFarmClicks.TextSize = 14.000
AutoFarmClicks.TextWrapped = true
AutoFarmClicks.MouseButton1Click:Connect(function()
	AutoFarmMain.Visible = true
	MissMain_2.Visible = false
	Teleporter.Visible = false
end)

Teleporter.Name = "Teleporter"
Teleporter.Parent = Frame
Teleporter.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Teleporter.BorderSizePixel = 0
Teleporter.Position = UDim2.new(0.164335668, 0, 0.121301778, 0)
Teleporter.Size = UDim2.new(0, 358, 0, 297)
Teleporter.Visible = false

Teleporter_2.Name = "Teleporter"
Teleporter_2.Parent = Teleporter
Teleporter_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Teleporter_2.BorderColor3 = Color3.fromRGB(0, 85, 0)
Teleporter_2.Position = UDim2.new(0.0374978706, 0, 0.0257518589, 0)
Teleporter_2.Size = UDim2.new(0, 100, 0, 30)

NAme_5.Name = "NAme"
NAme_5.Parent = Teleporter_2
NAme_5.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_5.BackgroundTransparency = 1.000
NAme_5.Size = UDim2.new(0, 99, 0, 30)
NAme_5.Font = Enum.Font.Cartoon
NAme_5.Text = "Teleporter"
NAme_5.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_5.TextScaled = true
NAme_5.TextSize = 14.000
NAme_5.TextWrapped = true

UICorner_4.Parent = Teleporter_2

Telebox.Name = "Telebox"
Telebox.Parent = Teleporter_2
Telebox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Telebox.BorderColor3 = Color3.fromRGB(0, 85, 0)
Telebox.BorderSizePixel = 2
Telebox.Position = UDim2.new(-0.00340325385, 0, 1.37830377, 0)
Telebox.Size = UDim2.new(0, 101, 0, 31)
Telebox.Font = Enum.Font.Cartoon
Telebox.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
Telebox.Text = ""
Telebox.TextColor3 = Color3.fromRGB(0, 170, 0)
Telebox.TextScaled = true
Telebox.TextSize = 14.000
Telebox.TextWrapped = true

Enter.Name = "Enter"
Enter.Parent = Teleporter_2
Enter.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Enter.BorderColor3 = Color3.fromRGB(0, 85, 0)
Enter.BorderSizePixel = 2
Enter.Position = UDim2.new(0.00659656525, 0, 2.89967656, 0)
Enter.Size = UDim2.new(0, 100, 0, 30)
Enter.Font = Enum.Font.Cartoon
Enter.Text = "Enter"
Enter.TextColor3 = Color3.fromRGB(0, 170, 0)
Enter.TextScaled = true
Enter.TextSize = 14.000
Enter.TextWrapped = true
Enter.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Telebox.Text].Character.HumanoidRootPart.CFrame
end)

TeleSpped.Name = "TeleSpped"
TeleSpped.Parent = Teleporter
TeleSpped.Active = true
TeleSpped.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TeleSpped.BorderColor3 = Color3.fromRGB(0, 85, 0)
TeleSpped.BorderSizePixel = 2
TeleSpped.Position = UDim2.new(0.354748607, 0, 0.0202020202, 0)
TeleSpped.Size = UDim2.new(0, 223, 0, 278)

UIListLayout.Parent = TeleSpped
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

MissMain.Name = "MissMain"
MissMain.Parent = Frame
MissMain.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MissMain.BorderColor3 = Color3.fromRGB(0, 85, 0)
MissMain.BorderSizePixel = 2
MissMain.Position = UDim2.new(0.0250000004, 0, 0.434940845, 0)
MissMain.Size = UDim2.new(0, 50, 0, 30)
MissMain.Font = Enum.Font.Cartoon
MissMain.Text = "Miss"
MissMain.TextColor3 = Color3.fromRGB(0, 170, 0)
MissMain.TextScaled = true
MissMain.TextSize = 14.000
MissMain.TextWrapped = true
MissMain.MouseButton1Click:Connect(function()
	AutoFarmMain.Visible = false
	MissMain_2.Visible = true
	Teleporter.Visible = false
end)

MissMain_2.Name = "MissMain"
MissMain_2.Parent = Frame
MissMain_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MissMain_2.BorderSizePixel = 0
MissMain_2.Position = UDim2.new(0.164335668, 0, 0.121301778, 0)
MissMain_2.Size = UDim2.new(0, 358, 0, 297)
MissMain_2.Visible = false

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = MissMain_2
WalkSpeed.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
WalkSpeed.BorderColor3 = Color3.fromRGB(0, 85, 0)
WalkSpeed.Position = UDim2.new(0.0319112763, 0, 0.035225302, 0)
WalkSpeed.Size = UDim2.new(0, 100, 0, 30)

NAme_6.Name = "NAme"
NAme_6.Parent = WalkSpeed
NAme_6.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_6.BackgroundTransparency = 1.000
NAme_6.Size = UDim2.new(0, 99, 0, 30)
NAme_6.Font = Enum.Font.Cartoon
NAme_6.Text = "WalkSpeed"
NAme_6.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_6.TextScaled = true
NAme_6.TextSize = 14.000
NAme_6.TextWrapped = true

UICorner_5.Parent = WalkSpeed

Telebox_2.Name = "Telebox"
Telebox_2.Parent = WalkSpeed
Telebox_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Telebox_2.BorderColor3 = Color3.fromRGB(0, 85, 0)
Telebox_2.BorderSizePixel = 2
Telebox_2.Position = UDim2.new(1.12659669, 0, 0.0116370805, 0)
Telebox_2.Size = UDim2.new(0, 101, 0, 31)
Telebox_2.Font = Enum.Font.Cartoon
Telebox_2.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
Telebox_2.Text = ""
Telebox_2.TextColor3 = Color3.fromRGB(0, 170, 0)
Telebox_2.TextScaled = true
Telebox_2.TextSize = 14.000
Telebox_2.TextWrapped = true

Enter_2.Name = "Enter"
Enter_2.Parent = WalkSpeed
Enter_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Enter_2.BorderColor3 = Color3.fromRGB(0, 85, 0)
Enter_2.BorderSizePixel = 2
Enter_2.Position = UDim2.new(2.41659665, 0, 0.0330097675, 0)
Enter_2.Size = UDim2.new(0, 100, 0, 30)
Enter_2.Font = Enum.Font.Cartoon
Enter_2.Text = "Enter"
Enter_2.TextColor3 = Color3.fromRGB(0, 170, 0)
Enter_2.TextScaled = true
Enter_2.TextSize = 14.000
Enter_2.TextWrapped = true
Enter_2.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Telebox_2.Text
end)

JumpPower.Name = "JumpPower"
JumpPower.Parent = MissMain_2
JumpPower.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JumpPower.BorderColor3 = Color3.fromRGB(0, 85, 0)
JumpPower.Position = UDim2.new(0.0319112763, 0, 0.194480568, 0)
JumpPower.Size = UDim2.new(0, 100, 0, 30)

NAme_7.Name = "NAme"
NAme_7.Parent = JumpPower
NAme_7.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_7.BackgroundTransparency = 1.000
NAme_7.Size = UDim2.new(0, 99, 0, 30)
NAme_7.Font = Enum.Font.Cartoon
NAme_7.Text = "JumpPower"
NAme_7.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_7.TextScaled = true
NAme_7.TextSize = 14.000
NAme_7.TextWrapped = true

UICorner_6.Parent = JumpPower

Telebox_3.Name = "Telebox"
Telebox_3.Parent = JumpPower
Telebox_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Telebox_3.BorderColor3 = Color3.fromRGB(0, 85, 0)
Telebox_3.BorderSizePixel = 2
Telebox_3.Position = UDim2.new(1.12659669, 0, 0.0116370805, 0)
Telebox_3.Size = UDim2.new(0, 101, 0, 31)
Telebox_3.Font = Enum.Font.Cartoon
Telebox_3.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
Telebox_3.Text = ""
Telebox_3.TextColor3 = Color3.fromRGB(0, 170, 0)
Telebox_3.TextScaled = true
Telebox_3.TextSize = 14.000
Telebox_3.TextWrapped = true

Enter_3.Name = "Enter"
Enter_3.Parent = JumpPower
Enter_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Enter_3.BorderColor3 = Color3.fromRGB(0, 85, 0)
Enter_3.BorderSizePixel = 2
Enter_3.Position = UDim2.new(2.41659665, 0, 0.0330097675, 0)
Enter_3.Size = UDim2.new(0, 100, 0, 30)
Enter_3.Font = Enum.Font.Cartoon
Enter_3.Text = "Enter"
Enter_3.TextColor3 = Color3.fromRGB(0, 170, 0)
Enter_3.TextScaled = true
Enter_3.TextSize = 14.000
Enter_3.TextWrapped = true
Enter_3.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Telebox_3.Text
end)

TeleportMain.Name = "TeleportMain"
TeleportMain.Parent = Frame
TeleportMain.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TeleportMain.BorderColor3 = Color3.fromRGB(0, 85, 0)
TeleportMain.BorderSizePixel = 2
TeleportMain.Position = UDim2.new(0.0250000004, 0, 0.292928994, 0)
TeleportMain.Size = UDim2.new(0, 50, 0, 30)
TeleportMain.Font = Enum.Font.Cartoon
TeleportMain.Text = "Teleport"
TeleportMain.TextColor3 = Color3.fromRGB(0, 170, 0)
TeleportMain.TextScaled = true
TeleportMain.TextSize = 14.000
TeleportMain.TextWrapped = true
TeleportMain.MouseButton1Click:Connect(function()
	AutoFarmMain.Visible = false
	MissMain_2.Visible = false
	Teleporter.Visible = true
end)
function GetCharacter()
   return game.Players.LocalPlayer.Character
end
 
function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end
 
 
UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
