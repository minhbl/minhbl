local minhblus = {}

function minhblus:CreLib(name,verr)
local UI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Tabs = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TabMain = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Tabs_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local MainSecl = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Secl = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local NameUi = Instance.new("TextLabel")
local Ver = Instance.new("TextLabel")

UI.Name = "UI"
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.192034125, 0, 0.216318801, 0)
Main.Size = UDim2.new(0, 432, 0, 298)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Main

Tabs.Name = "Tabs"
Tabs.Parent = Main
Tabs.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0.020833334, 0, 0.110738255, 0)
Tabs.Size = UDim2.new(0, 100, 0, 254)

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Tabs

TabMain.Name = "TabMain"
TabMain.Parent = Tabs
TabMain.Active = true
TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabMain.BackgroundTransparency = 1.000
TabMain.BorderSizePixel = 0
TabMain.Position = UDim2.new(0, 0, 0.0433070883, 0)
TabMain.Size = UDim2.new(0, 100, 0, 230)
TabMain.BottomImage = ""
TabMain.MidImage = ""
TabMain.TopImage = ""

UIListLayout.Parent = TabMain
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

Tabs_2.Name = "Tabs"
Tabs_2.Parent = TabMain
Tabs_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Tabs_2.BorderSizePixel = 0
Tabs_2.Position = UDim2.new(0.159999996, 0, 0, 0)
Tabs_2.Size = UDim2.new(0, 77, 0, 35)
Tabs_2.Font = Enum.Font.Cartoon
Tabs_2.Text = "Main"
Tabs_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tabs_2.TextScaled = true
Tabs_2.TextSize = 14.000
Tabs_2.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Tabs_2

MainSecl.Name = "MainSecl"
MainSecl.Parent = Main
MainSecl.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
MainSecl.BorderSizePixel = 0
MainSecl.Position = UDim2.new(0.280092597, 0, 0.110738255, 0)
MainSecl.Size = UDim2.new(0, 298, 0, 254)

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = MainSecl

Secl.Name = "Secl"
Secl.Parent = MainSecl
Secl.Active = true
Secl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Secl.BackgroundTransparency = 1.000
Secl.BorderSizePixel = 0
Secl.Position = UDim2.new(0.0402684547, 0, 0.0433070883, 0)
Secl.Size = UDim2.new(0, 286, 0, 229)
Secl.BottomImage = ""
Secl.MidImage = ""
Secl.TopImage = ""

UIListLayout_2.Parent = Secl
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 8)


NameUi.Name = "NameUi"
NameUi.Parent = Main
NameUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameUi.BackgroundTransparency = 1.000
NameUi.BorderSizePixel = 0
NameUi.Position = UDim2.new(0.020833334, 0, 0, 0)
NameUi.Size = UDim2.new(0, 100, 0, 33)
NameUi.Font = Enum.Font.Cartoon
NameUi.Text = name
NameUi.TextColor3 = Color3.fromRGB(255, 255, 255)
NameUi.TextScaled = true
NameUi.TextSize = 14.000
NameUi.TextWrapped = true
NameUi.TextXAlignment = Enum.TextXAlignment.Left

Ver.Name = "Ver"
Ver.Parent = Main
Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ver.BackgroundTransparency = 1.000
Ver.BorderSizePixel = 0
Ver.Position = UDim2.new(0.73842591, 0, 0, 0)
Ver.Size = UDim2.new(0, 100, 0, 33)
Ver.Font = Enum.Font.Cartoon
Ver.Text = verr
Ver.TextColor3 = Color3.fromRGB(255, 255, 255)
Ver.TextScaled = true
Ver.TextSize = 14.000
Ver.TextWrapped = true
end
return minhblus
