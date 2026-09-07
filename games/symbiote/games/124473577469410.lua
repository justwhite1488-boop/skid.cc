local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HRP = Character:WaitForChild("HumanoidRootPart")

LocalPlayer.CharacterAdded:Connect(function(char)
    Character = char
    Humanoid = char:WaitForChild("Humanoid")
    HRP = char:WaitForChild("HumanoidRootPart")
end)

local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local CHAR_CF  = CFrame.new(Vector3.new(703.78363, 38.7145729, -2121.90601)) * CFrame.fromMatrix(Vector3.new(0,0,0), Vector3.new(-0.0118755223, 3.96514359e-08, -0.999929488), Vector3.new(2.69361937e-08, 1, -2.64671787e-08))
local THIRD_CF = CFrame.new(Vector3.new(733.78363, 38.7145729, -2121.90601)) * CFrame.fromMatrix(Vector3.new(0,0,0), Vector3.new(-0.0118755223, 3.96514359e-08, -0.999929488), Vector3.new(2.69361937e-08, 1, -2.64671787e-08))

local MODEL_CF = nil
local selectedCollectZoneName = nil

local function getModelCF()
    if MODEL_CF then return MODEL_CF end
    return CFrame.new(Vector3.new(-540.858429, 38.2805481, -2121.86865)) * CFrame.fromMatrix(Vector3.new(0,0,0), Vector3.new(0.00478558522, 3.32576744e-09, -0.999988556), Vector3.new(6.5336053e-08, 1, -6.53527152e-08))
end

local Window = Library:CreateWindow({
    Title = "  Symbiote ",
    Size = UDim2.new(0, 580, 0, 420),
})

local PlayerTab   = Window:CreateTab("Player")
local AutoFarmTab = Window:CreateTab("Auto Farm")
local AutoSellTab = Window:CreateTab("Auto Sell")

PlayerTab:AddSlider("Walk Speed", 16, 200, 16, function(val)
    if Humanoid then Humanoid.WalkSpeed = val end
end)

PlayerTab:AddSlider("Jump Height", 7, 200, 7, function(val)
    if Humanoid then Humanoid.JumpHeight = val end
end)

local flySpeedValue = 80
PlayerTab:AddSlider("Fly Speed", 10, 300, 80, function(val)
    flySpeedValue = val
end)

local flyEnabled    = false
local flyConnection = nil
local flyBodyVelocity, flyBodyGyro

PlayerTab:AddToggle("Fly", function(state)
    flyEnabled = state
    if state then
        flyBodyVelocity = Instance.new("BodyVelocity")
        flyBodyVelocity.Velocity  = Vector3.new(0,0,0)
        flyBodyVelocity.MaxForce  = Vector3.new(1e5,1e5,1e5)
        flyBodyVelocity.Parent    = HRP

        flyBodyGyro = Instance.new("BodyGyro")
        flyBodyGyro.MaxTorque = Vector3.new(1e5,1e5,1e5)
        flyBodyGyro.P         = 1e4
        flyBodyGyro.Parent    = HRP

        flyConnection = RunService.RenderStepped:Connect(function()
            if not flyEnabled then return end
            local cam = workspace.CurrentCamera
            local uis = game:GetService("UserInputService")
            local dir = Vector3.new(0,0,0)

            if uis:IsKeyDown(Enum.KeyCode.W)         then dir = dir + cam.CFrame.LookVector  end
            if uis:IsKeyDown(Enum.KeyCode.S)         then dir = dir - cam.CFrame.LookVector  end
            if uis:IsKeyDown(Enum.KeyCode.A)         then dir = dir - cam.CFrame.RightVector end
            if uis:IsKeyDown(Enum.KeyCode.D)         then dir = dir + cam.CFrame.RightVector end
            if uis:IsKeyDown(Enum.KeyCode.Space)     then dir = dir + Vector3.new(0,1,0)     end
            if uis:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir - Vector3.new(0,1,0)     end

            if dir.Magnitude > 0 then dir = dir.Unit end
            flyBodyVelocity.Velocity = dir * flySpeedValue
            flyBodyGyro.CFrame       = cam.CFrame
            Humanoid.PlatformStand   = true
        end)
    else
        Humanoid.PlatformStand = false
        if flyConnection   then flyConnection:Disconnect();   flyConnection   = nil end
        if flyBodyVelocity then flyBodyVelocity:Destroy();    flyBodyVelocity = nil end
        if flyBodyGyro     then flyBodyGyro:Destroy();        flyBodyGyro     = nil end
    end
end)

