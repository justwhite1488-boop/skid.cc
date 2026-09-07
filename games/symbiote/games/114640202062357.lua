local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer

local Window = Library:CreateWindow({
    Title = "  Symbiote ",
    Size = UDim2.new(0, 580, 0, 420),
})

local PlayerTab   = Window:CreateTab("Player")
local AutoFarmTab = Window:CreateTab("Auto Farm")

local wsValue = 16
PlayerTab:AddSlider("Walk Speed", 16, 200, 16, function(val)
    wsValue = val
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = val end
    end
end)

RunService.Heartbeat:Connect(function()
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = wsValue end
    end
end)

local jpValue = 50
PlayerTab:AddSlider("Jump Height", 7, 300, 50, function(val)
    jpValue = val
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.UseJumpPower = true
            hum.JumpPower = val
        end
    end
end)

RunService.Heartbeat:Connect(function()
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.UseJumpPower = true
            hum.JumpPower = jpValue
        end
    end
end)

local flyActive = false
local flySpeed  = 60
local flyConnection, flyBodyVel, flyBodyGyro

PlayerTab:AddToggle("Fly", function(state)
    flyActive = state
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end

    if state then
        hum.PlatformStand = true
        flyBodyVel = Instance.new("BodyVelocity", hrp)
        flyBodyVel.Name = "FlyVelocity"
        flyBodyVel.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        flyBodyVel.Velocity = Vector3.zero
        flyBodyGyro = Instance.new("BodyGyro", hrp)
        flyBodyGyro.Name = "FlyGyro"
        flyBodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
        flyBodyGyro.D = 100
        flyConnection = RunService.Heartbeat:Connect(function()
            if not flyActive then return end
            local cam = workspace.CurrentCamera
            local dir = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir += cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir -= cam.CFrame.LookVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir -= cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir += cam.CFrame.RightVector end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then dir += Vector3.new(0,1,0) end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then dir -= Vector3.new(0,1,0) end
            flyBodyVel.Velocity = dir * flySpeed
            flyBodyGyro.CFrame  = cam.CFrame
        end)
    else
        hum.PlatformStand = false
        if flyConnection then flyConnection:Disconnect() flyConnection = nil end
        if flyBodyVel    then flyBodyVel:Destroy()       flyBodyVel    = nil end
        if flyBodyGyro   then flyBodyGyro:Destroy()      flyBodyGyro   = nil end
    end
end)

PlayerTab:AddSlider("Fly Speed", 10, 300, 60, function(val)
    flySpeed = val
end)

local autoUpgradeActive = false
PlayerTab:AddToggle("Auto Upgrade Speed", function(state)
    autoUpgradeActive = state
    if not state then return end
    task.spawn(function()
        while autoUpgradeActive do
            ReplicatedStorage.Libraries.Packet.RemoteEvent:FireServer(buffer.fromstring("\x13\n"))
            task.wait(0.1)
        end
    end)
end)

local autoRebirthActive = false
PlayerTab:AddToggle("Auto Rebirth", function(state)
    autoRebirthActive = state
    if not state then return end
    task.spawn(function()
        while autoRebirthActive do
            ReplicatedStorage.Libraries.Packet.RemoteEvent:FireServer(buffer.fromstring("\x11"))
            task.wait(1)
        end
    end)
end)

local autoSellActive = false
PlayerTab:AddToggle("Auto Sell All Brainrots", function(state)
    autoSellActive = state
    if not state then return end
    task.spawn(function()
        while autoSellActive do
            ReplicatedStorage.Libraries.Packet.RemoteEvent:FireServer(buffer.fromstring("\a\x01"))
            task.wait(1)
        end
    end)
end)

local autoCollectActive = false
PlayerTab:AddToggle("Auto Collect Cash", function(state)
    autoCollectActive = state
    if not state then return end
    task.spawn(function()
        while autoCollectActive do
            for i = 1, 64 do
                local buf = buffer.create(2)
                buffer.writeu8(buf, 0, 0x0B)
                buffer.writeu8(buf, 1, i)
                ReplicatedStorage.Libraries.Packet.RemoteEvent:FireServer(buf)
            end
            task.wait(1)
        end
    end)
end)

local function getBrainrotNames()
    local names = {}
    local folder = ReplicatedStorage:FindFirstChild("Assets") and
                   ReplicatedStorage.Assets:FindFirstChild("Brainrots")
    if folder then
        for _, c in ipairs(folder:GetChildren()) do
            table.insert(names, c.Name)
        end
    end
    return names
end

