game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "MumaHub";
	Text = "HackTaoLaoTest";
})

local UIS = game:GetService("UserInputService")
local MumaHub = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local NAme = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local OnAuto = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local AutoFarm = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UICorner_10 = Instance.new("UICorner")
local NAme_2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Teleporter = Instance.new("Frame")
local NAme_3 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Telebox = Instance.new("TextBox")
local Onesp = Instance.new("TextButton")
local Esp = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local Enter = Instance.new("TextButton")
local WalkSpeed = Instance.new("Frame")
local NAme_4 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Telebox_2 = Instance.new("TextBox")
local Enter_2 = Instance.new("TextButton")
local JumpPower = Instance.new("Frame")
local NAme_5 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local Telebox_3 = Instance.new("TextBox")
local Enter_3 = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local NAme_6 = Instance.new("TextLabel")
local NAme_7 = Instance.new("TextLabel")
local UiStroke = Instance.new("UIStroke")
local UiStroke1 = Instance.new("UIStroke")
local UiStroke2 = Instance.new("UIStroke")
local UiStroke3 = Instance.new("UIStroke")
local UiStroke4 = Instance.new("UIStroke")
local AutoTaps = true;
local OnAutoYo = false
local OEsp = false
local On = false

UIS.InputBegan:Connect(function(Input)
	if Input.KeyCode == Enum.KeyCode.RightControl then
		if On == false then
			MumaHub.Enabled = false
			On = true
		elseif On == true then
			MumaHub.Enabled = true
			On = false
		end
	end
end)
	
MumaHub.Name = "MumaHub"
MumaHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MumaHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MumaHub.ResetOnSpawn = true

UiStroke.Color = Color3.fromRGB(0, 85, 0)
UiStroke.Thickness = 2
UiStroke.Parent = AutoFarm

UiStroke1.Color = Color3.fromRGB(0, 85, 0)
UiStroke1.Thickness = 2
UiStroke1.Parent = Esp

UiStroke2.Color = Color3.fromRGB(0, 85, 0)
UiStroke2.Thickness = 2
UiStroke2.Parent = Teleporter

UiStroke3.Color = Color3.fromRGB(0, 85, 0)
UiStroke3.Thickness = 2
UiStroke3.Parent = WalkSpeed

UiStroke4.Color = Color3.fromRGB(0, 85, 0)
UiStroke4.Thickness = 2
UiStroke4.Parent = JumpPower

Frame.Parent = MumaHub
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
NAme.Size = UDim2.new(0, 100, 0, 50)
NAme.Font = Enum.Font.Cartoon
NAme.Text = "MumaHub"
NAme.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme.TextScaled = true
NAme.TextSize = 14.000
NAme.TextWrapped = true

UICorner.Parent = Frame

OnAuto.Name = "OnAuto"
OnAuto.Parent = Frame
OnAuto.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
OnAuto.BorderColor3 = Color3.fromRGB(0, 85, 0)
OnAuto.BorderSizePixel = 2
OnAuto.Position = UDim2.new(0.302713275, 0, 0.145041436, 0)
OnAuto.Size = UDim2.new(0, 50, 0, 30)
OnAuto.Font = Enum.Font.SourceSans
OnAuto.Text = ""
OnAuto.TextColor3 = Color3.fromRGB(0, 0, 0)
OnAuto.TextSize = 14.000
OnAuto.MouseButton1Click:Connect(function()
if OnAutoYo == false then
	Frame_2:TweenPosition(UDim2.new(0.459999979, 0, 0.166666672, 0),"In","Linear",0.3,true)
	wait(0.3)
	Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
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
	Frame_2:TweenPosition(UDim2.new(0.140000001, 0, 0.166666672, 0),"In","Linear",0.3,true)
	wait(0.3)
	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		OnAutoYo = false
		AutoTaps = false;
end
end)

Frame_2.Parent = OnAuto
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame_2.Position = UDim2.new(0.139999986, 0, 0.166666672, 0)
Frame_2.Size = UDim2.new(0, 20, 0, 20)

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
AutoFarm.BorderColor3 = Color3.fromRGB(0, 85, 0)
AutoFarm.Position = UDim2.new(0.0163170155, 0, 0.147928998, 0)
AutoFarm.Size = UDim2.new(0, 100, 0, 30)

UICorner_2.Parent = AutoFarm

NAme_2.Name = "NAme"
NAme_2.Parent = AutoFarm
NAme_2.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_2.BackgroundTransparency = 1.000
NAme_2.Size = UDim2.new(0, 99, 0, 30)
NAme_2.Font = Enum.Font.Cartoon
NAme_2.Text = "AutoFarm"
NAme_2.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_2.TextScaled = true
NAme_2.TextSize = 14.000
NAme_2.TextWrapped = true

UICorner_3.Parent = Frame

Teleporter.Name = "Teleporter"
Teleporter.Parent = Frame
Teleporter.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Teleporter.BorderColor3 = Color3.fromRGB(0, 85, 0)
Teleporter.Position = UDim2.new(0.0151515007, 0, 0.301846147, 0)
Teleporter.Size = UDim2.new(0, 100, 0, 30)

NAme_3.Name = "NAme"
NAme_3.Parent = Teleporter
NAme_3.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_3.BackgroundTransparency = 1.000
NAme_3.Size = UDim2.new(0, 99, 0, 30)
NAme_3.Font = Enum.Font.Cartoon
NAme_3.Text = "Teleporter"
NAme_3.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_3.TextScaled = true
NAme_3.TextSize = 14.000
NAme_3.TextWrapped = true

