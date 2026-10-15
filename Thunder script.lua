-- THUNDER BUTTON HUB v5 | Prison Life + MM2 (RuzHub) + Aimbot + AutoFarm + Radyo
-- Loadstring ile çalıştırılabilir

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
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

-- ==================== GUI ====================
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

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 220, 0, 280)
Main.Position = UDim2.new(0.5, -110, 0.5, -140)
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

-- ==================== BUTONLAR ====================
local function CreateButton(text, posY)
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, -20, 0, 38)
    Btn.Position = UDim2.new(0, 10, 0, posY)
    Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Btn.Text = text
    Btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    Btn.Font = Enum.Font.GothamBold
    Btn.TextSize = 11
    Btn.Parent = Main

    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 6)
    BtnCorner.Parent = Btn

    return Btn
end

local PrisonBtn = CreateButton("PRISON LIFE: KAPALI", 46)
local MM2Btn = CreateButton("MM2 (RUZHUB): KAPALI", 90)
local AimBtn = CreateButton("AIMBOT: KAPALI", 134)
local AutoFarmBtn = CreateButton("AUTOFARM: KAPALI", 178)
local RadioBtn = CreateButton("RADYO ÇALAR", 222)

ToggleBtn.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

-- ==================== PRISON LIFE ====================
local prisonYuklendi = false
local prisonAktif = false

PrisonBtn.MouseButton1Click:Connect(function()
    if not prisonYuklendi then
        PrisonBtn.Text = "PRISON LIFE: YÜKLENİYOR..."
        PrisonBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
        local ok, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/robloxscripter6245366542/Morsecodev/refs/heads/main/Nexus%20v3%20made%20by%20universal%20studio"))()
        end)
        if ok then
            prisonYuklendi = true
            prisonAktif = true
            PrisonBtn.Text = "PRISON LIFE: AÇIK"
            PrisonBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            PrisonBtn.Text = "PRISON LIFE: HATA"
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

-- ==================== MM2 (RUZHUB) ====================
local mm2Yuklendi = false
local mm2Aktif = false

MM2Btn.MouseButton1Click:Connect(function()
    if not mm2Yuklendi then
        MM2Btn.Text = "MM2: YÜKLENİYOR..."
        MM2Btn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
        local ok, err = pcall(function()
            -- RuzHub MM2 (keysiz, silent aim + autofarm)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/draconiosfr-design/RuzHub-mm2/refs/heads/main/RuzHubmm2.lua.txt"))()
        end)
        if ok then
            mm2Yuklendi = true
            mm2Aktif = true
            MM2Btn.Text = "MM2: AÇIK"
            MM2Btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            MM2Btn.Text = "MM2: HATA"
            MM2Btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            warn("MM2 hatası: " .. tostring(err))
        end
    else
        mm2Aktif = not mm2Aktif
        if mm2Aktif then
            MM2Btn.Text = "MM2: AÇIK"
            MM2Btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            MM2Btn.Text = "MM2: KAPALI"
            MM2Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        end
    end
end)

-- ==================== AIMBOT (GERÇEK TOGGLE) ====================
local aimAktif = false
local AimbotConfig = { FOV = 200, Smoothness = 0.2 }

local function GetClosestTarget()
    local closest = nil
    local shortest = AimbotConfig.FOV
    local mousePos = UIS:GetMouseLocation()

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if hrp and humanoid and humanoid.Health > 0 then
                local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                if onScreen then
                    local targetPos = Vector2.new(screenPos.X, screenPos.Y)
                    local distance = (mousePos - targetPos).Magnitude
                    if distance < shortest then
                        shortest = distance
                        closest = player
                    end
                end
            end
        end
    end
    return closest
end

RunService.RenderStepped:Connect(function()
    if not aimAktif then return end
    local target = GetClosestTarget()
    if target and target.Character then
        local hrp = target.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local newCFrame = CFrame.new(Camera.CFrame.Position, hrp.Position)
            Camera.CFrame = Camera.CFrame:Lerp(newCFrame, AimbotConfig.Smoothness)
        end
    end
end)

AimBtn.MouseButton1Click:Connect(function()
    aimAktif = not aimAktif
    if aimAktif then
        AimBtn.Text = "AIMBOT: AÇIK"
        AimBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    else
        AimBtn.Text = "AIMBOT: KAPALI"
        AimBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    end
end)

-- ==================== AUTOFARM (MM2 - DÜZELTİLMİŞ) ====================
local autoFarmAktif = false

local function FindNearestCoin()
    local coinContainer = Workspace:FindFirstChild("CoinContainer")
    if not coinContainer then return nil end

    local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end

    local nearest = nil
    local shortest = math.huge

    for _, coin in ipairs(coinContainer:GetChildren()) do
        if coin:IsA("BasePart") and coin:FindFirstChild("TouchInterest") then
            local dist = (coin.Position - hrp.Position).Magnitude
            if dist < shortest then
                shortest = dist
                nearest = coin
            end
        end
    end
    return nearest
end

