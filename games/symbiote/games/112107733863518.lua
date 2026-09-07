local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local FlyEnabled = false
local NoClipConnection = nil
local FlyConnection = nil
local FlyBodyVelocity = nil
local FlyBodyGyro = nil
local FlySpeed = 50

local InfiniteJumpEnabled = false
local InfiniteJumpConnection = nil

local WalkSpeedEnabled = false
local WalkSpeedValue = 1
local WalkSpeedConnection = nil

local LaggyRunEnabled = false
local LaggyRunDistance = 1
local LaggyRunDelay = 1
local LaggyRunConnection = nil
local LaggyRunAccum = 0

local CtrlClickTPEnabled = false
local CtrlClickTPConnection = nil

local AutoHitAllEnabled = false
local AutoCollectEnabled = false
local TPToMobsTopEnabled = false
local AutoSellEnabled = false
local SelectedWeaponType = nil

local TweenSpeed = 300
local DistanceBetweenNPC = 10

local LastValidMobCFrame = nil
local NoMobGroundLockActive = false

local sellSetState = nil

local function EnableNoClip()
    if NoClipConnection then return end
    NoClipConnection = RunService.Stepped:Connect(function()
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
        end
    end)
end

local function DisableNoClip()
    if NoClipConnection then NoClipConnection:Disconnect(); NoClipConnection = nil end
    local character = LocalPlayer.Character
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end

local function EnableFly()
    local character = LocalPlayer.Character
    if not character then return end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    if FlyBodyVelocity then FlyBodyVelocity:Destroy() end
    if FlyBodyGyro then FlyBodyGyro:Destroy() end
    FlyBodyVelocity = Instance.new("BodyVelocity")
    FlyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
    FlyBodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    FlyBodyVelocity.Parent = hrp
    FlyBodyGyro = Instance.new("BodyGyro")
    FlyBodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
    FlyBodyGyro.P = 9e4
    FlyBodyGyro.Parent = hrp
    if FlyConnection then FlyConnection:Disconnect() end
    FlyConnection = RunService.Heartbeat:Connect(function()
        if not FlyEnabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local fHRP = char:FindFirstChild("HumanoidRootPart")
        if not fHRP or not FlyBodyVelocity or not FlyBodyGyro then return end
        local cam = Workspace.CurrentCamera
        local dir = Vector3.new(0, 0, 0)
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir = dir + cam.CFrame.LookVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir = dir - cam.CFrame.LookVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir = dir - cam.CFrame.RightVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir = dir + cam.CFrame.RightVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, FlySpeed, 0) end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir - Vector3.new(0, FlySpeed, 0) end
        FlyBodyVelocity.Velocity = dir
        FlyBodyGyro.CFrame = cam.CFrame
    end)
end

local function DisableFly()
    if FlyConnection then FlyConnection:Disconnect(); FlyConnection = nil end
    if FlyBodyVelocity then FlyBodyVelocity:Destroy(); FlyBodyVelocity = nil end
    if FlyBodyGyro then FlyBodyGyro:Destroy(); FlyBodyGyro = nil end
end

local function EnableWalkSpeed()
    if WalkSpeedConnection then WalkSpeedConnection:Disconnect() end
    WalkSpeedConnection = RunService.Heartbeat:Connect(function()
        if not WalkSpeedEnabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local hum = char:FindFirstChild("Humanoid")
        if not hum or hum.Health <= 0 then return end
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then return end
        local currentCF = hrp.CFrame
        local lookVec = currentCF.LookVector
        local rightVec = currentCF.RightVector
        local upVec = currentCF.UpVector
        local newPos = currentCF.Position + moveDir.Unit * WalkSpeedValue
        hrp.CFrame = CFrame.fromMatrix(newPos, rightVec, upVec, -lookVec)
    end)
end

local function DisableWalkSpeed()
    if WalkSpeedConnection then WalkSpeedConnection:Disconnect(); WalkSpeedConnection = nil end
end