UICorner_4.Parent = Teleporter

Telebox.Name = "Telebox"
Telebox.Parent = Teleporter
Telebox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Telebox.BorderColor3 = Color3.fromRGB(0, 85, 0)
Telebox.BorderSizePixel = 2
Telebox.Position = UDim2.new(1.12659669, 0, 0.0116370805, 0)
Telebox.Size = UDim2.new(0, 101, 0, 31)
Telebox.Font = Enum.Font.Cartoon
Telebox.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
Telebox.Text = ""
Telebox.TextColor3 = Color3.fromRGB(0, 170, 0)
Telebox.TextScaled = true
Telebox.TextSize = 14.000
Telebox.TextWrapped = true

Enter.Name = "Enter"
Enter.Parent = Teleporter
Enter.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Enter.BorderColor3 = Color3.fromRGB(0, 85, 0)
Enter.BorderSizePixel = 2
Enter.Position = UDim2.new(2.41659665, 0, -0.000323534012, 0)
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

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = Frame
WalkSpeed.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
WalkSpeed.BorderColor3 = Color3.fromRGB(0, 85, 0)
WalkSpeed.Position = UDim2.new(0.0151515007, 0, 0.452733725, 0)
WalkSpeed.Size = UDim2.new(0, 100, 0, 30)

NAme_4.Name = "NAme"
NAme_4.Parent = WalkSpeed
NAme_4.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_4.BackgroundTransparency = 1.000
NAme_4.Size = UDim2.new(0, 99, 0, 30)
NAme_4.Font = Enum.Font.Cartoon
NAme_4.Text = "WalkSpeed"
NAme_4.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_4.TextScaled = true
NAme_4.TextSize = 14.000
NAme_4.TextWrapped = true

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
JumpPower.Parent = Frame
JumpPower.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JumpPower.BorderColor3 = Color3.fromRGB(0, 85, 0)
JumpPower.Position = UDim2.new(0.0151515007, 0, 0.591786981, 0)
JumpPower.Size = UDim2.new(0, 100, 0, 30)

NAme_5.Name = "NAme"
NAme_5.Parent = JumpPower
NAme_5.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_5.BackgroundTransparency = 1.000
NAme_5.Size = UDim2.new(0, 99, 0, 30)
NAme_5.Font = Enum.Font.Cartoon
NAme_5.Text = "JumpPower"
NAme_5.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_5.TextScaled = true
NAme_5.TextSize = 14.000
NAme_5.TextWrapped = true

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

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0151515156, 0, 0.112426035, 0)
Frame_3.Size = UDim2.new(0, 415, 0, 3)

NAme_6.Name = "NAme"
NAme_6.Parent = Frame
NAme_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAme_6.BackgroundTransparency = 1.000
NAme_6.Position = UDim2.new(0.748251736, 0, 0.0384615399, 0)
NAme_6.Size = UDim2.new(0, 100, 0, 25)
NAme_6.Font = Enum.Font.Cartoon
NAme_6.Text = "Version : 1.0.0"
NAme_6.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_6.TextScaled = true
NAme_6.TextSize = 14.000
NAme_6.TextWrapped = true

Frame_4.Parent = Onesp
Frame_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame_4.Position = UDim2.new(0.139999986, 0, 0.166666672, 0)
Frame_4.Size = UDim2.new(0, 20, 0, 20)

Onesp.Name = "Onesp"
Onesp.Parent = Frame
Onesp.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Onesp.BorderColor3 = Color3.fromRGB(0, 85, 0)
Onesp.BorderSizePixel = 2
Onesp.Position = UDim2.new(0.747934699, 0, 0.148000017, 0)
Onesp.Size = UDim2.new(0, 50, 0, 30)
Onesp.Font = Enum.Font.SourceSans
Onesp.Text = ""
Onesp.TextColor3 = Color3.fromRGB(0, 0, 0)
Onesp.TextSize = 14.000
Onesp.MouseButton1Click:Connect(function()
	if OEsp == false then
		Frame_4:TweenPosition(UDim2.new(0.419999957, 0, 0.166666672, 0),"In","Linear",0.3,true)
		wait(0.3)
		Frame_4.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
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
		Frame_4:TweenPosition(UDim2.new(0.139999986, 0, 0.166666672, 0),"In","Linear",0.3,true)
		wait(0.3)
		Frame_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
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

Esp.Name = "Esp"
Esp.Parent = Frame
Esp.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Esp.BorderColor3 = Color3.fromRGB(0, 85, 0)
Esp.Position = UDim2.new(0.469999999, 0, 0.148000002, 0)
Esp.Size = UDim2.new(0, 100, 0, 30)

UICorner_10.Parent = Esp

NAme_7.Name = "NAme"
NAme_7.Parent = Esp
NAme_7.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
NAme_7.BackgroundTransparency = 1.000
NAme_7.Size = UDim2.new(0, 99, 0, 30)
NAme_7.Font = Enum.Font.Cartoon
NAme_7.Text = "Esp"
NAme_7.TextColor3 = Color3.fromRGB(0, 170, 0)
NAme_7.TextScaled = true
NAme_7.TextSize = 14.000
NAme_7.TextWrapped = true