AutoFarmBtn.MouseButton1Click:Connect(function()
    autoFarmAktif = not autoFarmAktif
    if autoFarmAktif then
        AutoFarmBtn.Text = "AUTOFARM: AÇIK"
        AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        task.spawn(function()
            while autoFarmAktif do
                local coin = FindNearestCoin()
                local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if coin and hrp then
                    local targetPos = CFrame.new(coin.Position + Vector3.new(0, 3, 0))
                    hrp.CFrame = targetPos
                    task.wait(0.15)
                end
                task.wait(0.1)
            end
        end)
    else
        AutoFarmBtn.Text = "AUTOFARM: KAPALI"
        AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    end
end)

-- ==================== RADYO ÇALAR ====================
local radioGui = nil

RadioBtn.MouseButton1Click:Connect(function()
    if radioGui then
        radioGui:Destroy()
        radioGui = nil
        RadioBtn.Text = "RADYO ÇALAR"
        RadioBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        return
    end

    RadioBtn.Text = "RADYO: AÇIK"
    RadioBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)

    radioGui = Instance.new("ScreenGui")
    radioGui.Name = "THUNDER_RADIO"
    radioGui.ResetOnSpawn = false
    radioGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local RF = Instance.new("Frame")
    RF.Size = UDim2.new(0, 250, 0, 130)
    RF.Position = UDim2.new(0.5, -125, 0.5, -65)
    RF.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
    RF.BorderSizePixel = 0
    RF.Active = true
    RF.Draggable = true
    RF.Parent = radioGui

    local RC = Instance.new("UICorner")
    RC.CornerRadius = UDim.new(0, 10)
    RC.Parent = RF

    local RS = Instance.new("UIStroke")
    RS.Color = Color3.fromRGB(255, 30, 30)
    RS.Thickness = 1.5
    RS.Parent = RF

    local RTitle = Instance.new("TextLabel")
    RTitle.Size = UDim2.new(1, 0, 0, 30)
    RTitle.BackgroundColor3 = Color3.fromRGB(25, 0, 0)
    RTitle.Text = "RADYO ÇALAR"
    RTitle.TextColor3 = Color3.fromRGB(255, 50, 50)
    RTitle.Font = Enum.Font.GothamBold
    RTitle.TextSize = 13
    RTitle.Parent = RF

    local RTC = Instance.new("UICorner")
    RTC.CornerRadius = UDim.new(0, 10)
    RTC.Parent = RTitle

    local SongInput = Instance.new("TextBox")
    SongInput.Size = UDim2.new(1, -20, 0, 35)
    SongInput.Position = UDim2.new(0, 10, 0, 40)
    SongInput.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    SongInput.Text = ""
    SongInput.PlaceholderText = "Roblox Müzik ID gir..."
    SongInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    SongInput.Font = Enum.Font.Gotham
    SongInput.TextSize = 12
    SongInput.Parent = RF

    local SIC = Instance.new("UICorner")
    SIC.CornerRadius = UDim.new(0, 6)
    SIC.Parent = SongInput

    local PlayBtn = Instance.new("TextButton")
    PlayBtn.Size = UDim2.new(1, -20, 0, 35)
    PlayBtn.Position = UDim2.new(0, 10, 0, 85)
    PlayBtn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
    PlayBtn.Text = "ÇAL"
    PlayBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    PlayBtn.Font = Enum.Font.GothamBold
    PlayBtn.TextSize = 13
    PlayBtn.Parent = RF

    local PBC = Instance.new("UICorner")
    PBC.CornerRadius = UDim.new(0, 6)
    PBC.Parent = PlayBtn

    local currentSound = nil

    PlayBtn.MouseButton1Click:Connect(function()
        if currentSound then
            currentSound:Destroy()
            currentSound = nil
        end

        if SongInput.Text ~= "" and tonumber(SongInput.Text) then
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. SongInput.Text
            sound.Volume = 1
            sound.Parent = LocalPlayer.Character or Workspace
            sound:Play()
            currentSound = sound
            PlayBtn.Text = "ÇALIYOR..."
        end
    end)

    -- Kapatma butonu
    local CloseRBtn = Instance.new("TextButton")
    CloseRBtn.Size = UDim2.new(0, 25, 0, 25)
    CloseRBtn.Position = UDim2.new(1, -30, 0, 3)
    CloseRBtn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
    CloseRBtn.Text = "X"
    CloseRBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseRBtn.Font = Enum.Font.GothamBold
    CloseRBtn.TextSize = 12
    CloseRBtn.Parent = RTitle

    local CRC = Instance.new("UICorner")
    CRC.CornerRadius = UDim.new(0, 5)
    CRC.Parent = CloseRBtn

    CloseRBtn.MouseButton1Click:Connect(function()
        if currentSound then currentSound:Destroy() end
        radioGui:Destroy()
        radioGui = nil
        RadioBtn.Text = "RADYO ÇALAR"
        RadioBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    end)
end)

pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "THUNDER HUB v5",
        Text = "RuzHub + AutoFarm (düzeltildi) + Radyo Çalar hazır.",
        Duration = 6
    })
end)