local function EnableLaggyRun()
    if LaggyRunConnection then LaggyRunConnection:Disconnect() end
    LaggyRunAccum = 0
    LaggyRunConnection = RunService.Heartbeat:Connect(function(dt)
        if not LaggyRunEnabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local hum = char:FindFirstChild("Humanoid")
        if not hum or hum.Health <= 0 then return end
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then LaggyRunAccum = 0; return end
        LaggyRunAccum = LaggyRunAccum + dt
        local delayThreshold = LaggyRunDelay * 0.1
        if LaggyRunAccum < delayThreshold then return end
        LaggyRunAccum = 0
        local currentCF = hrp.CFrame
        local lookVec = currentCF.LookVector
        local rightVec = currentCF.RightVector
        local upVec = currentCF.UpVector
        local newPos = currentCF.Position + moveDir.Unit * LaggyRunDistance
        hrp.CFrame = CFrame.fromMatrix(newPos, rightVec, upVec, -lookVec)
    end)
end

local function DisableLaggyRun()
    if LaggyRunConnection then LaggyRunConnection:Disconnect(); LaggyRunConnection = nil end
    LaggyRunAccum = 0
end

local function EnableCtrlClickTP()
    if CtrlClickTPConnection then return end
    CtrlClickTPConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not CtrlClickTPEnabled then return end
        if gameProcessed then return end
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
        if not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then return end
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local cam = Workspace.CurrentCamera
        local mousePos = UserInputService:GetMouseLocation()
        local ray = cam:ViewportPointToRay(mousePos.X, mousePos.Y)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams.FilterDescendantsInstances = {char}
        local result = Workspace:Raycast(ray.Origin, ray.Direction * 5000, raycastParams)
        if result then
            local hitPos = result.Position
            hrp.CFrame = CFrame.new(hitPos + Vector3.new(0, 3, 0)) * (hrp.CFrame - hrp.CFrame.Position)
        end
    end)
end

local function DisableCtrlClickTP()
    if CtrlClickTPConnection then CtrlClickTPConnection:Disconnect(); CtrlClickTPConnection = nil end
end

local function GetTallestEntityModel()
    local entityFolder = Workspace:FindFirstChild("Entity")
    if not entityFolder then return nil, nil end
    local tallestTop = -math.huge
    local tallestHRP = nil
    for _, model in ipairs(entityFolder:GetChildren()) do
        if not model:IsA("Model") then continue end
        if model.Name == "Target" then continue end
        local hrp = model:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end
        local topY = hrp.Position.Y
        for _, part in ipairs(model:GetDescendants()) do
            if part:IsA("BasePart") then
                local partTop = part.Position.Y + part.Size.Y / 2
                if partTop > topY then topY = partTop end
            end
        end
        if topY > tallestTop then
            tallestTop = topY
            tallestHRP = hrp
        end
    end
    if not tallestHRP then return nil, nil end
    return tallestHRP, tallestTop
end

local function LockCharacterOnDisable()
    task.spawn(function()
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChild("Humanoid")
        if not hrp then return end

        local lockedCF = hrp.CFrame

        if hum then hum.PlatformStand = false end

        for i = 1, 3 do
            local c = LocalPlayer.Character
            local h = c and c:FindFirstChild("HumanoidRootPart")
            if h then
                h.CFrame = lockedCF
            end
            task.wait(0.2)
        end
    end)
end

