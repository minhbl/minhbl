game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "MumaHub";
	Text = "MinhBlusDepzaiVai";
})

local MumaHub = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local NAme = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local OnAuto = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local AutoFarm = Instance.new("Frame")
local NAme_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local OnAutoYo = false

--Properties:

MumaHub.Name = "MumaHub"
MumaHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MumaHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = MumaHub
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.204137951, 0, 0.178368136, 0)
Frame.Size = UDim2.new(0, 429, 0, 338)

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
		Frame_2:TweenPosition(UDim2.new(0.459999979, 0, 0.166666672, 0),"In","Linear",0.5,true)
		wait(0.5)
		Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		OnAutoYo = true
		while wait() do
			if OnAuto == true then
				local args = {
					[1] = false,
					[2] = "Clicker!"
				}
				game:GetService("ReplicatedStorage").Remotes.ClickRemote:FireServer(unpack(args))
         wait()
			end
		end
	elseif OnAutoYo == true then
		Frame_2:TweenPosition(UDim2.new(0.140000001, 0, 0.166666672, 0),"In","Linear",0.5,true)
		wait(0.5)
		Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		OnAutoYo = false
	end
end)

Frame_2.Parent = OnAuto
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame_2.Position = UDim2.new(0.140000001, 0, 0.166666672, 0)
Frame_2.Size = UDim2.new(0, 20, 0, 20)

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
AutoFarm.BorderColor3 = Color3.fromRGB(0, 85, 0)
AutoFarm.Position = UDim2.new(0.0163170155, 0, 0.147928998, 0)
AutoFarm.Size = UDim2.new(0, 100, 0, 30)

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

UICorner_2.Parent = AutoFarm

UICorner_3.Parent = Frame
