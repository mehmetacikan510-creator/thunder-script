-- THUNDER BUTTON HUB | Prison Life (Keysiz) + Aimbot (Toggle + Key)
-- Loadstring ile çalıştırılabilir

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ==================== KEY SİSTEMİ ====================
local function KeyKontrol()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "THUNDER_KEY"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 280, 0, 150)
    Frame.Position = UDim2.new(0.5, -140, 0.5, -75)
    Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui

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

    local dogrulandi = false
    Btn.MouseButton1Click:Connect(function()
        if Input.Text == "31" then
            dogrulandi = true
            Btn.Text = "DOĞRU"
            Btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
            task.wait(0.5)
            ScreenGui:Destroy()
        else
            Btn.Text = "YANLIŞ KEY"
            Btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            task.wait(1)
            Btn.Text = "DOĞRULA"
            Btn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
        end
    end)

    while not dogrulandi do
        task.wait(0.1)
    end
end

KeyKontrol()

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
            -- Keysiz Sportsclub (Prison Life)
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
        Title = "THUNDER HUB",
        Text = "Prison Life (keysiz) ve Aimbot hazır. Key: 31",
        Duration = 5
    })
end)