-- THUNDER BUTTON HUB | Prison Life + Aimbot
-- Loadstring ile çalıştırılabilir

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ==================== GUI ====================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "THUNDER_BUTTONS"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 220, 0, 180)
Main.Position = UDim2.new(0.5, -110, 0.5, -90)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = Main

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(255, 30, 30)
Stroke.Thickness = 1.5
Stroke.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 36)
Title.BackgroundColor3 = Color3.fromRGB(25, 0, 0)
Title.Text = "THUNDER HUB"
Title.TextColor3 = Color3.fromRGB(255, 50, 50)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.Parent = Main

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = Title

-- Prison Life Butonu
local PrisonBtn = Instance.new("TextButton")
PrisonBtn.Size = UDim2.new(1, -20, 0, 45)
PrisonBtn.Position = UDim2.new(0, 10, 0, 46)
PrisonBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
PrisonBtn.Text = "PRISON LIFE"
PrisonBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
PrisonBtn.Font = Enum.Font.GothamBold
PrisonBtn.TextSize = 14
PrisonBtn.Parent = Main

local PrisonCorner = Instance.new("UICorner")
PrisonCorner.CornerRadius = UDim.new(0, 6)
PrisonCorner.Parent = PrisonBtn

-- Aimbot Butonu
local AimBtn = Instance.new("TextButton")
AimBtn.Size = UDim2.new(1, -20, 0, 45)
AimBtn.Position = UDim2.new(0, 10, 0, 100)
AimBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
AimBtn.Text = "AIMBOT"
AimBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
AimbotFont = Enum.Font.GothamBold
AimBtn.Font = Enum.Font.GothamBold
AimBtn.TextSize = 14
AimBtn.Parent = Main

local AimCorner = Instance.new("UICorner")
AimCorner.CornerRadius = UDim.new(0, 6)
AimCorner.Parent = AimBtn

-- ==================== BUTON MANTIĞI ====================
local loading = false

PrisonBtn.MouseButton1Click:Connect(function()
    if loading then return end
    loading = true
    PrisonBtn.Text = "YÜKLENİYOR..."
    PrisonBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
    
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/stoneworkerdape23/Prison-Life-Script/main/main.lua"))()
    end)
    
    if success then
        PrisonBtn.Text = "YÜKLENDİ"
        PrisonBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    else
        PrisonBtn.Text = "HATA"
        PrisonBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        warn("Prison Life script hatası: " .. tostring(err))
    end
    loading = false
end)

AimBtn.MouseButton1Click:Connect(function()
    if loading then return end
    loading = true
    AimBtn.Text = "YÜKLENİYOR..."
    AimBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
    
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pancakes-pan/Roblox-Soft-Aimlock/refs/heads/main/main.lua"))()
    end)
    
    if success then
        AimBtn.Text = "YÜKLENDİ"
        AimBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    else
        AimBtn.Text = "HATA"
        AimBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        warn("Aimbot script hatası: " .. tostring(err))
    end
    loading = false
end)

-- Bildirim
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "THUNDER HUB",
        Text = "Butonlar hazır. Tıkla ve hileyi yükle.",
        Duration = 5
    })
end)
