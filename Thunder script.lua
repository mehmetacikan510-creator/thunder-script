-- THUNDER BUTTON HUB v2 | Menü Aç/Kapat + Key 31 + Toggle
-- Loadstring ile çalıştırılabilir

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- ==================== KEY SİSTEMİ ====================
local KEY_DOGRU = "31"
local keyGirildi = false

local function KeyKontrol()
    local KeyGui = Instance.new("ScreenGui")
    KeyGui.Name = "THUNDER_KEY"
    KeyGui.ResetOnSpawn = false
    KeyGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 280, 0, 150)
    Frame.Position = UDim2.new(0.5, -140, 0.5, -75)
    Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = KeyGui

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = Frame

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(255, 30, 30)
    Stroke.Thickness = 1.5
    Stroke.Parent = Frame

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 35)
    Title.BackgroundColor3 = Color3.fromRGB(25, 0, 0)
    Title.Text = "THUNDER KEY"
    Title.TextColor3 = Color3.fromRGB(255, 50, 50)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 15
    Title.Parent = Frame

    local TC = Instance.new("UICorner")
    TC.CornerRadius = UDim.new(0, 10)
    TC.Parent = Title

    local Input = Instance.new("TextBox")
    Input.Size = UDim2.new(1, -40, 0, 35)
    Input.Position = UDim2.new(0, 20, 0, 50)
    Input.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Input.Text = ""
    Input.PlaceholderText = "Key gir..."
    Input.TextColor3 = Color3.fromRGB(255, 255, 255)
    Input.Font = Enum.Font.Gotham
    Input.TextSize = 14
    Input.Parent = Frame

    local IC = Instance.new("UICorner")
    IC.CornerRadius = UDim.new(0, 6)
    IC.Parent = Input

    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, -40, 0, 35)
    Btn.Position = UDim2.new(0, 20, 0, 95)
    Btn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
    Btn.Text = "DOĞRULA"
    Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Btn.Font = Enum.Font.GothamBold
    Btn.TextSize = 14
    Btn.Parent = Frame

    local BC = Instance.new("UICorner")
    BC.CornerRadius = UDim.new(0, 6)
    BC.Parent = Btn

    Btn.MouseButton1Click:Connect(function()
        if Input.Text == KEY_DOGRU then
            keyGirildi = true
            Btn.Text = "DOĞRU"
            Btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
            task.wait(0.4)
            KeyGui:Destroy()
        else
            Btn.Text = "YANLIŞ KEY"
            Btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            task.wait(1)
            Btn.Text = "DOĞRULA"
            Btn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
        end
    end)
end

KeyKontrol()

while not keyGirildi do
    task.wait(0.1)
end

-- ==================== MENÜ AÇ/KAPAT BUTONU ====================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "THUNDER_MENU"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Position = UDim2.new(1, -70, 0, 60)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
ToggleBtn.Text = "T"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 20
ToggleBtn.Parent = ScreenGui

local TBC = Instance.new("UICorner")
TBC.CornerRadius = UDim.new(1, 0)
TBC.Parent = ToggleBtn

local TBStroke = Instance.new("UIStroke")
TBStroke.Color = Color3.fromRGB(255, 100, 100)
TBStroke.Thickness = 2
TBStroke.Parent = ToggleBtn

-- ==================== ANA MENÜ ====================
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 220, 0, 180)
Main.Position = UDim2.new(0.5, -110, 0.5, -90)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Visible = false
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(255, 30, 30)
MainStroke.Thickness = 1.5
MainStroke.Parent = Main

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

local PrisonBtn = Instance.new("TextButton")
PrisonBtn.Size = UDim2.new(1, -20, 0, 45)
PrisonBtn.Position = UDim2.new(0, 10, 0, 46)
PrisonBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
PrisonBtn.Text = "PRISON LIFE: KAPALI"
PrisonBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
PrisonBtn.Font = Enum.Font.GothamBold
PrisonBtn.TextSize = 13
PrisonBtn.Parent = Main

local PrisonCorner = Instance.new("UICorner")
PrisonCorner.CornerRadius = UDim.new(0, 6)
PrisonCorner.Parent = PrisonBtn

local AimBtn = Instance.new("TextButton")
AimBtn.Size = UDim2.new(1, -20, 0, 45)
AimBtn.Position = UDim2.new(0, 10, 0, 100)
AimBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
AimBtn.Text = "AIMBOT: KAPALI"
AimBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
AimBtn.Font = Enum.Font.GothamBold
AimBtn.TextSize = 13
AimBtn.Parent = Main

local AimCorner = Instance.new("UICorner")
AimCorner.CornerRadius = UDim.new(0, 6)
AimCorner.Parent = AimBtn

-- ==================== MENÜ AÇ/KAPAT ====================
ToggleBtn.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

-- ==================== TOGGLE MANTIĞI ====================
local prisonYuklendi = false
local aimYuklendi = false
local prisonAktif = false
local aimAktif = false

PrisonBtn.MouseButton1Click:Connect(function()
    if not prisonYuklendi then
        PrisonBtn.Text = "YÜKLENİYOR..."
        PrisonBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
        local ok, err = pcall(function()
            loadstring(game:HttpGet("https://scripts.getv3.lol/sportsclub.luau"))()
        end)
        if ok then
            prisonYuklendi = true
            prisonAktif = true
            PrisonBtn.Text = "PRISON LIFE: AÇIK"
            PrisonBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            PrisonBtn.Text = "HATA"
            PrisonBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            warn("Prison Life hatası: " .. tostring(err))
        end
    else
        prisonAktif = not prisonAktif
        if prisonAktif then
            PrisonBtn.Text = "PRISON LIFE: AÇIK"
            PrisonBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            PrisonBtn.Text = "PRISON LIFE: KAPALI"
            PrisonBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        end
    end
end)

AimBtn.MouseButton1Click:Connect(function()
    if not aimYuklendi then
        AimBtn.Text = "YÜKLENİYOR..."
        AimBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
        local ok, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pancakes-pan/Roblox-Soft-Aimlock/refs/heads/main/main.lua"))()
        end)
        if ok then
            aimYuklendi = true
            aimAktif = true
            AimBtn.Text = "AIMBOT: AÇIK"
            AimBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            AimBtn.Text = "HATA"
            AimBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            warn("Aimbot hatası: " .. tostring(err))
        end
    else
        aimAktif = not aimAktif
        if aimAktif then
            AimBtn.Text = "AIMBOT: AÇIK"
            AimBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            AimBtn.Text = "AIMBOT: KAPALI"
            AimBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        end
    end
end)

pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "THUNDER HUB v2",
        Text = "Key: 31 | Sağ üstteki T butonu menüyü açar/kapatır.",
        Duration = 6
    })
end)