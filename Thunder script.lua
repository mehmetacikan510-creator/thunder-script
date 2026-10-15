-- THUNDER BUTTON HUB v4 | Prison Life + MM2 + Aimbot (Toggle + Key)
-- Loadstring ile çalıştırılabilir

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
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
Main.Size = UDim2.new(0, 220, 0, 230)
Main.Position = UDim2.new(0.5, -110, 0.5, -115)
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
    Btn.Size = UDim2.new(1, -20, 0, 40)
    Btn.Position = UDim2.new(0, 10, 0, posY)
    Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Btn.Text = text
    Btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    Btn.Font = Enum.Font.GothamBold
    Btn.TextSize = 12
    Btn.Parent = Main
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 6)
    BtnCorner.Parent = Btn
    
    return Btn
end

local PrisonBtn = CreateButton("PRISON LIFE: KAPALI", 46)
local MM2Btn = CreateButton("MM2: KAPALI", 92)
local AimBtn = CreateButton("AIMBOT: KAPALI", 138)
local AutoFarmBtn = CreateButton("AUTOFARM: KAPALI", 184)

ToggleBtn.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

-- ==================== TOGGLE MANTIĞI ====================
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

local mm2Yuklendi = false
local mm2Aktif = false

MM2Btn.MouseButton1Click:Connect(function()
    if not mm2Yuklendi then
        MM2Btn.Text = "MM2: YÜKLENİYOR..."
        MM2Btn.BackgroundColor3 = Color3.fromRGB(100, 50, 0)
        local ok, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hoh0x/ReeferzHub/main/Main"))()
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

-- ==================== AUTOFARM ====================
local autoFarmAktif = false

AutoFarmBtn.MouseButton1Click:Connect(function()
    autoFarmAktif = not autoFarmAktif
    if autoFarmAktif then
        AutoFarmBtn.Text = "AUTOFARM: AÇIK"
        AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        task.spawn(function()
            while autoFarmAktif do
                local coinContainer = Workspace:FindFirstChild("CoinContainer")
                if coinContainer then
                    for _, coin in ipairs(coinContainer:GetChildren()) do
                        if autoFarmAktif and coin:IsA("BasePart") then
                            local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                hrp.CFrame = CFrame.new(coin.Position + Vector3.new(0, 3, 0))
                                task.wait(0.1)
                            end
                        end
                    end
                end
                task.wait(0.5)
            end
        end)
    else
        AutoFarmBtn.Text = "AUTOFARM: KAPALI"
        AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    end
end)

pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "THUNDER HUB v4",
        Text = "Prison Life + MM2 + Aimbot + AutoFarm hazır. Key: 31",
        Duration = 6
    })
end)