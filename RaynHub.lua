-- Rayn Hub
-- Roblox Studio-safe starter
-- Place this LocalScript in StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local player = Players.LocalPlayer

print("[Rayn Hub] Loaded for " .. player.Name)

-- UI entry point
local gui = Instance.new("ScreenGui")
gui.Name = "RaynHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "Main"
frame.Size = UDim2.fromOffset(420, 280)
frame.Position = UDim2.fromScale(0.5, 0.5)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(24, 20, 32)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -24, 0, 42)
title.Position = UDim2.fromOffset(12, 8)
title.BackgroundTransparency = 1
title.Text = "Rayn Hub"
title.TextColor3 = Color3.fromRGB(220, 190, 255)
title.TextSize = 24
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = frame

local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -24, 0, 80)
info.Position = UDim2.fromOffset(12, 58)
info.BackgroundTransparency = 1
info.Text = "Rayn Hub berhasil dimuat.\nVersi Roblox Studio-safe."
info.TextColor3 = Color3.fromRGB(230, 225, 235)
info.TextSize = 16
info.Font = Enum.Font.Gotham
info.TextWrapped = true
info.TextXAlignment = Enum.TextXAlignment.Left
info.Parent = frame

local close = Instance.new("TextButton")
close.Size = UDim2.fromOffset(100, 38)
close.Position = UDim2.new(1, -112, 1, -50)
close.BackgroundColor3 = Color3.fromRGB(110, 70, 150)
close.Text = "Close"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 15
close.Font = Enum.Font.GothamBold
close.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = close

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
