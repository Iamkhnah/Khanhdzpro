for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
	if v.Name == "Synet Hub" then
		v:Destroy()
	end
end

local SynetHub = Instance.new("ScreenGui")
local Logo = Instance.new("ImageButton")

-- Properties

SynetHub.Name = "Synet Hub"
SynetHub.Parent = game:GetService("CoreGui")
SynetHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Logo.Name = "Logo"
Logo.Parent = SynetHub
Logo.BackgroundColor3 = Color3.new(1, 1, 1)
Logo.BackgroundTransparency = 1
Logo.BorderColor3 = Color3.new(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.128236741, 0, 0.321138203, 0)
Logo.Size = UDim2.new(0, 50, 0, 70)
Logo.Image = "http://www.roblox.com/asset/?id=102057437006663"


local Main = game:GetService("CoreGui"):WaitForChild("Synet Ui")
Logo.Draggable = true
ischecked = fasle
Logo.MouseButton1Down:Connect(function()
	if ischecked then
		Main.Enabled = true
	else
		Main.Enabled = false
	end
	ischecked = not ischecked
end)
