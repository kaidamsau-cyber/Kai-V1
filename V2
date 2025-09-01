local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "KaiMenu"
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame chính (menu)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 300)
frame.Position = UDim2.new(0.5, -250, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.Visible = true
frame.Parent = gui
Instance.new("UICorner", frame)

-- Tiêu đề
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.Text = "🔥 Kai Menu 🔥"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.FredokaOne
title.TextSize = 28
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = frame

-- Nút X (ẩn menu)
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.BackgroundColor3 = Color3.fromRGB(200,0,0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 20
closeBtn.Parent = frame
Instance.new("UICorner", closeBtn)

-- Icon khi menu ẩn
local icon = Instance.new("ImageButton")
icon.Size = UDim2.new(0, 60, 0, 60)
icon.Position = UDim2.new(0, 20, 0.9, -60)
icon.BackgroundTransparency = 1
icon.Image = "rbxassetid://13771425708" -- thay bằng ID ảnh bạn muốn
icon.Visible = false
icon.Parent = gui

-- Sự kiện ẩn/hiện menu
closeBtn.MouseButton1Click:Connect(function()
    frame.Visible = false
    icon.Visible = true
end)

icon.MouseButton1Click:Connect(function()
    frame.Visible = true
    icon.Visible = false
end)

-- Nội dung ví dụ trong menu
local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -20, 1, -60)
info.Position = UDim2.new(0, 10, 0, 50)
info.BackgroundTransparency = 1
info.Text = "Đây là giao diện KaiTool\nBạn có thể thêm các mục config ở đây!"
info.TextWrapped = true
info.Font = Enum.Font.Gotham
info.TextSize = 20
info.TextColor3 = Color3.fromRGB(200,200,200)
info.Parent = frame
