local UILibrary = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local selectedBrainrots = {}
local selectedMutations = {}
local selectedRarities = {}
local carryLimit = 1
local autoFarmEnabled = false

local flyEnabled = false
local flySpeed = 50
local walkSpeed = 16
local jumpPower = 50

local autoRebirth = false
local autoCollectCash = false
local autoUpgradeSpeed = false
local autoUpgradeJump = false

local returnCFrame = CFrame.new(
    -3395.44287, 1449.34314, -2900.3147,
    -0.99998498, -3.1753189e-09, 0.00548315328,
    -3.71001962e-09, 1, -9.75068275e-08,
    -0.00548315328, -9.75257066e-08, -0.99998498
)

local brainrotNames = {"ALL"}
local rsBrainrots = ReplicatedStorage:WaitForChild("Brainrots", 10)
if rsBrainrots then
    for _, folder in pairs(rsBrainrots:GetChildren()) do
        if folder:IsA("Folder") then
            table.insert(brainrotNames, folder.Name)
        end
    end
end

local mutationList = {"Normal", "Golden", "Diamond", "Rainbow", "Galaxy"}
local rarityList = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Brainrot God", "Secret", "Celestial", "Divine", "OG"}

local function getStackItemCount()
    local char = LocalPlayer.Character
    if not char then return 0 end
    local count = 0
    for _, v in ipairs(char:GetChildren()) do
        if v:IsA("Model") and v.Name == "StackItem" then
            count = count + 1
        end
    end
    return count
end

local function isCarryFull()
    return getStackItemCount() >= carryLimit
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

        if bv then bv:Destroy() end
        if bg then bg:Destroy() end
        if hum then hum.PlatformStand = false end
    end)
end

local function getPlayerPlot()
    local plotName = "Plot_" .. LocalPlayer.Name
    return workspace:FindFirstChild(plotName)
end

local function isValidTarget(bName, bMut, bRarity)
    local nV = (
        #selectedBrainrots == 0 or
        table.find(selectedBrainrots, "ALL") or
        table.find(selectedBrainrots, bName)
    )
    local mV = (#selectedMutations == 0 or table.find(selectedMutations, bMut))
    local rV = (#selectedRarities == 0 or table.find(selectedRarities, bRarity))
    return nV and mV and rV
end

local function getAllCashButtons()
    local buttons = {}
    local plot = getPlayerPlot()
    if not plot then return buttons end

    local buttonsFolder = plot:FindFirstChild("Buttons")
    if not buttonsFolder then return buttons end

    for _, folder in ipairs(buttonsFolder:GetChildren()) do
        local cashFolder = folder:FindFirstChild("Cash")
        if cashFolder then
            for _, part in ipairs(cashFolder:GetChildren()) do
                if part.Name == "CashButton" and part:IsA("BasePart") then
                    table.insert(buttons, part)
                end
            end
        end
    end

    return buttons
end

local Window = UILibrary:CreateWindow({
    Title = " Symbiote ",
    Size = UDim2.new(0, 580, 0, 480)
})

local AutoFarmTab = Window:CreateTab("Auto Farm")
local PlayerTab = Window:CreateTab("Player")

AutoFarmTab:AddDropdown("Select Brainrots", brainrotNames, function(Options)
    selectedBrainrots = {}
    for k, v in pairs(Options) do
        if v then table.insert(selectedBrainrots, k) end
    end
end)

AutoFarmTab:AddDropdown("Select Mutation", mutationList, function(Options)
    selectedMutations = {}
    for k, v in pairs(Options) do
        if v then table.insert(selectedMutations, k) end
    end
end)

AutoFarmTab:AddDropdown("Select Rarity", rarityList, function(Options)
    selectedRarities = {}
    for k, v in pairs(Options) do
        if v then table.insert(selectedRarities, k) end
    end
end)

AutoFarmTab:AddSlider("Carry Limit", 1, 10, 1, function(Value)
    carryLimit = Value
end)

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

AutoFarmTab:AddToggle("Auto Upgrade Jump", function(Value)
    autoUpgradeJump = Value
end, false)

PlayerTab:AddSlider("WalkSpeed", 16, 300, 16, function(Value)
    walkSpeed = Value
end)

PlayerTab:AddSlider("Jump Height", 50, 500, 50, function(Value)
    jumpPower = Value
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
            if
                target and
                target.Character and
                target.Character:FindFirstChild("HumanoidRootPart") and
                LocalPlayer.Character and
                LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            then
                LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
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
    while true do
        task.wait(0.5)
        if autoCollectCash then
            local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local cashButtons = getAllCashButtons()
                for _, cashButton in ipairs(cashButtons) do
                    firetouchinterest(cashButton, hrp, 0)
                    task.wait(0.05)
                    firetouchinterest(cashButton, hrp, 1)
                    task.wait(0.05)
                end
            end
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.5)
        if autoRebirth then
            local Event = ReplicatedStorage:WaitForChild("Events"):WaitForChild("RequestRebirth")
            Event:FireServer()
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.2)
        if autoUpgradeSpeed then
            local Event = ReplicatedStorage:WaitForChild("Events"):WaitForChild("PurchaseUpgrade")
            Event:FireServer("BikeSpeed", 10)
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.2)
        if autoUpgradeJump then
            local Event = ReplicatedStorage:WaitForChild("Events"):WaitForChild("PurchaseUpgrade")
            Event:FireServer("JumpPower", 10)
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.1)
        if not autoFarmEnabled then continue end

        local char = LocalPlayer.Character
        if not char then continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end

        if isCarryFull() then
            hrp.CFrame = returnCFrame
            repeat
                task.wait(0.1)
            until not isCarryFull() or not autoFarmEnabled
            continue
        end

        local itemSpawns = workspace:FindFirstChild("ItemSpawns")
        if not itemSpawns then continue end

        local foundTarget = false

        for _, spawnPart in ipairs(itemSpawns:GetChildren()) do
            if not spawnPart:IsA("BasePart") then continue end
            if foundTarget then break end

            for _, model in ipairs(spawnPart:GetChildren()) do
                if not model:IsA("Model") then continue end

                local bName = model:GetAttribute("OriginalName") or model.Name
                local bMut = model:GetAttribute("Mutation") or "Normal"
                local bRarity = model:GetAttribute("Rarity") or "Common"

                if not isValidTarget(bName, bMut, bRarity) then continue end

                local meshPart = nil
                for _, desc in ipairs(model:GetDescendants()) do
                    if desc:IsA("MeshPart") then
                        meshPart = desc
                        break
                    end
                end

                if not meshPart then continue end

                hrp.CFrame = meshPart.CFrame

                local prompt = meshPart:FindFirstChild("ProximityPrompt")
                if not prompt then
                    prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
                end

                if prompt then
                    prompt.HoldDuration = 0
                    prompt.MaxActivationDistance = 30
                    task.wait(0.1)

                    if fireproximityprompt then
                        fireproximityprompt(prompt)
                    end

                    task.wait(0.3)

                    if isCarryFull() then
                        hrp.CFrame = returnCFrame
                        repeat
                            task.wait(0.1)
                        until not isCarryFull() or not autoFarmEnabled
                    end
                end

                foundTarget = true
                break
            end
        end
    end
end)

RunService.RenderStepped:Connect(function()
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        local hum = char.Humanoid
        if not flyEnabled then
            hum.WalkSpeed = walkSpeed
            hum.JumpPower = jumpPower
        end
    end
end)