RunService.Heartbeat:Connect(function()
    if not TPToMobsTopEnabled then
        if NoMobGroundLockActive then
            NoMobGroundLockActive = false
        end
        return
    end

    local entityFolder = Workspace:FindFirstChild("Entity")
    if not entityFolder then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChild("Humanoid")
    if not hum or hum.Health <= 0 then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local targetHRP, tallestTop = GetTallestEntityModel()

    if not targetHRP then
        if LastValidMobCFrame then
            hum.PlatformStand = true
            NoMobGroundLockActive = true
            hrp.CFrame = LastValidMobCFrame
        else
            hum.PlatformStand = false
        end
        return
    end

    NoMobGroundLockActive = false
    hum.PlatformStand = true

    local targetPos = Vector3.new(
        targetHRP.Position.X,
        tallestTop + DistanceBetweenNPC,
        targetHRP.Position.Z
    )
    local targetCF = CFrame.new(
        targetPos,
        Vector3.new(targetHRP.Position.X, targetPos.Y, targetHRP.Position.Z)
            - Vector3.new(0, 1, 0)
    )

    LastValidMobCFrame = targetCF

    local dist = (hrp.Position - targetCF.Position).Magnitude
    if dist < 0.5 then
        hrp.CFrame = targetCF
    else
        local alpha = math.clamp((TweenSpeed / 16) * 0.15, 0.05, 1)
        hrp.CFrame = hrp.CFrame:Lerp(targetCF, alpha)
    end
end)

task.spawn(function()
    while true do
        task.wait(0.2)
        if not AutoHitAllEnabled then continue end
        if not SelectedWeaponType then continue end
        local entityFolder = Workspace:FindFirstChild("Entity")
        if not entityFolder then continue end
        local char = LocalPlayer.Character
        if not char then continue end
        local netMessage = char:FindFirstChild("NetMessage")
        if not netMessage then continue end
        local trigerSkill = netMessage:FindFirstChild("TrigerSkill")
        if not trigerSkill then continue end
        local models = entityFolder:GetChildren()
        for _, model in ipairs(models) do
            if not model:IsA("Model") then continue end
            if model.Name == "Target" then continue end
            local mHRP = model:FindFirstChild("HumanoidRootPart")
            if not mHRP then continue end
            local mHum = model:FindFirstChild("Humanoid")
            if not mHum or mHum.Health <= 0 then continue end
            local capturedHRP = mHRP
            local capturedSkill = trigerSkill
            local capturedType = SelectedWeaponType
            task.spawn(function()
                if capturedType == "Sword" then
                    pcall(function()
                        capturedSkill:FireServer(101, "Enter", capturedHRP.CFrame, 1)
                    end)
                elseif capturedType == "Bow" then
                    pcall(function()
                        capturedSkill:FireServer(102, "Atk", capturedHRP, {})
                    end)
                elseif capturedType == "Staff" then
                    pcall(function()
                        capturedSkill:FireServer(103, "Enter", capturedHRP.CFrame, 1)
                    end)
                end
            end)
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.1)
        if not AutoCollectEnabled then continue end
        local fxFolder = Workspace:FindFirstChild("FX")
        if not fxFolder then continue end
        local char = LocalPlayer.Character
        if not char then continue end
        local myHRP = char:FindFirstChild("HumanoidRootPart")
        if not myHRP then continue end
        for _, obj in ipairs(fxFolder:GetChildren()) do
            if not AutoCollectEnabled then break end
            if obj:IsA("Model") then
                local hasHandle = obj:FindFirstChild("Handle")
                local hasItemEff = obj:FindFirstChild("ItemEff")
                if hasHandle or hasItemEff then
                    local targetPart = hasHandle or hasItemEff
                    pcall(function()
                        targetPart.CFrame = myHRP.CFrame
                    end)
                end
            elseif (obj:IsA("BasePart") or obj:IsA("MeshPart")) and obj.Name == "EXP" then
                pcall(function()
                    obj.CFrame = myHRP.CFrame
                end)
            end
        end
    end
end)

local sellPayload = table.create(100)
for i = 1, 100 do sellPayload[i] = i end

local sellRemote = ReplicatedStorage:WaitForChild("Remote"):WaitForChild("RemoteEvent")

local function bindSellState(char)
    local net = char:WaitForChild("NetMessage")
    sellSetState = net:WaitForChild("SetState")
end

