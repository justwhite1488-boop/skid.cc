local UILibrary = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local autoKillEnabled = false
local flyEnabled = false
local flySpeed = 50
local walkSpeed = 16
local jumpHeight = 8

local function getWorkspaceHumanoid()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Humanoid") and obj.Parent and obj.Parent.Name == LocalPlayer.Name then
            return obj
        end
    end
    return nil
end

local function applyStats()
    local hum = getWorkspaceHumanoid()
    if hum then
        hum.WalkSpeed = walkSpeed
        hum.JumpHeight = jumpHeight
    end
end

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

local function getToolName()
    local character = LocalPlayer.Character
    if character then
        for _, item in ipairs(character:GetChildren()) do
            if item:IsA("Tool") then
                return item.Name
            end
        end
    end
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        for _, item in ipairs(backpack:GetChildren()) do
            if item:IsA("Tool") then
                return item.Name
            end
        end
    end
    return nil
end

local function getZombies()
    local folder = workspace:FindFirstChild("Zombies_Local")
    if not folder then return {} end
    local list = {}
    for _, model in ipairs(folder:GetChildren()) do
        if model:IsA("Model") then
            local number = string.match(model.Name, "Zombie_(%d+)")
            local root = model:FindFirstChild("HumanoidRootPart")
            if number and root then
                table.insert(list, {
                    id = tonumber(number),
                    position = root.Position
                })
            end
        end
    end
    return list
end

local GunHitEvent = nil
task.spawn(function()
    local gunRemotes = ReplicatedStorage:FindFirstChild("GunRemotes")
    if gunRemotes then
        GunHitEvent = gunRemotes:FindFirstChild("GunHit")
    end
end)

task.spawn(function()
    while true do
        task.wait(0.1)
        if not autoKillEnabled then continue end
        if not GunHitEvent then continue end
        local toolName = getToolName()
        if not toolName then continue end
        local zombies = getZombies()
        task.spawn(function()
            for _, z in ipairs(zombies) do
                if not autoKillEnabled then break end
                GunHitEvent:FireServer(toolName, z.id, z.position)
            end
        end)
    end
end)

task.spawn(function()
    while true do
        task.wait(0.5)
        if flyEnabled then continue end
        applyStats()
    end
end)

local Window = UILibrary:CreateWindow({
    Title = " Symbiote ",
    Size = UDim2.new(0, 580, 0, 480)
})

local AutoKillTab = Window:CreateTab("Auto Kill")
local PlayerTab = Window:CreateTab("Player")

AutoKillTab:AddToggle("Auto Hit All Zombies", function(Value)
    autoKillEnabled = Value
end, false)

PlayerTab:AddSlider("WalkSpeed", 16, 300, 16, function(Value)
    walkSpeed = Value
    applyStats()
end)

PlayerTab:AddSlider("Jump Height", 8, 500, 8, function(Value)
    jumpHeight = Value
    applyStats()
end)

PlayerTab:AddToggle("Fly", function(Value)
    if Value then startFly() else flyEnabled = false end
end, false)

PlayerTab:AddSlider("Fly Speed", 1, 500, 50, function(Value)
    flySpeed = Value
end)
