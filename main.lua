-- Open source script. Please do not steal.

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

if getgenv().FinderHubLoaded then
    Rayfield:Notify({
        Title = "Finder Hub",
        Content = "Script is already running!",
        Duration = 3
    })
    return
end

getgenv().FinderHubLoaded = true

local AllFuncs = {}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local PlayerGui = LocalPlayer.PlayerGui
local Backpack = LocalPlayer.Backpack

local gameIds = {
    FindPandas = 8651851179,
    FindPlushies = 7952715828,
    FindTophats = 10428365594,
    FindMarkers = 7896264844,
    FindChomiks = 7031179594
}

if game.PlaceId == gameIds.FindPandas then
    AllFuncs['Atomic Panda'] = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        rootPart.CFrame = CFrame.new(-1723.15478515625, 8073.9580078125, 447.65252685546875)
    end
elseif game.PlaceId == gameIds.FindTophats then
    AllFuncs['Datavoid Tophat'] = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        rootPart.CFrame = CFrame.new(-623.5052490234375, 10439.048828125, 1762.14111328125)
    end
    
    AllFuncs['BA Tophat'] = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        rootPart.CFrame = CFrame.new(0.7993485927581787, 14133.6884765625, -238.9175567626953)
    end
end

local Window = Rayfield:CreateWindow({
    Name = "Finder Hub",
    LoadingTitle = "Finder Hub",
    LoadingSubtitle = "by sxlent404",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "FinderHub",
        FileName = "Config"
    }
})

local FindTab = Window:CreateTab("Find", "rewind")
local CreditsTab = Window:CreateTab("Credits", "user")

CreditsTab:CreateLabel("Made by sxlent404")
CreditsTab:CreateSection("Games Supported")
CreditsTab:CreateParagraph({
    Title = "Supported Games",
    Content = [[
- Find the Pandas
- Find the Plushies
- Find the Tophats
- Find the Markers (Coming Soon!)
- Find the Chomiks]]
})

if game.PlaceId == gameIds.FindPandas then
    FindTab:CreateButton({
        Name = "Get Atomic Panda",
        Callback = function()
            task.spawn(AllFuncs['Atomic Panda'])
        end
    })

elseif game.PlaceId == gameIds.FindPlushies then
    local plushiesFolder = game.workspace:FindFirstChild("Plushies")
    if plushiesFolder then
        FindTab:CreateButton({
            Name = "Get All Plushies",
            Callback = function()
                local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local rootPart = character:WaitForChild("HumanoidRootPart")
                for _, plushie in pairs(plushiesFolder:GetChildren()) do
                    if plushie:IsA("BasePart") then
                        rootPart.CFrame = plushie.CFrame
                        task.wait(0.1)
                    end
                end
            end
        })
        
        for _, plushie in pairs(plushiesFolder:GetChildren()) do
            if plushie:IsA("BasePart") then
                local plushieName = plushie.Name
                FindTab:CreateButton({
                    Name = "Get " .. plushieName,
                    Callback = function()
                        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        local rootPart = character:WaitForChild("HumanoidRootPart")
                        rootPart.CFrame = plushie.CFrame
                    end
                })
            end
        end
    else
        Rayfield:Notify({
            Title = "Finder Hub",
            Content = "Plushies folder not found!",
            Duration = 3
        })
    end

elseif game.PlaceId == gameIds.FindTophats then
    local tophatsFolder = game.workspace:FindFirstChild("ToFind")
    if tophatsFolder then
        FindTab:CreateButton({
            Name = "Get All Tophats",
            Callback = function()
                local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local rootPart = character:WaitForChild("HumanoidRootPart")
                for _, tophat in pairs(tophatsFolder:GetChildren()) do
                    if tophat:IsA("BasePart") then
                        rootPart.CFrame = tophat.CFrame
                        task.wait(0.1)
                    end
                end
            end
        })
        
        for _, tophat in pairs(tophatsFolder:GetChildren()) do
            if tophat:IsA("BasePart") then
                local tophatName = tophat.Name
                FindTab:CreateButton({
                    Name = "Get " .. tophatName,
                    Callback = function()
                        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        local rootPart = character:WaitForChild("HumanoidRootPart")
                        rootPart.CFrame = tophat.CFrame
                    end
                })
            end
        end
    else
        Rayfield:Notify({
            Title = "Finder Hub",
            Content = "Tophats folder not found!",
            Duration = 3
        })
    end

elseif game.PlaceId == gameIds.FindMarkers then
    FindTab:CreateLabel("Coming Soon!")

elseif game.PlaceId == gameIds.FindChomiks then
    local chomiksFolder = game.workspace:FindFirstChild("chomiki")
    if chomiksFolder then
        FindTab:CreateButton({
            Name = "Get All Chomiks",
            Callback = function()
                local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local rootPart = character:WaitForChild("HumanoidRootPart")
                for _, chomik in pairs(chomiksFolder:GetChildren()) do
                    if chomik:IsA("BasePart") then
                        rootPart.CFrame = chomik.CFrame
                        task.wait(0.1)
                    end
                end
            end
        })
        
        for _, chomik in pairs(chomiksFolder:GetChildren()) do
            if chomik:IsA("BasePart") then
                local chomikName = chomik.Name
                FindTab:CreateButton({
                    Name = "Get " .. chomikName,
                    Callback = function()
                        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        local rootPart = character:WaitForChild("HumanoidRootPart")
                        rootPart.CFrame = chomik.CFrame
                    end
                })
            end
        end
    else
        Rayfield:Notify({
            Title = "Finder Hub",
            Content = "Chomiks folder not found!",
            Duration = 3
        })
    end

else
    Rayfield:Notify({
        Title = "Finder Hub",
        Content = "Game not supported!",
        Duration = 3
    })
    return
end

Rayfield:Notify({
    Title = "Finder Hub",
    Content = "Script loaded successfully!",
    Duration = 3
})