local brainrotNames     = getBrainrotNames()
local mutations         = {"Default","Gold","Diamond","Rainbow","Candy"}
local rarities          = {"Common","Rare","Epic","Legendary","Mythic","Brainrot God","Secret","Divine","OG","MEME"}
local selectedBrainrots = {}
local selectedMutations = {}
local selectedRarities  = {}

AutoFarmTab:AddDropdown("Brainrot", brainrotNames, function(map)
    selectedBrainrots = map
end)

AutoFarmTab:AddDropdown("Mutation", mutations, function(map)
    selectedMutations = map
end)

AutoFarmTab:AddDropdown("Rarity", rarities, function(map)
    selectedRarities = map
end)

local vipUserActive = false
AutoFarmTab:AddToggle("VIP User", function(state)
    vipUserActive = state
end)

local autoFarmActive = false

local DEPOSIT_CF = CFrame.new(
    716.34375, 38.7145729, -2122.14771,
    0.0166822299, 7.39878345e-08,  0.999860823,
    5.37959399e-10, 1,            -7.40071044e-08,
    -0.999860823,   1.77248816e-09, 0.0166822299
)

local function hardWait(t)
    local e = tick() + t
    repeat RunService.Heartbeat:Wait() until tick() >= e
end

local function getMatchingBrainrots()
    local wsBrainrots = workspace:FindFirstChild("Brainrots")
    if not wsBrainrots then return {} end

    local matches = {}
    for _, model in ipairs(wsBrainrots:GetChildren()) do
        if not vipUserActive then
            local targetHRP = model:FindFirstChild("HumanoidRootPart")
            if targetHRP and targetHRP.Position.Y > 60 then
                continue
            end
        end

        local nameOK = true
        local hasAny = false
        for _ in pairs(selectedBrainrots) do hasAny = true break end
        if hasAny then
            nameOK = selectedBrainrots[model.Name] == true
        end

        local mutOK = true
        local hasMut = false
        for _ in pairs(selectedMutations) do hasMut = true break end
        if hasMut then
            mutOK = false
            for _, child in ipairs(model:GetChildren()) do
                if child:IsA("Model") and selectedMutations[child.Name] then
                    mutOK = true
                    break
                end
            end
        end

        local rarOK = true
        local hasRar = false
        for _ in pairs(selectedRarities) do hasRar = true break end
        if hasRar then
            local rarity = model:GetAttribute("Rarity")
            rarOK = rarity and selectedRarities[rarity] == true
        end

        if nameOK and mutOK and rarOK then
            table.insert(matches, model)
        end
    end
    return matches
end

local farmThread = nil

local function farmLoop()
    while autoFarmActive do
        local char = LocalPlayer.Character
        if not char then
            hardWait(0.5)
            continue
        end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then
            hardWait(0.5)
            continue
        end

        local matches = getMatchingBrainrots()
        if #matches == 0 then
            hardWait(1)
            continue
        end

        local target = matches[math.random(1, #matches)]
        local targetHRP = target:FindFirstChild("HumanoidRootPart")
        if not targetHRP then
            hardWait(0.1)
            continue
        end

        local innerModel
        for _, child in ipairs(target:GetChildren()) do
            if child:IsA("Model") then
                innerModel = child
                break
            end
        end
        if not innerModel then
            hardWait(0.1)
            continue
        end

        local mesh = innerModel:FindFirstChild("Mesh", true)
        if not mesh then
            hardWait(0.1)
            continue
        end

        local carry = mesh:FindFirstChild("Carry")
        if not carry or not carry:IsA("ProximityPrompt") then
            hardWait(0.1)
            continue
        end

        carry.HoldDuration = 0
        carry.MaxActivationDistance = 32

        hrp.CFrame = targetHRP.CFrame + Vector3.new(0, 0, 2)
        hardWait(0.2)
        hrp.CFrame = targetHRP.CFrame + Vector3.new(0, 0, 2)
        hardWait(0.05)
        hrp.CFrame = targetHRP.CFrame + Vector3.new(0, 0, 2)
        hardWait(0.05)
        hrp.CFrame = targetHRP.CFrame + Vector3.new(0, 0, 2)
        hardWait(0.05)
        hrp.CFrame = targetHRP.CFrame + Vector3.new(0, 0, 2)
        hardWait(0.05)

        fireproximityprompt(carry)
        hardWait(0.2)

        hrp.CFrame = DEPOSIT_CF
        hardWait(0.3)
    end
    farmThread = nil
end

AutoFarmTab:AddToggle("Auto Farm", function(state)
    autoFarmActive = state
    if state then
        if farmThread then
            task.cancel(farmThread)
            farmThread = nil
        end
        farmThread = task.spawn(farmLoop)
    else
        if farmThread then
            task.cancel(farmThread)
            farmThread = nil
        end
    end
end)
