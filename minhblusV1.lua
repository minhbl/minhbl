local Hub = {}
local UIS = game:GetService("UserInputService")
local Circle2 = Instance.new("ImageLabel")
Circle2.Name = "Circle2"
Circle2.Parent = nil
Circle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle2.BackgroundTransparency = 1.000
Circle2.ZIndex = 10
Circle2.Image = "rbxassetid://266543268"
Circle2.ImageColor3 = Color3.fromRGB(21, 157, 96)

function CircleClick(Button, X, Y)
	spawn(function()
		Button.ClipsDescendants = true
		local Circle = Circle2:Clone()
		Circle.Parent = Button
		local NewX = X - Circle.AbsolutePosition.X
		local NewY = Y - Circle.AbsolutePosition.Y
		Circle.Position = UDim2.new(0, NewX, 0, NewY)
		local Size = 0
		if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.X * 1.5
		elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.Y * 1.5
		elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.X * 1.5
		end
		local Time = 0.5
		Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, - Size / 2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
		for i = 1,10 do
			Circle.ImageTransparency += 0.1
			wait()
		end
		Circle:Destroy()
	end)
end

function Hub.CreLib(namehub)
	if game.CoreGui:FindFirstChild("UIHACKHUBNOCHECK") ~= nil then
		game.CoreGui:FindFirstChild("UIHACKHUBNOCHECK"):Destroy()
	end
	local UI = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local MainCorner = Instance.new("UICorner")
	local NameUI = Instance.new("TextLabel")
	local TabFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Thanh = Instance.new("Folder")
	local Thanh_2 = Instance.new("Frame")
	local Thanh_3 = Instance.new("Frame")
	local Thanh_4 = Instance.new("Frame")
	local Thanh_5 = Instance.new("Frame")
	local Page = Instance.new("Folder")

	UI.Name = "UIHACKHUBNOCHECK"
	UI.Parent = game:GetService("CoreGui")
	UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = UI
	Main.Active = true
	Main.Draggable = true
	Main.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.232358575, 0, 0.214421257, 0)
	Main.Size = UDim2.new(0, 352, 0, 301)

	MainCorner.CornerRadius = UDim.new(0, 4)
	MainCorner.Name = "MainCorner"
	MainCorner.Parent = Main

	NameUI.Name = "NameUI"
	NameUI.Parent = Main
	NameUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameUI.BackgroundTransparency = 1.000
	NameUI.BorderSizePixel = 0
	NameUI.Position = UDim2.new(0.023584906, 0, 0.0199335553, 0)
	NameUI.Size = UDim2.new(0, 95, 0, 29)
	NameUI.Font = Enum.Font.SourceSans
	NameUI.Text = namehub
	NameUI.TextColor3 = Color3.fromRGB(205, 205, 205)
	NameUI.TextScaled = true
	NameUI.TextSize = 14.000
	NameUI.TextWrapped = true
	NameUI.TextXAlignment = Enum.TextXAlignment.Left

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Main
	TabFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0.0482954532, 0, 0.136212617, 0)
	TabFrame.Size = UDim2.new(0, 315, 0, 25)

	UIListLayout.Parent = TabFrame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Thanh.Name = "Thanh"
	Thanh.Parent = Main

	Thanh_2.Name = "Thanh"
	Thanh_2.Parent = Thanh
	Thanh_2.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Thanh_2.BorderSizePixel = 0
	Thanh_2.Position = UDim2.new(0.9375, 0, 0.225913614, 0)
	Thanh_2.Size = UDim2.new(0, 2, 0, 210)

	Thanh_3.Name = "Thanh"
	Thanh_3.Parent = Thanh
	Thanh_3.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Thanh_3.BorderSizePixel = 0
	Thanh_3.Position = UDim2.new(0.0454545468, 0, 0.219269097, 0)
	Thanh_3.Size = UDim2.new(0, 316, 0, 2)

	Thanh_4.Name = "Thanh"
	Thanh_4.Parent = Thanh
	Thanh_4.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Thanh_4.BorderSizePixel = 0
	Thanh_4.Position = UDim2.new(0.0454545468, 0, 0.225913614, 0)
	Thanh_4.Size = UDim2.new(0, 2, 0, 210)

	Thanh_5.Name = "Thanh"
	Thanh_5.Parent = Thanh
	Thanh_5.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Thanh_5.BorderSizePixel = 0
	Thanh_5.Position = UDim2.new(0.0454545468, 0, 0.91694355, 0)
	Thanh_5.Size = UDim2.new(0, 316, 0, 2)

	Page.Name = "Page"
	Page.Parent = Main
	local Tabs = {}
	function Tabs.AddTabs(nametab) 

		local TabsButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local Page2 = Instance.new("ScrollingFrame")
		local UIListLayout2 = Instance.new("UIListLayout")

		local function UpdateSize()
			local cS = UIListLayout2.AbsoluteContentSize
			local Tween = game.TweenService:Create(Page2, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CanvasSize = UDim2.new(0,cS.X,0,cS.Y)})
			Tween:Play()
		end

		TabsButton.Name = "TabsButton"
		TabsButton.Parent = TabFrame
		TabsButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
		TabsButton.BorderSizePixel = 0
		TabsButton.Position = UDim2.new(0.0549999997, 0, 0, 0)
		TabsButton.Size = UDim2.new(0, 53, 0, 25)
		TabsButton.Font = Enum.Font.SourceSans
		TabsButton.Text = nametab
		TabsButton.TextColor3 = Color3.fromRGB(205, 205, 205)
		TabsButton.TextScaled = true
		TabsButton.TextSize = 14.000
		TabsButton.TextWrapped = true

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = TabsButton

		Page2.Name = "Page"
		Page2.Parent = Page
		Page2.Active = true
		Page2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		Page2.BorderSizePixel = 0
		Page2.Position = UDim2.new(0.0649999976, 0, 0.238999993, 0)
		Page2.Size = UDim2.new(0, 303, 0, 198)
		Page2.ScrollBarThickness = 0

		UIListLayout2.Parent = Page2
		UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout2.Padding = UDim.new(0, 4)

		Page2.ChildAdded:Connect(UpdateSize)
		Page2.ChildRemoved:Connect(UpdateSize)

		TabsButton.MouseButton1Click:Connect(function()
			for i,v in pairs(Page:GetChildren()) do
				v.Visible = false
			end
			for i,v in pairs(TabFrame:GetChildren()) do
				if v.Name ~= "UIListLayout" then
					v.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
				end
				Page2.Visible = true
				TabsButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
			end   
		end)
		local Items = {}
		function Items.Btn(namebtn,callback) 

			local Button = Instance.new("Frame")
			local ButtonCorner = Instance.new("UICorner")
			local ClicksButton = Instance.new("TextButton")
			local ClicksButtonCorner = Instance.new("UICorner")


			Button.Name = "Button"
			Button.Parent = Page2
			Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
			Button.Size = UDim2.new(0, 303, 0, 37)

			ButtonCorner.CornerRadius = UDim.new(0, 4)
			ButtonCorner.Name = "ButtonCorner"
			ButtonCorner.Parent = Button

			ClicksButton.Name = "ClicksButton"
			ClicksButton.Parent = Button
			ClicksButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ClicksButton.BackgroundTransparency = 1.000
			ClicksButton.BorderColor3 = Color3.fromRGB(205, 205, 205)
			ClicksButton.BorderSizePixel = 0
			ClicksButton.Text = namebtn
			ClicksButton.Position = UDim2.new(0.00330022932, 0, 0.0810810775, 0)
			ClicksButton.Size = UDim2.new(0, 303, 0, 32)
			ClicksButton.Font = Enum.Font.SourceSans
			ClicksButton.TextColor3 = Color3.fromRGB(205, 205, 205)
			ClicksButton.TextScaled = true
			ClicksButton.TextSize = 14.000
			ClicksButton.TextWrapped = true

			ClicksButtonCorner.CornerRadius = UDim.new(0, 4)
			ClicksButtonCorner.Name = "ClicksButtonCorner"
			ClicksButtonCorner.Parent = ClicksButton
			UpdateSize()
			ClicksButton.MouseButton1Click:Connect(function()
				local Mouse = game.Players.LocalPlayer:GetMouse()
				CircleClick(ClicksButton, Mouse.X, Mouse.Y)
				pcall(callback)    
			end)
		end
		function Items.AddToggle(nametoggle,callback)
			local Toggle = Instance.new("Frame")
			local ToggleCorner = Instance.new("UICorner")
			local NameToggle = Instance.new("TextLabel")
			local ToggleButton = Instance.new("TextButton")

			Toggle.Name = "Toggle"
			Toggle.Parent = Page2
			Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
			Toggle.Size = UDim2.new(0, 303, 0, 37)

			ToggleCorner.CornerRadius = UDim.new(0, 4)
			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = Toggle

			NameToggle.Name = "NameToggle"
			NameToggle.Parent = Toggle
			NameToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NameToggle.BackgroundTransparency = 1.000
			NameToggle.BorderSizePixel = 0
			NameToggle.Size = UDim2.new(0, 191, 0, 37)
			NameToggle.Font = Enum.Font.SourceSans
			NameToggle.Text = nametoggle
			NameToggle.TextColor3 = Color3.fromRGB(205, 205, 205)
			NameToggle.TextScaled = true
			NameToggle.TextSize = 14.000
			NameToggle.TextWrapped = true

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = Toggle
			ToggleButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
			ToggleButton.BorderColor3 = Color3.fromRGB(205, 205, 205)
			ToggleButton.BorderSizePixel = 2
			ToggleButton.Position = UDim2.new(0.858085811, 0, 0.216216221, 0)
			ToggleButton.Size = UDim2.new(0, 20, 0, 20)
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = ""
			ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.TextSize = 14.000
			UpdateSize()
			local Toggletool = false
			ToggleButton.MouseButton1Click:Connect(function()
				if Toggletool == false then
					ToggleButton.BackgroundColor3 = Color3.fromRGB(250,250,250)
					Toggletool = true
					pcall(callback,Toggletool)
				elseif Toggletool == true then
					ToggleButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
					Toggletool = false
					pcall(callback,Toggletool)
				end
			end)
		end
		function Items.AddSlider(namesliderr,min,max,callback)
			local Slider = Instance.new("Frame")
			local SliderCorner = Instance.new("UICorner")
			local Sliderframe = Instance.new("Frame")
			local SliderCorner_2 = Instance.new("UICorner")
			local Sliderbutton = Instance.new("TextButton")
			local SliderCorner_3 = Instance.new("UICorner")
			local Sliderframe_2 = Instance.new("Frame")
			local SliderCorner_4 = Instance.new("UICorner")
			local NameSlider = Instance.new("TextLabel")
			local Min = Instance.new("TextLabel")
			local Max = Instance.new("TextLabel")
			local TextLabel = Instance.new("TextLabel")

			Slider.Name = "Slider"
			Slider.Parent = Page2
			Slider.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
			Slider.Position = UDim2.new(0, 0, 0.00664451811, 0)
			Slider.Size = UDim2.new(0, 303, 0, 37)

			SliderCorner.CornerRadius = UDim.new(0, 4)
			SliderCorner.Name = "SliderCorner"
			SliderCorner.Parent = Slider

			Sliderframe.Name = "Sliderframe"
			Sliderframe.Parent = Slider
			Sliderframe.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
			Sliderframe.Position = UDim2.new(0.0726072639, 0, 0.621621609, 0)
			Sliderframe.Size = UDim2.new(0, 258, 0, 6)

			SliderCorner_2.CornerRadius = UDim.new(0, 4)
			SliderCorner_2.Name = "SliderCorner"
			SliderCorner_2.Parent = Sliderframe

			Sliderbutton.Name = "Sliderbutton"
			Sliderbutton.Parent = Sliderframe
			Sliderbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			Sliderbutton.BackgroundTransparency = 1.000
			Sliderbutton.Size = UDim2.new(0, 258, 0, 6)
			Sliderbutton.Font = Enum.Font.SourceSans
			Sliderbutton.Text = ""
			Sliderbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
			Sliderbutton.TextSize = 14.000

			SliderCorner_3.CornerRadius = UDim.new(0, 4)
			SliderCorner_3.Name = "SliderCorner"
			SliderCorner_3.Parent = Sliderbutton

			Sliderframe_2.Name = "Sliderframe"
			Sliderframe_2.Parent = Sliderframe
			Sliderframe_2.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			Sliderframe_2.Size = UDim2.new(0, 191, 0, 6)

			SliderCorner_4.CornerRadius = UDim.new(0, 4)
			SliderCorner_4.Name = "SliderCorner"
			SliderCorner_4.Parent = Sliderframe_2

			NameSlider.Name = "NameSlider"
			NameSlider.Parent = Slider
			NameSlider.BackgroundColor3 = Color3.fromRGB(205, 205, 205)
			NameSlider.BackgroundTransparency = 1.000
			NameSlider.BorderSizePixel = 0
			NameSlider.Position = UDim2.new(0.178217828, 0, 0, 0)
			NameSlider.Size = UDim2.new(0, 200, 0, 23)
			NameSlider.Font = Enum.Font.SourceSans
			NameSlider.Text = namesliderr
			NameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
			NameSlider.TextScaled = true
			NameSlider.TextSize = 14.000
			NameSlider.TextWrapped = true

			Min.Name = "Min"
			Min.Parent = Slider
			Min.BackgroundColor3 = Color3.fromRGB(205, 205, 205)
			Min.BackgroundTransparency = 1.000
			Min.BorderSizePixel = 0
			Min.Position = UDim2.new(0.0165016502, 0, 0, 0)
			Min.Size = UDim2.new(0, 30, 0, 23)
			Min.Font = Enum.Font.SourceSans
			Min.Text = tostring(min)
			Min.TextColor3 = Color3.fromRGB(255, 255, 255)
			Min.TextScaled = true
			Min.TextSize = 14.000
			Min.TextWrapped = true

			Max.Name = "Max"
			Max.Parent = Slider
			Max.BackgroundColor3 = Color3.fromRGB(205, 205, 205)
			Max.BackgroundTransparency = 1.000
			Max.BorderSizePixel = 0
			Max.Position = UDim2.new(0.881188095, 0, 0, 0)
			Max.Size = UDim2.new(0, 30, 0, 23)
			Max.Font = Enum.Font.SourceSans
			Max.Text = tostring(max)
			Max.TextColor3 = Color3.fromRGB(255, 255, 255)
			Max.TextScaled = true
			Max.TextSize = 14.000
			Max.TextWrapped = true

			TextLabel.Parent = Sliderframe_2
			TextLabel.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.928035378, 0, -3.66666651, 0)
			TextLabel.Size = UDim2.new(0, 30, 0, 22)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = tostring(min)
			TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.Visible = false
			UpdateSize()
			local Value = 0
			Sliderbutton.MouseButton1Down:Connect(function()
				local mouse = game.Players.LocalPlayer:GetMouse()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 258) * Sliderframe_2.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				Sliderframe_2:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderframe_2.AbsolutePosition.X, 0, 258), 0, 6), "InOut", "Linear", 0.05, true)
				TextLabel.Visible = true
				moveconnection = mouse.Move:Connect(function()
					TextLabel.Text = Value
					TextLabel.Visible = true
					Value = math.floor((((tonumber(max) - tonumber(min)) / 258) * Sliderframe_2.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					Sliderframe_2:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderframe_2.AbsolutePosition.X, 0, 258), 0, 6), "InOut", "Linear", 0.05, true)
				end)
				releaseconnection = UIS.InputEnded:Connect(function(Mousee)
					if Mousee.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 258) * Sliderframe_2.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						TextLabel.Text = Value
						TextLabel.Visible = true
						Sliderframe_2:TweenSize(UDim2.new(0, math.clamp(mouse.X - Sliderframe_2.AbsolutePosition.X, 0, 258), 0, 6), "InOut", "Linear", 0.05, true)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
						TextLabel.Visible = false
					end
				end)
			end)
		end  
		return Items
	end 
	return Tabs
end
return Hub
