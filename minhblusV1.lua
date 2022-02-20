local Hub = ()

function Hub:CreateLib(name)
local UI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local NameUI = Instance.new("TextLabel")
local TabFrame = Instance.new("Frame")
local Thanh = Instance.new("Folder")
local Thanh_2 = Instance.new("Frame")
local Thanh_3 = Instance.new("Frame")
local Thanh_4 = Instance.new("Frame")
local Thanh_5 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Page = Instance.new("Folder")

local LibName = tostring(math.random(1, 100))..tostring(math.random(1,50))..tostring(math.random(1, 100))

UI.Name = LibName
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.185459942, 0, 0.214421257, 0)
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
NameUI.Text = name
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
function Hub:CreateTab(name)
local UIListLayout_2 = Instance.new("UIListLayout")
local Page_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

Page_2.Name = "Page"
Page_2.Parent = Page
Page_2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Page_2.BorderSizePixel = 0
Page_2.Position = UDim2.new(0.0653409064, 0, 0.239202663, 0)
Page_2.Size = UDim2.new(0, 303, 0, 198)

UIListLayout_2.Parent = Page_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

TextButton.Parent = TabFrame
TextButton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0549999997, 0, 0, 0)
TextButton.Size = UDim2.new(0, 53, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = name
TextButton.TextColor3 = Color3.fromRGB(205, 205, 205)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = TextButton
TextButton.MouseButton1Click:Connect(function()
    for i,v in Page:GetChildren() do
    v.Visible = false    
    end
    Page_2.Visible = true
end)
end
end
return Hub
