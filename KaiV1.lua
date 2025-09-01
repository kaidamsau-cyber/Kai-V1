local p = game.Players.LocalPlayer
local g = Instance.new("ScreenGui")
g.Name = "IntroKaiMenu"
g.Parent = p:WaitForChild("PlayerGui")

-- Khung chính
local f = Instance.new("Frame")
f.Size = UDim2.new(0, 450, 0, 250)
f.Position = UDim2.new(0.5, -225, 0.5, -125)
f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
f.BorderSizePixel = 0
f.Parent = g
Instance.new("UICorner", f)

-- Tiêu đề
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "🔥 Kai Menu 🔥"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 28
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = f

-- Thông tin
local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -20, 0, 100)
info.Position = UDim2.new(0, 10, 0, 60)
info.BackgroundTransparency = 1
info.Text = "Chào mừng bạn đến với KaiTool!\nLiên hệ để mua/bán tool.\nMenu có hiệu ứng bảy màu ✨"
info.TextWrapped = true
info.Font = Enum.Font.SourceSans
info.TextSize = 20
info.TextColor3 = Color3.fromRGB(200, 200, 200)
info.Parent = f

-- Nút định vị
local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 200, 0, 40)
btn.Position = UDim2.new(0.5, -100, 1, -60)
btn.BackgroundColor3 = Color3.fromRGB(60, 120, 255)
btn.Text = "📍 Định Vị Người Chơi"
btn.TextColor3 = Color3.new(1,1,1)
btn.Font = Enum.Font.SourceSansBold
btn.TextSize = 20
btn.Parent = f
Instance.new("UICorner", btn)

-- Hàm tạo ESP
local function createESP(target)
    if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        -- Billboard hiển thị tên
        local bill = Instance.new("BillboardGui")
        bill.Adornee = target.Character.HumanoidRootPart
        bill.Size = UDim2.new(0, 100, 0, 30)
        bill.StudsOffset = Vector3.new(0, 3, 0)
        bill.AlwaysOnTop = true
        bill.Parent = target.Character

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1,0,1,0)
        label.BackgroundTransparency = 1
        label.Text = target.Name
        label.Font = Enum.Font.SourceSansBold
        label.TextSize = 16
        label.TextColor3 = Color3.fromRGB(0,255,0)
        label.Parent = bill

        -- SelectionBox (khung xanh lá)
        local box = Instance.new("SelectionBox")
        box.Adornee = target.Character
        box.LineThickness = 0.05
        box.Color3 = Color3.fromRGB(0,255,0)
        box.SurfaceTransparency = 1
        box.Parent = target.Character
    end
end

-- Khi bấm nút → thêm ESP cho tất cả player khác
btn.MouseButton1Click:Connect(function()
    info.Text = "📍 Đã bật định vị người chơi"
    for _,plr in pairs(game.Players:GetPlayers()) do
        if plr ~= p then
            createESP(plr)
        end
    end
    -- Nếu người mới vào thì tự thêm luôn
    game.Players.PlayerAdded:Connect(function(plr)
        plr.CharacterAdded:Connect(function()
            task.wait(1)
            createESP(plr)
        end)
    end)
end)

-- Hiệu ứng bảy màu cho tiêu đề
task.spawn(function()
    while task.wait(0.1) do
        local t = tick()
        title.TextColor3 = Color3.fromHSV((t % 5) / 5, 1, 1)
    end
end)