if LocalPlayer.Character then bindSellState(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(bindSellState)

local function doSell()
    if not sellSetState then return end
    sellSetState:FireServer("action", true)
    task.wait(0.05)
    sellSetState:FireServer("action", false)
    sellRemote:FireServer(539767613, sellPayload)
end

task.spawn(function()
    while true do
        if AutoSellEnabled then
            doSell()
            task.wait(10)
        else
            task.wait(0.5)
        end
    end
end)

local Window = Library:CreateWindow({
    Title = " Symbiote ",
    Size = UDim2.new(0, 580, 0, 440),
})

local PlayerTab   = Window:CreateTab("Player")
local AutoFarmTab = Window:CreateTab("Auto Farm")
local VariousTab  = Window:CreateTab("Various")

PlayerTab:AddToggle("Fly", function(state)
    FlyEnabled = state
    if state then EnableFly() else DisableFly() end
end)
PlayerTab:AddSlider("Fly Speed", 50, 500, 50, function(v) FlySpeed = v end)

PlayerTab:AddToggle("NoClip", function(state)
    if state then EnableNoClip() else DisableNoClip() end
end)

PlayerTab:AddToggle("Walk Speed", function(state)
    WalkSpeedEnabled = state
    if state then EnableWalkSpeed() else DisableWalkSpeed() end
end)
PlayerTab:AddSlider("Walk Speed Amount", 1, 20, 1, function(v)
    local ratio = (v - 1) / (20 - 1)
    WalkSpeedValue = 1 + ratio * (5 * 5 - 1)
end)

PlayerTab:AddToggle("Laggy Run", function(state)
    LaggyRunEnabled = state
    if state then EnableLaggyRun() else DisableLaggyRun() end
end)
PlayerTab:AddSlider("Laggy Run Distance", 1, 10, 1, function(v) LaggyRunDistance = v end)
PlayerTab:AddSlider("Laggy Run Delay", 1, 10, 1, function(v) LaggyRunDelay = v end)

PlayerTab:AddToggle("CTRL + Click to TP", function(state)
    CtrlClickTPEnabled = state
    if state then EnableCtrlClickTP() else DisableCtrlClickTP() end
end)

PlayerTab:AddToggle("Infinite Jump", function(state)
    InfiniteJumpEnabled = state
    if state then
        if InfiniteJumpConnection then InfiniteJumpConnection:Disconnect() end
        InfiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
            if not InfiniteJumpEnabled then return end
            local char = LocalPlayer.Character
            local hum = char and char:FindFirstChild("Humanoid")
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end)
    else
        if InfiniteJumpConnection then InfiniteJumpConnection:Disconnect(); InfiniteJumpConnection = nil end
    end
end)

do
    local weaponTypeSelecting = false
    local weaponTypeDropdownRef
    weaponTypeDropdownRef = AutoFarmTab:AddDropdown("Select Weapon Type", {"Sword", "Bow", "Staff"}, function(selected)
        if weaponTypeSelecting then return end
        local keys = {}
        for k in pairs(selected) do table.insert(keys, k) end
        if #keys == 0 then SelectedWeaponType = nil; return end
        local chosen
        if #keys == 1 then chosen = keys[1]
        else
            for _, k in ipairs(keys) do if k ~= SelectedWeaponType then chosen = k; break end end
            chosen = chosen or keys[1]
            weaponTypeSelecting = true; weaponTypeDropdownRef:ClearSelection(); weaponTypeSelecting = false
        end
        SelectedWeaponType = chosen
    end)
end

AutoFarmTab:AddToggle("Auto Hit All", function(state)
    AutoHitAllEnabled = state
end)

AutoFarmTab:AddToggle("TP To Mobs Top", function(state)
    TPToMobsTopEnabled = state
    if not state then
        LockCharacterOnDisable()
        NoMobGroundLockActive = false
        LastValidMobCFrame = nil
    end
end)

VariousTab:AddToggle("Auto Collect", function(state)
    AutoCollectEnabled = state
end)

VariousTab:AddToggle("Auto Sell (All)", function(state)
    AutoSellEnabled = state
end)