local autoUpgradeSpeedEnabled = false
PlayerTab:AddToggle("Auto Upgrade Speed", function(state)
    autoUpgradeSpeedEnabled = state
    if state then
        task.spawn(function()
            while autoUpgradeSpeedEnabled do
                pcall(function()
                    local Event = ReplicatedStorage.Packages._Index["sleitnick_knit@1.7.0"].knit.Services.UpgradesService.RF.Upgrade
                    Event:InvokeServer("MovementSpeed", 10)
                end)
                task.wait(0.1)
            end
        end)
    end
end)

local autoRebirthEnabled = false
PlayerTab:AddToggle("Auto Rebirth", function(state)
    autoRebirthEnabled = state
    if state then
        task.spawn(function()
            while autoRebirthEnabled do
                pcall(function()
                    local Event = ReplicatedStorage.Packages._Index["sleitnick_knit@1.7.0"].knit.Services.RebirthService.RF.Rebirth
                    Event:InvokeServer()
                end)
                task.wait(0.3)
            end
        end)
    end
end)

local autoCollectEnabled = false
PlayerTab:AddToggle("Auto Collect Cash", function(state)
    autoCollectEnabled = state
    if state then
        task.spawn(function()
            while autoCollectEnabled do
                pcall(function()
                    local playerName = LocalPlayer.Name
                    local Plots = workspace:FindFirstChild("Plots")
                    if Plots then
                        for _, part in ipairs(Plots:GetChildren()) do
                            for _, model in ipairs(part:GetChildren()) do
                                if model:IsA("Model") then
                                    local billGui = model:FindFirstChild(playerName .. "_FloatingPlotSign")
                                    if billGui then
                                        local containers = model:FindFirstChild("Containers")
                                        if containers then
                                            for _, containerPart in ipairs(containers:GetChildren()) do
                                                for _, innerModel in ipairs(containerPart:GetChildren()) do
                                                    if innerModel:IsA("Model") then
                                                        local collectionModel = innerModel:FindFirstChild("Collection")
                                                        if collectionModel then
                                                            local collectionPad = collectionModel:FindFirstChild("CollectionPad")
                                                            if collectionPad then
                                                                firetouchinterest(HRP, collectionPad, 0)
                                                                task.wait(0.05)
                                                                firetouchinterest(HRP, collectionPad, 1)
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
                task.wait(1)
            end
        end)
    end
end)

local avoidBossEnabled = false
local bossTouchDetectParts = {}

local function setBossTouchDetect(canTouch)
    pcall(function()
        local BossTouchDetect = workspace:FindFirstChild("BossTouchDetectors")
        if BossTouchDetect then
            bossTouchDetectParts = {}
            for _, part in ipairs(BossTouchDetect:GetDescendants()) do
                if part:IsA("BasePart") then
                    table.insert(bossTouchDetectParts, part)
                    part.CanTouch = canTouch
                end
            end
        end
    end)
end

PlayerTab:AddToggle("Avoid Boss Catching", function(state)
    avoidBossEnabled = state
    setBossTouchDetect(not state)
end)

local collectZoneOptions     = {}
local collectZoneDropRef     = nil
local collectZoneInternalMap = {}

local function formatZoneName(rawName)
    local num = rawName:match("^[Bb]ase(%d+)$")
    if num then
        return "Base " .. tostring(tonumber(num))
    end
    return rawName
end

local function sortZoneNames(names)
    local baseNames  = {}
    local otherNames = {}

    for _, name in ipairs(names) do
        local num = name:match("^[Bb]ase(%d+)$")
        if num then
            table.insert(baseNames, { raw = name, num = tonumber(num) })
        else
            table.insert(otherNames, name)
        end
    end

    table.sort(baseNames, function(a, b)
        return a.num < b.num
    end)

    table.sort(otherNames, function(a, b)
        return a < b
    end)

    local sorted = {}
    for _, entry in ipairs(baseNames) do
        table.insert(sorted, entry.raw)
    end
    for _, name in ipairs(otherNames) do
        table.insert(sorted, name)
    end

    return sorted
end

local function buildDisplayOptions(sortedRawNames)
    local displayList    = {}
    local displayToRaw   = {}
    local rawToDisplay   = {}

    for _, rawName in ipairs(sortedRawNames) do
        local displayName = formatZoneName(rawName)
        table.insert(displayList, displayName)
        displayToRaw[displayName] = rawName
        rawToDisplay[rawName]     = displayName
    end

    return displayList, displayToRaw, rawToDisplay
end

local displayToRaw = {}
local rawToDisplay = {}

local function getCollectZoneNames()
    local names = {}
    pcall(function()
        local CollectZones = workspace:FindFirstChild("CollectZones")
        if CollectZones then
            for _, part in ipairs(CollectZones:GetChildren()) do
                if part:IsA("BasePart") or part:IsA("Model") or part:IsA("Folder") then
                    table.insert(names, part.Name)
                end
            end
        end
    end)
    return names
end

local function updateModelCFFromZone(zoneName)
    pcall(function()
        local CollectZones = workspace:FindFirstChild("CollectZones")
        if CollectZones then
            local zone = CollectZones:FindFirstChild(zoneName)
            if zone then
                if zone:IsA("BasePart") then
                    MODEL_CF = zone.CFrame * CFrame.new(0, -10, 0)
                elseif zone:IsA("Model") and zone.PrimaryPart then
                    MODEL_CF = zone.PrimaryPart.CFrame * CFrame.new(0, -10, 0)
                end
            end
        end
    end)
end

local rawNames = getCollectZoneNames()
local sortedRawNames = sortZoneNames(rawNames)
local displayList

displayList, displayToRaw, rawToDisplay = buildDisplayOptions(sortedRawNames)
collectZoneOptions = displayList

collectZoneDropRef = AutoFarmTab:AddDropdown(
    "Select Collect Zone",
    collectZoneOptions,
    function(selectedMap)
        local count = 0
        for _ in pairs(selectedMap) do count = count + 1 end

        if count == 0 then
            selectedCollectZoneName  = nil
            MODEL_CF                 = nil
            collectZoneInternalMap   = {}

        elseif count == 1 then
            for displayKey in pairs(selectedMap) do
                local rawKey = displayToRaw[displayKey] or displayKey
                selectedCollectZoneName = rawKey
                updateModelCFFromZone(rawKey)
            end
            collectZoneInternalMap = {}
            local displayKey = rawToDisplay[selectedCollectZoneName] or selectedCollectZoneName
            collectZoneInternalMap[displayKey] = true

        else
            local newDisplayKey = nil
            for k in pairs(selectedMap) do
                if not collectZoneInternalMap[k] then
                    newDisplayKey = k
                    break
                end
            end

            if newDisplayKey then
                local rawKey = displayToRaw[newDisplayKey] or newDisplayKey
                selectedCollectZoneName = rawKey
                updateModelCFFromZone(rawKey)
                collectZoneInternalMap = { [newDisplayKey] = true }

                for k in pairs(selectedMap) do
                    selectedMap[k] = nil
                end
                selectedMap[newDisplayKey] = true

                if collectZoneDropRef then
                    collectZoneDropRef:SetOptions(collectZoneOptions)
                end
            end
        end
    end
)

task.spawn(function()
    while true do
        task.wait(3)
        pcall(function()
            local newRawNames = getCollectZoneNames()
            local newSorted   = sortZoneNames(newRawNames)
            local newDisplay, newDTR, newRTD = buildDisplayOptions(newSorted)

            local changed = (#newDisplay ~= #collectZoneOptions)
            if not changed then
                local nameSet = {}
                for _, n in ipairs(collectZoneOptions) do nameSet[n] = true end
                for _, n in ipairs(newDisplay) do
                    if not nameSet[n] then changed = true break end
                end
            end

            if changed then
                collectZoneOptions = newDisplay
                displayToRaw       = newDTR
                rawToDisplay       = newRTD

                local stillExists = false
                if selectedCollectZoneName then
                    for _, rawN in ipairs(newSorted) do
                        if rawN == selectedCollectZoneName then
                            stillExists = true
                            break
                        end
                    end
                end

                if not stillExists then
                    selectedCollectZoneName = nil
                    MODEL_CF               = nil
                    collectZoneInternalMap = {}
                end

                if collectZoneDropRef then
                    collectZoneDropRef:SetOptions(collectZoneOptions)
                end
            else
                if selectedCollectZoneName then
                    updateModelCFFromZone(selectedCollectZoneName)
                end
            end
        end)
    end
end)

local autoFarmEnabled = false
AutoFarmTab:AddToggle("Auto Farm", function(state)
    autoFarmEnabled = state
    if state then
        task.spawn(function()
            while autoFarmEnabled do
                local userId        = tostring(LocalPlayer.UserId)
                local RunningModels = workspace:FindFirstChild("RunningModels")

                HRP.CFrame = CHAR_CF
                wait(1)

                local targetModel = RunningModels and RunningModels:FindFirstChild(userId)

                if targetModel then
                    local modelHRP = targetModel:FindFirstChild("HumanoidRootPart")
                    if modelHRP then
                        modelHRP.CFrame = getModelCF()
                    end

                    local elapsed     = 0
                    local interval    = 0.1
                    local animateGone = false

                    while elapsed < 10 and autoFarmEnabled do
                        task.wait(interval)
                        elapsed = elapsed + interval
                        if not Character:FindFirstChild("Animate") then
                            animateGone = true
                            break
                        end
                    end

                    if animateGone then
                        HRP.CFrame = THIRD_CF
                        task.wait(0.5)
                        continue
                    else
                        if modelHRP then
                            modelHRP.CFrame = getModelCF()
                        end
                    end
                end

                task.wait(0.1)
            end
        end)
    end
end)

local autoFarmEggEnabled = false
AutoFarmTab:AddToggle("Auto Farm Easter Egg", function(state)
    autoFarmEggEnabled = state

    if state then
        task.spawn(function()
            while autoFarmEggEnabled do
                local eggModels = {}
                for _, obj in ipairs(workspace:GetChildren()) do
                    if obj:IsA("Model") and obj.Name:match("^EGG") then
                        table.insert(eggModels, obj)
                    end
                end

                local userId        = tostring(LocalPlayer.UserId)
                local RunningModels = workspace:FindFirstChild("RunningModels")
                local targetModel   = RunningModels and RunningModels:FindFirstChild(userId)
                local modelHRP      = targetModel and targetModel:FindFirstChild("HumanoidRootPart")

                if #eggModels == 0 then
                    if modelHRP then modelHRP.CFrame = CHAR_CF end
                    task.wait(0.3)
                    if not autoFarmEggEnabled then break end
                    HRP.CFrame = THIRD_CF
                    while autoFarmEggEnabled do
                        local found = false
                        for _, obj in ipairs(workspace:GetChildren()) do
                            if obj:IsA("Model") and obj.Name:match("^EGG") then
                                found = true
                                break
                            end
                        end
                        if found then break end
                        HRP.CFrame = THIRD_CF
                        task.wait(0.4)
                    end
                    continue
                end

                HRP.CFrame = CHAR_CF
                task.wait(0.1)

                if not targetModel or not modelHRP then
                    task.wait(0.3)
                    continue
                end

                for _, eggModel in ipairs(eggModels) do
                    if not autoFarmEggEnabled then break end
                    local eggHRP = eggModel:FindFirstChild("HumanoidRootPart")
                    if eggHRP then
                        modelHRP.CFrame = eggHRP.CFrame
                        task.wait(0.07)
                    end
                end

                if autoFarmEggEnabled then
                    if modelHRP then modelHRP.CFrame = getModelCF() end
                    task.wait(2)
                    if not autoFarmEggEnabled then break end
                    HRP.CFrame = THIRD_CF
                end

                task.wait(0.3)
            end
        end)
    end
end)

local selectedMutations = {}

local selectedMinCashKey   = nil
local selectedMinCashValue = nil

local cashOptionValues = {
    ["100K"] = 1e5,
    ["1M"]   = 1e6,
    ["10M"]  = 1e7,
    ["1B"]   = 1e9,
    ["100B"] = 1e11,
    ["1T"]   = 1e12,
}

local function parseCashPerSec(str)
    if not str or str == "" then return 0 end

    local numStr = tostring(str):match("^%+?([%d%.]+%a?)%$")
    if not numStr then return 0 end

    local suffixes = {
        K = 1e3,
        M = 1e6,
        B = 1e9,
        T = 1e12,
        Q = 1e15,
    }

    local num, suf = numStr:match("^([%d%.]+)([KMBTQkmbtq]?)$")
    if not num then return 0 end

    local value = tonumber(num) or 0
    if suf and suf ~= "" then
        local mult = suffixes[suf:upper()]
        if mult then value = value * mult end
    end

    return value
end

AutoSellTab:AddDropdown("Select Mutation", {"NORMAL", "CANDY", "GOLD", "DIAMOND", "VOID"}, function(selectedMap)
    selectedMutations = selectedMap
end)

local minCashOptions = {"100K", "1M", "10M", "1B", "100B", "1T"}

local minCashDropdownRef = nil

local minCashInternalMap = {}

minCashDropdownRef = AutoSellTab:AddDropdown(
    "Select Minimum Cash",
    minCashOptions,
    function(selectedMap)
        local count = 0
        for _ in pairs(selectedMap) do count = count + 1 end

        if count == 0 then
            selectedMinCashKey   = nil
            selectedMinCashValue = nil
            minCashInternalMap   = {}

        elseif count == 1 then
            for k in pairs(selectedMap) do
                selectedMinCashKey   = k
                selectedMinCashValue = cashOptionValues[k]
            end
            minCashInternalMap = {}
            minCashInternalMap[selectedMinCashKey] = true

        else
            local newKey = nil
            for k in pairs(selectedMap) do
                if not minCashInternalMap[k] then
                    newKey = k
                    break
                end
            end

            if newKey then
                selectedMinCashKey   = newKey
                selectedMinCashValue = cashOptionValues[newKey]
                minCashInternalMap   = { [newKey] = true }

                for k in pairs(selectedMap) do
                    selectedMap[k] = nil
                end
                selectedMap[newKey] = true

                if minCashDropdownRef then
                    minCashDropdownRef:SetOptions(minCashOptions)
                end
            end
        end
    end
)

local autoSellEnabled  = false
local autoSellRunning  = false

AutoSellTab:AddToggle("Auto Sell", function(state)
    autoSellEnabled = state

    if state and not autoSellRunning then
        autoSellRunning = true
        task.spawn(function()
            while autoSellEnabled do
                pcall(function()
                    local hasMutationFilter = false
                    for _ in pairs(selectedMutations) do
                        hasMutationFilter = true
                        break
                    end

                    local hasCashFilter = (selectedMinCashValue ~= nil)

                    if not hasMutationFilter and not hasCashFilter then
                        local backpack = LocalPlayer:FindFirstChild("Backpack")
                        if backpack and #backpack:GetChildren() > 0 then
                            local Event = ReplicatedStorage.Packages
                                ._Index["sleitnick_knit@1.7.0"]
                                .knit.Services.InventoryService.RF.SellAllBrainrots
                            Event:InvokeServer()
                        end
                    else
                        local backpack = LocalPlayer:FindFirstChild("Backpack")
                        if not backpack then return end

                        local SellEvent = ReplicatedStorage.Packages
                            ._Index["sleitnick_knit@1.7.0"]
                            .knit.Services.InventoryService.RF.SellBrainrot

                        local tools = backpack:GetChildren()

                        for _, tool in ipairs(tools) do
                            if not autoSellEnabled then break end
                            if not tool:IsA("Tool") then continue end

                            local entityId = tool:GetAttribute("EntityId")
                            if not entityId then continue end

                            local mutation   = tool:GetAttribute("Mutation")
                            local cashPerSec = tool:GetAttribute("CashPerSec")

                            local passedMutation = true
                            local passedCash     = true

                            if hasMutationFilter then
                                passedMutation = (mutation ~= nil and selectedMutations[tostring(mutation)] == true)
                            end

                            if hasCashFilter then
                                local cashValue = parseCashPerSec(tostring(cashPerSec))
                                passedCash = (cashValue < selectedMinCashValue)
                            end

                            if passedMutation and passedCash then
                                pcall(function()
                                    SellEvent:InvokeServer(entityId)
                                end)
                                task.wait(0.05)
                            end
                        end
                    end
                end)

                task.wait(0.5)
            end

            autoSellRunning = false
        end)
    end
end)
