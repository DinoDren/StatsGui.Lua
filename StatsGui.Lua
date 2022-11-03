

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Username = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Health = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Motor = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local HPLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 0.300
main.Position = UDim2.new(0, 0, 0.702811241, 0)
main.Size = UDim2.new(0, 343, 0, 148)
main.Active = true
main.Draggable = true

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
ImageLabel.Position = UDim2.new(0, 0, 0.162162155, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = ImageLabel

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = main

Username.Name = "Username"
Username.Parent = main
Username.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Username.Position = UDim2.new(0.329446077, 0, 0.162162155, 0)
Username.Size = UDim2.new(0, 200, 0, 41)
Username.Font = Enum.Font.SourceSans
Username.Text = "Username"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextSize = 18.000

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Username

Health.Name = "Health"
Health.Parent = main
Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Health.Position = UDim2.new(0.329446077, 0, 0.682432413, 0)
Health.Size = UDim2.new(0, 200, 0, 35)

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Health

Motor.Name = "Motor"
Motor.Parent = Health
Motor.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Motor.Size = UDim2.new(0, 200, 0, 35)

UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = Motor

HPLabel.Name = "HPLabel"
HPLabel.Parent = Motor
HPLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
HPLabel.BackgroundTransparency = 1.000
HPLabel.Position = UDim2.new(0.254999995, 0, 0, 0)
HPLabel.Size = UDim2.new(0, 92, 0, 35)
HPLabel.Font = Enum.Font.DenkOne
HPLabel.Text = "HP"
HPLabel.TextColor3 = Color3.fromRGB(255, 0, 4)
HPLabel.TextSize = 20.000

-- Scripts:

local function XLQJWPY_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	local image = script.Parent
	image.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
	
end
coroutine.wrap(XLQJWPY_fake_script)()
local function MSZM_fake_script() -- Username.LocalScript 
	local script = Instance.new('LocalScript', Username)

	local player = game.Players.LocalPlayer
	
	if player then
		script.Parent.Text = ""..player.Name..""
	end
	
end
coroutine.wrap(MSZM_fake_script)()
local function SPPJN_fake_script() -- Motor.LocalScript 
	local script = Instance.new('LocalScript', Motor)

	local p = game.Players.LocalPlayer or game.Players.PlayerAdded:Wait()
	local c = p.Character or p.CharacterAdded:Wait()
	local h = c:WaitForChild("Humanoid")
	local hg = script.Parent
	
	h:GetPropertyChangedSignal("Health"):Connect(function()
		local hc = Color3.fromRGB(255,0,0):Lerp(Color3.fromRGB(85,255),h.Health/h.MaxHealth)
		local hch = h.Health/h.MaxHealth
		hg:TweenSize(UDim2.new(hch,0,1,0), "In","Linear",1)
		hg.BackgroundColor3 = hc
		hg.TextLabel.Text = h.Health.."/"..h.MaxHealth
	end)
	
end
coroutine.wrap(SPPJN_fake_script)()
