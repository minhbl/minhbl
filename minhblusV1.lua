local Minhblus = {}
local UI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")

function Minhblus:CreateLib(Name)
UI.Name = "UI"
UI.Parent = game:GetService("CoreGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = UI
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Position = UDim2.new(0.287729204, 0, 0.204933584, 0)
Main.Size = UDim2.new(0, 300, 0, 311)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Main

ManSec.Name = "ManSec"
ManSec.Parent = Main
ManSec.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ManSec.BorderSizePixel = 0
ManSec.Position = UDim2.new(0.0332519524, 0, 0.148470581, 0)
ManSec.Size = UDim2.new(0, 280, 0, 252)

UIListLayout.Parent = ManSec
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

local toggle = {}
function toggle:ToggleFrame(namee)
    
ToggerFrame.Name = "ToggerFrame"
ToggerFrame.Parent = ManSec
ToggerFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ToggerFrame.BackgroundTransparency = 1.000
ToggerFrame.BorderSizePixel = 0
ToggerFrame.Size = UDim2.new(0, 119, 0, 37)

Togger.Name = "Toggle"
Togger.Parent = ToggerFrame
Togger.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Togger.BorderColor3 = Color3.fromRGB(50, 50, 50)
Togger.BorderSizePixel = 2
Togger.Position = UDim2.new(0.649999976, 0, 0, 0)
Togger.Size = UDim2.new(0, 45, 0, 37)
Togger.Font = Enum.Font.Cartoon
Togger.Text = ""
Togger.TextColor3 = Color3.fromRGB(255, 255, 255)
Togger.TextScaled = true
Togger.TextSize = 14.000
Togger.TextWrapped = true

Name.Name = "Name"
Name.Parent = ToggerFrame
Name.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(-0.00533726811, 0, 0, 0)
Name.Size = UDim2.new(0, 74, 0, 37)
Name.Font = Enum.Font.Cartoon
Name.Text = namee
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true
end
return toggle
end
return Minhblus
