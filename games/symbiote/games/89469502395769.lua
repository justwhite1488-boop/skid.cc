local UILibrary = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local autoFarmEnabled = false
local flyEnabled = false
local flySpeed = 50
local walkSpeed = 16
local jumpHeight = 50

local autoRebirth = false
local autoCollectCash = false
local autoUpgradeSpeed = false

local function matrixToCFrame(t)
    return CFrame.new(
        t[1], t[2], t[3],
        t[4], t[5], t[6],
        t[7], t[8], t[9],
        t[10], t[11], t[12]
    )
end

local farmCFrame = matrixToCFrame({
    697.321533, 2.99803257, 236.943375,
    0.0529473573, -9.47559045e-08, 0.998597324,
    -2.93354319e-09, 1, 9.50445482e-08,
    -0.998597324, -7.9617859e-09, 0.0529473573
})

local collectCFrame = matrixToCFrame({
    713.45105, 2.99803257, 237.341827,
    0.0170401055, -2.35750406e-08, 0.999854803,
    -1.08520012e-10, 1, 2.35803128e-08,
    -0.999854803, -5.1031529e-10, 0.0170401055
})

local function startFly()
    flyEnabled = true
    task.spawn(function()
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:WaitForChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then return end

        hum.PlatformStand = true

        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlyBV"
        bv.Velocity = Vector3.zero
        bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
        bv.Parent = hrp

        local bg = Instance.new("BodyGyro")
        bg.Name = "FlyBG"
        bg.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
        bg.P = 1e4
        bg.CFrame = hrp.CFrame
        bg.Parent = hrp

        local cam = workspace.CurrentCamera
        while flyEnabled do
            local mv = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then mv = mv + cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then mv = mv - cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then mv = mv - cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then mv = mv + cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then mv = mv + Vector3.new(0, 1, 0) end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then mv = mv - Vector3.new(0, 1, 0) end
            if mv.Magnitude > 0 then mv = mv.Unit end
            bv.Velocity = mv * flySpeed
            bg.CFrame = cam.CFrame
            task.wait()
        end

        if bv and bv.Parent then bv:Destroy() end
        if bg and bg.Parent then bg:Destroy() end
        if hum then hum.PlatformStand = false end
    end)
end

local function getHRP()
    local workspacePlayers = workspace:FindFirstChild("Players")
    if not workspacePlayers then return nil end
    local playerModel = workspacePlayers:FindFirstChild(LocalPlayer.Name)
    if not playerModel then return nil end
    return playerModel:FindFirstChild("HumanoidRootPart")
end

local function getHumanoid()
    local workspacePlayers = workspace:FindFirstChild("Players")
    if not workspacePlayers then return nil end
    local playerModel = workspacePlayers:FindFirstChild(LocalPlayer.Name)
    if not playerModel then return nil end
    return playerModel:FindFirstChildOfClass("Humanoid")
end

local function getPlayerPlot()
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return nil end
    for _, plot in ipairs(plots:GetChildren()) do
        if plot:FindFirstChild("HomeIcon", true) then
            return plot
        end
    end
    return nil
end

local function getAllButtonParts()
    local parts = {}
    local plot = getPlayerPlot()
    if not plot then return parts end
    local buttons = plot:FindFirstChild("Buttons")
    if not buttons then return parts end
    for _, child in ipairs(buttons:GetDescendants()) do
        if child:IsA("BasePart") then
            table.insert(parts, child)
        end
    end
    return parts
end

local Window = UILibrary:CreateWindow({
    Title = " Symbiote ",
    Size = UDim2.new(0, 580, 0, 480)
})

local AutoFarmTab = Window:CreateTab("Auto Farm")
local PlayerTab = Window:CreateTab("Player")

AutoFarmTab:AddToggle("Auto Farm", function(Value)
    autoFarmEnabled = Value
end, false)

AutoFarmTab:AddSeparator()
AutoFarmTab:AddLabel("Remotes & Cash")

AutoFarmTab:AddToggle("Auto Collect Cash", function(Value)
    autoCollectCash = Value
end, false)

AutoFarmTab:AddToggle("Auto Rebirth", function(Value)
    autoRebirth = Value
end, false)

AutoFarmTab:AddToggle("Auto Upgrade Speed", function(Value)
    autoUpgradeSpeed = Value
end, false)

PlayerTab:AddSlider("WalkSpeed", 16, 300, 16, function(Value)
    walkSpeed = Value
end)

PlayerTab:AddSlider("Jump Height", 50, 500, 50, function(Value)
    jumpHeight = Value
end)

PlayerTab:AddToggle("Fly", function(Value)
    if Value then startFly() else flyEnabled = false end
end, false)

PlayerTab:AddSlider("Fly Speed", 1, 500, 50, function(Value)
    flySpeed = Value
end)

PlayerTab:AddSeparator()
PlayerTab:AddLabel("Teleport")

local playerDropdown

local function getPlayerNames()
    local names = {}
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            table.insert(names, plr.Name)
        end
    end
    return names
end

playerDropdown = PlayerTab:AddDropdown("Select Player", getPlayerNames(), function(Options)
    for name, selected in pairs(Options) do
        if selected then
            local target = Players:FindFirstChild(name)
            local hrp = getHRP()
            if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") and hrp then
                hrp.CFrame = target.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(60)
        playerDropdown:SetOptions(getPlayerNames())
    end
end)

task.spawn(function()
    local kickEvent = ReplicatedStorage.Shared.Packages.Network.rev_KickEvent

    local function getRunFrame()
        local pg = LocalPlayer:FindFirstChild("PlayerGui")
        if not pg then return nil end
        local hud = pg:FindFirstChild("HUD")
        if not hud then return nil end
        return hud:FindFirstChild("Run")
    end

    while true do
        task.wait(0.1)
        if not autoFarmEnabled then continue end

        local hrp = getHRP()
        if not hrp then continue end

        hrp.CFrame = farmCFrame
        task.wait(0.3)

        kickEvent:FireServer(1)

        while autoFarmEnabled do
            local runFrame = getRunFrame()
            if runFrame and runFrame.Visible then break end
            task.wait(0.1)
        end

        if not autoFarmEnabled then continue end

        task.wait(2)

        if not autoFarmEnabled then continue end

        hrp = getHRP()
        if hrp then
            hrp.CFrame = collectCFrame
        end

        task.wait(0.2)
    end
end)

task.spawn(function()
    while true do
        task.wait(1)
        if not autoCollectCash then continue end

        local hrp = getHRP()
        if not hrp then continue end

        local parts = getAllButtonParts()
        for _, part in ipairs(parts) do
            firetouchinterest(part, hrp, 0)
            firetouchinterest(part, hrp, 1)
        end
    end
end)

task.spawn(function()
    local rebirthEvent = ReplicatedStorage.Shared.Packages.Network.rev_RebirthRequest
    while true do
        task.wait(0.5)
        if autoRebirth then
            rebirthEvent:FireServer()
        end
    end
end)

task.spawn(function()
    local speedEvent = ReplicatedStorage.Shared.Packages.Network.rev_SPEED_UPGRADE
    while true do
        task.wait(0.1)
        if autoUpgradeSpeed then
            speedEvent:FireServer(3)
        end
    end
end)

RunService.RenderStepped:Connect(function()
    if not flyEnabled then
        local hum = getHumanoid()
        if hum then
            hum.WalkSpeed = walkSpeed
            hum.JumpHeight = jumpHeight
        end
    end
end)
