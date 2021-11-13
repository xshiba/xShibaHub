local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("xShiba Hub : [Blox Fruit] | Version 0.0.2", 5013109572)

local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}
OldWorld = false
NewWorld = false
Three = false
local placeId = game.placeId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    Three = true
    do
        local count = 0
        for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
            if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then 
                v:Destroy()
                count = count + 1
                if count > 2 then
                    break
                end
            end
        end
    end
end

local page1 = venyx:addPage("Auto Farm", 5012544693)
local page2 = venyx:addPage("Stats", 7040410130)
local page3 = venyx:addPage("Teleport", 7044233235)
local page4 = venyx:addPage("Game",  7294901968 )
local page8 = venyx:addPage("Setting", 7040347038)
local theme = venyx:addPage("Theme")

local section1 = page1:addSection("Auto Farm")
local section2 = page2:addSection("Auto Stats")
local section3 = page3:addSection("Teleport")
local section4 = page3:addSection("Tween Island")
local section5 = page4:addSection("Game")

section5:addToggle("Auto Random Surprise",false,function(t)
    _G.AutoRandomSurprise = t
end)
spawn(function()
    while wait(1) do
        if _G.AutoRandomSurprise then
            local args = {
                [1] = "Bones",
                [2] = "Buy",
                [3] = 1,
                [4] = 1
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

if game.placeId == 2753915549 then
    section3:addButton("Teleport To NewWorld",function()
        local args = {
            [1] = "TravelDressrosa"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    section3:addButton("Teleport To ThirdSea",function()
        local args = {
            [1] = "TravelZou"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
elseif game.placeId == 4442272183 then
    section3:addButton("Teleport To OldWord",function()
        local args = {
            [1] = "TravelMain"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    section3:addButton("Teleport To ThirdSea",function()
        local args = {
            [1] = "TravelZou"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
elseif game.placeId == 7449423635 then
    section3:addButton("Teleport To OldWord",function()
        local args = {
            [1] = "TravelMain"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    section3:addButton("Teleport To NewWorld",function()
        local args = {
            [1] = "TravelDressrosa"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
end

if game.placeId == 2753915549 then
    section4:addButton("Start Island", function()
        local Distance = (Vector3.new(1071.2832, 16.3085976, 1426.86792) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)})
        tween:Play()
    end)
    section4:addButton("Marine Start", function()
        local Distance = (Vector3.new(-2573.3374, 6.88881969, 2046.99817) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2573.3374, 6.88881969, 2046.99817)})
        tween:Play()
    end)
    section4:addButton("Middle Town", function()
        local Distance = (Vector3.new(-655.824158, 7.88708115, 1436.67908) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)})
        tween:Play()
    end)
    section4:addButton("Jungle", function()
        local Distance = (Vector3.new(-1249.77222, 11.8870859, 341.356476) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)})
        tween:Play()
    end)
    section4:addButton("Pirate Village", function()
        local Distance = (Vector3.new(-1122.34998, 4.78708982, 3855.91992) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)})
        tween:Play()
    end)
    section4:addButton("Desert", function()
        local Distance = (Vector3.new(1094.14587, 6.47350502, 4192.88721) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)})
        tween:Play()
    end)
    section4:addButton("Frozen Village", function()
        local Distance = (Vector3.new(1198.00928, 27.0074959, -1211.73376) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)})
        tween:Play()
    end)
    section4:addButton("MarineFord", function()
        local Distance = (Vector3.new(-4505.375, 20.687294, 4260.55908) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)})
        tween:Play()
    end)
    section4:addButton("Colosseum", function()
        local Distance = (Vector3.new(-1428.35474, 7.38933945, -3014.37305) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1428.35474, 7.38933945, -3014.37305)})
        tween:Play()
    end)
    section4:addButton("Sky 1st Floor", function()
        local Distance = (Vector3.new(-4970.21875, 717.707275, -2622.35449) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)})
        tween:Play()
    end)
    section4:addButton("Sky 2nd Floor", function()
        local Distance = (Vector3.new(-4813.0249, 903.708557, -1912.69055) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)})
        tween:Play()
    end)
    section4:addButton("Sky 3rd Floor", function()
        local Distance = (Vector3.new(-7952.31006, 5545.52832, -320.704956) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)})
        tween:Play()
    end)
    section4:addButton("Prison", function()
        local Distance = (Vector3.new(4874.8125, 5.6519904136658, 735.57012939453) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(4874.8125, 5.6519904136658, 735.57012939453)})
        tween:Play()
    end)
    section4:addButton("Magma Village", function()
        local Distance = (Vector3.new(-5231.75879, 8.61593437, 8467.87695) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)})
        tween:Play()
    end)
    section4:addButton("UnderWater City", function()
        local Distance = (Vector3.new(61163.8516, 11.7796879, 1819.78418) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)})
        tween:Play()
    end)
    section4:addButton("Fountain City", function()
        local Distance = (Vector3.new(5132.7124, 4.53632832, 4037.8562) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)})
        tween:Play()
    end)
    section4:addButton("House Cyborg's", function()
        local Distance = (Vector3.new(6262.72559, 71.3003616, 3998.23047) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)})
        tween:Play()
    end)
    section4:addButton("Shank's Room", function()
        local Distance = (Vector3.new(1442.16553, 29.8788261, -28.3547478) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1442.16553, 29.8788261, -28.3547478)})
        tween:Play()
    end)
    section4:addButton("Mob Island", function()
        local Distance = (Vector3.new(-2850.20068, 7.39224768, 5354.99268) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)})
        tween:Play()
    end)
elseif placeId == 4442272183 then
    section4:addButton("First Spot", function()
        local Distance = (Vector3.new(82.9490662, 18.0710983, 2834.98779) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)})
        tween:Play()
    end)
    section4:addButton("Cafe", function()
        local Distance = (Vector3.new(-385.250916, 73.0458984, 297.388397) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)})
        tween:Play()
    end)
    section4:addButton("Kingdom of Rose", function()
        local Distance = (Vector3.new(game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].Position) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame)})
        tween:Play()
    end)
    section4:addButton("Factory", function()
        local Distance = (Vector3.new(430.42569, 210.019623, -432.504791) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(430.42569, 210.019623, -432.504791)})
        tween:Play()
    end)
    section4:addButton("Swan Mansion", function()
        local Distance = (Vector3.new(-390.096313, 331.886475, 673.464966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-390.096313, 331.886475, 673.464966)})
        tween:Play()
    end)
    section4:addButton("Swan Room", function()
        local Distance = (Vector3.new(2302.19019, 15.1778421, 663.811035) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(2302.19019, 15.1778421, 663.811035)})
        tween:Play()
    end)
    section4:addButton("Dark Arena", function()
        local Distance = (Vector3.new(game.Workspace["_WorldOrigin"].Locations["Dark Arena"].Position) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame)})
        tween:Play()
    end)
    section4:addButton("Green Zone", function()
        local Distance = (Vector3.new(-2372.14697, 72.9919434, -3166.51416) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)})
        tween:Play()
    end)
    section4:addButton("Colosseum", function()
        local Distance = (Vector3.new(-1836.58191, 44.5890656, 1360.30652) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-1836.58191, 44.5890656, 1360.30652)})
        tween:Play()
    end)
    section4:addButton("Ghost Island", function()
        local Distance = (Vector3.new(-5571.84424, 195.182297, -795.432922) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5571.84424, 195.182297, -795.432922)})
        tween:Play()
    end)
    section4:addButton("Ghost Island 2nd", function()
        local Distance = (Vector3.new(-5931.77979, 5.19706631, -1189.6908) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5931.77979, 5.19706631, -1189.6908)})
        tween:Play()
    end)
    section4:addButton("Snow Mountain", function()
        local Distance = (Vector3.new(1384.68298, 453.569031, -4990.09766) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1384.68298, 453.569031, -4990.09766)})
        tween:Play()
    end)
    section4:addButton("Cold Island", function()
        local Distance = (Vector3.new(-6026.96484, 14.7461271, -5071.96338) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)})
        tween:Play()
    end)
    section4:addButton("Hot Island", function()
        local Distance = (Vector3.new(5478.39209, 15.9775667, -5246.9126) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(5478.39209, 15.9775667, -5246.9126)})
        tween:Play()
    end)
    section4:addButton("Cursed Ship", function()
        local Distance = (Vector3.new(902.059143, 124.752518, 33071.8125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)})
        tween:Play()
    end)
    section4:addButton("Ice Castle", function()
        local Distance = (Vector3.new(5400.40381, 28.21698, -6236.99219) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)})
        tween:Play()
    end)
    section4:addButton("Forgotten Island", function()
        local Distance = (Vector3.new(-3043.31543, 238.881271, -10191.5791) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-3043.31543, 238.881271, -10191.5791)})
        tween:Play()
    end)
    section4:addButton("Usoapp Island", function()
        local Distance = (Vector3.new(4748.78857, 8.35370827, 2849.57959) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(4748.78857, 8.35370827, 2849.57959)})
        tween:Play()
    end)
    section4:addButton("Minisky Island", function()
        local Distance = (Vector3.new(-260.358917, 49325.7031, -35259.3008) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-260.358917, 49325.7031, -35259.3008)})
        tween:Play()
    end)
    section4:addButton("Secret Room", function()
        local Distance = (Vector3.new(-2128.38867, 149.874435, -95.2233658) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2128.38867, 149.874435, -95.2233658)})
        tween:Play()
    end)
elseif placeId == 7449423635 then
    section4:addButton("Port Town", function()
        local Distance = (Vector3.new(-291.60256958008, 43.86499786377, 5459.919921875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-291.60256958008, 43.86499786377, 5459.919921875)})
        tween:Play()
    end)
    section4:addButton("Castle on the Sea", function()
        local Distance = (Vector3.new(-5074.5375976563, 314.55062866211, -2982.3706054688) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5074.5375976563, 314.55062866211, -2982.3706054688)})
        tween:Play()
    end)
    section4:addButton("Hydra Island", function()
        local Distance = (Vector3.new(3558.0576171875, 72.423530578613, -491.10144042969) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(3558.0576171875, 72.423530578613, -491.10144042969)})
        tween:Play()
    end)
    section4:addButton("Great Tree", function()
        local Distance = (Vector3.new(2250.6081542969, 25.88773727417, -6452.6118164063) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(2250.6081542969, 25.88773727417, -6452.6118164063)})
        tween:Play()
    end)
    section4:addButton("Floating Turtle", function()
        local Distance = (Vector3.new(-13183.860351563, 332.41317749023, -7663.03515625) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-13183.860351563, 332.41317749023, -7663.03515625)})
        tween:Play()
    end)
    section4:addButton("Mansion", function()
        local Distance = (Vector3.new(-12549.6953125, 337.2033996582, -7507.8891601563) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-12549.6953125, 337.2033996582, -7507.8891601563)})
        tween:Play()
    end)
    section4:addButton("Haunted Castle", function()
        local Distance = (Vector3.new(-9514.08984375, 142.13989257813, 5534.03125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 150
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-9514.08984375, 142.13989257813, 5534.03125)})
        tween:Play()
    end)
end

section3:addToggle("Ctrl + Click = TP",false,function(vu)
    CTRL = vu
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(
    function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
            return
        end
        if not Mouse.Target then
            return
        end
        if CTRL then
            Plr.Character:MoveTo(Mouse.Hit.p)
        end
    end)

local section10 = page8:addSection("Setting")
local colors = theme:addSection("Colors")

section2:addToggle("Melee",false,function(value)
    _G.Melee = value    
end)
section2:addToggle("Defense",false,function(value)
    _G.Defense = value
end)
section2:addToggle("Sword",false,function(value)
    _G.Sword = value
end)
section2:addToggle("Gun",false,function(value)
    _G.Gun = value
end)
section2:addToggle("Devil Fruit",false,function(value)
    _G.Fruit = value
end)
PointStats = 1
section2:addSlider("Stats Point",1,1,10,PointStats,function(a)
	PointStats = a
end)
spawn(function()
    while wait(.1) do
        if _G.Melee then
            pcall(function()
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.Defense then
            pcall(function()
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.Gun then
            pcall(function()
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.Sword then
            pcall(function()
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.Fruit then
            pcall(function()
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)

local plr = game.Players.LocalPlayer

function CheckQuest()
    local Lv = plr.Data.Level.Value
    if OldWorld then
    if Lv == 1 or Lv <= 9 then
        Ms = "Bandit [Lv. 5]"
        NQ = "BanditQuest1"
        QP = CFrame.new(1060.50696, 16.5166187, 1544.14075, -0.978634059, -9.24266104e-08, 0.205609754, -9.42232532e-08, 1, 1.05308562e-09, -0.205609754, -1.83426341e-08, -0.978634059)
        QPT = Vector3.new(1060.50696, 16.5166187, 1544.14075)
        PUK = CFrame.new(1060.50696, 16.5166187, 1544.14075, 0.217811197, 0, -0.975990951, -0, 1, -0, 0.975990951, 0, 0.217811197)
    elseif Lv == 10 or Lv <= 14 then
        Ms = "Monkey [Lv. 14]"
        NQ = "JungleQuest"
        QN = 1
        QP = CFrame.new(-1600.5083, 36.8521385, 152.779541, -0.204120621, 4.53535209e-09, -0.978945732, 5.15228749e-10, 1, 4.52546312e-09, 0.978945732, 4.19359381e-10, -0.204120621)
        QPT = Vector3.new(-1600.5083, 36.8521385, 152.779541)
        PUK = CFrame.new(-1767.11255, 60.8351021, 47.3190079, -0.748183727, -1.45821389e-07, 0.663491428, 3.4207627e-08, 1, 2.58352884e-07, -0.663491428, 2.15991903e-07, -0.748183727)
        elseif Lv == 15 or Lv <= 29 then -- Gorilla
        Ms = "Gorilla [Lv. 20]"
        NQ = "JungleQuest"
        QN = 2
        QP = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
        QPT = Vector3.new(-1601.6553955078, 36.85213470459, 153.38809204102)
        PUK = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Lv == 30 or Lv <= 39 then -- Pirate
        Ms = "Pirate [Lv. 35]"
        NQ = "BuggyQuest1"
        QN = 1
        QP = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
        QPT = Vector3.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
        PUK = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif Lv == 40 or Lv <= 59 then -- Brute
        Ms = "Brute [Lv. 45]"
        NQ = "BuggyQuest1"
        QN = 2
        QP = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
        QPT = Vector3.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
        PUK = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Lv == 60 or Lv <= 74 then -- Desert Bandit
        Ms = "Desert Bandit [Lv. 60]"
        NQ = "DesertQuest"
        QN = 1
        QP = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
        QPT = Vector3.new(896.51721191406, 6.4384617805481, 4390.1494140625)
        PUK = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Lv == 75 or Lv <= 89 then -- Desert Officer
        Ms = "Desert Officer [Lv. 70]"
        NQ = "DesertQuest"
        QN = 2
        QP = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
        QPT = Vector3.new(896.51721191406, 6.4384617805481, 4390.1494140625)
        PUK = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif Lv == 90 or Lv <= 99 then -- Snow Bandit
        Ms = "Snow Bandit [Lv. 90]"
        NQ = "SnowQuest"
        QN = 1
        QP = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
        QPT = Vector3.new(1386.8073730469, 87.272789001465, -1298.3576660156)
        PUK = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif Lv == 100 or Lv <= 119 then -- Snowman
        Ms = "Snowman [Lv. 100]"
        NQ = "SnowQuest"
        QN = 2
        QP = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
        QPT = Vector3.new(1386.8073730469, 87.272789001465, -1298.3576660156)
        PUK = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif Lv == 120 or Lv <= 149 then -- Chief Petty Officer
        Ms = "Chief Petty Officer [Lv. 120]"
        NQ = "MarineQuest2"
        QN = 1
        QP = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
        QPT = Vector3.new(-5035.49609375, 28.677835464478, 4324.1840820313)
        PUK = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif Lv == 150 or Lv <= 174 then -- Sky Bandit
        Ms = "Sky Bandit [Lv. 150]"
        NQ = "SkyQuest"
        QN = 1
        QP = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
        QPT = Vector3.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
        PUK = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif Lv == 175 or Lv <= 224 then -- Dark Master
        Ms = "Dark Master [Lv. 175]"
        NQ = "SkyQuest"
        QN = 2
        QP = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
        QPT = Vector3.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
        PUK = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif Lv == 225 or Lv <= 274 then -- Toga Warrior
        Ms = "Toga Warrior [Lv. 225]"
        NQ = "ColosseumQuest"
        QN = 1
        QP = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
        QPT = Vector3.new(-1577.7890625, 7.4151420593262, -2984.483886718)
        PUK = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif Lv == 275 or Lv <= 299 then -- Gladiator
        Ms = "Gladiator [Lv. 275]"
        NQ = "ColosseumQuest"
        QN = 2
        QP = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
        QPT = Vector3.new(-1577.7890625, 7.4151420593262, -2984.483886718)
        PUK = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif Lv == 300 or Lv <= 329 then -- Military Soldier
        Ms = "Military Soldier [Lv. 300]"
        NQ = "MagmaQuest"
        QN = 1
        QP = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
        QPT = Vector3.new(-5316.1157226563, 12.262831687927, 8517.00390625)
        PUK = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif Lv == 330 or Lv <= 374 then -- Military Spy
        Ms = "Military Spy [Lv. 330]"
        NQ = "MagmaQuest"
        QN = 2
        QP = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
        QPT = Vector3.new(-5316.1157226563, 12.262831687927, 8517.00390625)
        PUK = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
        elseif Lv == 375 or Lv <= 399 then -- Fishman Warrior 
        Ms = "Fishman Warrior [Lv. 375]"
        NQ = "FishmanQuest"
        QN = 1
        QP = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
        QPT = Vector3.new(61122.65234375, 18.497442245483, 1569.3997802734)
        PUK = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
        elseif Lv == 400 or Lv <= 449 then -- Fishman Commando
        Ms = "Fishman Commando [Lv. 400]"
        NQ = "FishmanQuest"
        QN = 2
        QP = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
        QPT = Vector3.new(61122.65234375, 18.497442245483, 1569.3997802734)
        PUK = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
        elseif Lv == 450 or Lv <= 474 then -- God's Guard
        Ms = "God's Guard [Lv. 450]"
        NQ = "SkyExp1Quest"
        QN = 1
        QP = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
        QPT = Vector3.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
        PUK = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
        elseif Lv == 475 or Lv <= 524 then -- Shanda
        Ms = "Shanda [Lv. 475]"
        NQ = "SkyExp1Quest"
        QN = 2
        QP = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
        QPT = Vector3.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
        PUK = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
        elseif Lv == 525 or Lv <= 549 then -- Royal Squad
        Ms = "Royal Squad [Lv. 525]"
        NQ = "SkyExp2Quest"
        QN = 1
        QP = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
        QPT = Vector3.new(-7903.3828125, 5635.9897460938, -1410.923828125)
        PUK = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif Lv == 550 or Lv <= 624 then -- Royal Soldier
        Ms = "Royal Soldier [Lv. 550]"
        NQ = "SkyExp2Quest"
        QN = 2
        QP = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
        QPT = Vector3.new(-7903.3828125, 5635.9897460938, -1410.923828125)
        PUK = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif Lv == 625 or Lv <= 649 then -- Galley Pirate
        Ms = "Galley Pirate [Lv. 625]"
        NQ = "FountainQuest"
        QN = 1
        QP = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
        QPT = Vector3.new(5258.2788085938, 38.526931762695, 4050.044921875)
        PUK = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif Lv >= 650 then -- Galley Captain
        Ms = "Galley Captain [Lv. 650]"
        NQ = "FountainQuest"
        QN = 2
        QP = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
        QPT = Vector3.new(5258.2788085938, 38.526931762695, 4050.044921875)
        PUK = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if NewWorld then
        if Lv == 700 or Lv <= 724 then -- Raider [Lv. 700]
            Ms = "Raider [Lv. 700]"
            NQ = "Area1Quest"
            QN = 1
            QP = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            QPT = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            PUK = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
        elseif Lv == 725 or Lv <= 774 then -- Mercenary [Lv. 725]
            Ms = "Mercenary [Lv. 725]"
            NQ = "Area1Quest"
            QN = 2
            QP = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            QPT = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            PUK = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
          elseif Lv == 775 or Lv <= 799 then -- Swan Pirate [Lv. 775]
            Ms = "Swan Pirate [Lv. 775]"
            NQ = "Area2Quest"
            QN = 1
            QP = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            QPT = Vector3.new(632.698608, 73.1055908, 918.666321)
            PUK = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
          elseif Lv == 800 or Lv <= 874 then -- Factory Staff [Lv. 800]
            Ms = "Factory Staff [Lv. 800]"
            NQ = "Area2Quest"
            QN = 2
            QP = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            QPT = Vector3.new(632.698608, 73.1055908, 918.666321)
            PUK = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
          elseif Lv == 875 or Lv <= 899 then -- Marine Lieutenant [Lv. 875]
            Ms = "Marine Lieutenant [Lv. 875]"
            NQ = "MarineQuest3"
            QN = 1
            QP = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            QPT = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            PUK = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
          elseif Lv == 900 or Lv <= 949 then -- Marine Captain [Lv. 900]
            Ms = "Marine Captain [Lv. 900]"
            NQ = "MarineQuest3"
            QN = 2
            QP = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            QPT = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            PUK = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
          elseif Lv == 950 or Lv <= 974 then -- Zombie [Lv. 950]
            Ms = "Zombie [Lv. 950]"
            NQ = "ZombieQuest"
            QN = 1
            QP = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            QPT = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            PUK = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
          elseif Lv == 975 or Lv <= 999 then -- Vampire [Lv. 975]
            Ms = "Vampire [Lv. 975]"
            NQ = "ZombieQuest"
            QN = 2
            QP = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
            QPT = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            PUK = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
          elseif Lv == 1000 or Lv <= 1049 then -- Snow Trooper [Lv. 1000] **
            Ms = "Snow Trooper [Lv. 1000]"
            NQ = "SnowMountainQuest"
            QN = 1
            QP = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            QPT = Vector3.new(604.964966, 401.457062, -5371.69287)
            PUK = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
          elseif Lv == 1050 or Lv <= 1099 then -- Winter Warrior [Lv. 1050]
            Ms = "Winter Warrior [Lv. 1050]"
            NQ = "SnowMountainQuest"
            QN = 2
            QP = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            QPT = Vector3.new(604.964966, 401.457062, -5371.69287)
            PUK = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
          elseif Lv == 1100 or Lv <= 1124 then -- Lab Subordinate [Lv. 1100]
            Ms = "Lab Subordinate [Lv. 1100]"
            NQ = "IceSideQuest"
            QN = 1
            NameMon = "Lab Subordinate"
            QP = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            QPT = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            PUK = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
          elseif Lv == 1125 or Lv <= 1174 then -- Horned Warrior [Lv. 1125]
            Ms = "Horned Warrior [Lv. 1125]"
            NQ = "IceSideQuest"
            QN = 2
            QP = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            QPT = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            PUK = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
          elseif Lv == 1175 or Lv <= 1199 then -- Magma Ninja [Lv. 1175]
            Ms = "Magma Ninja [Lv. 1175]"
            NQ = "FireSideQuest"
            QN = 1
            QP = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            QPT = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            PUK = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
          elseif Lv == 1200 or Lv <= 1249 then -- Lava Pirate [Lv. 1200]
            Ms = "Lava Pirate [Lv. 1200]"
            NQ = "FireSideQuest"
            QN = 2
            QP = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            QPT = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            PUK = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
          elseif Lv == 1250 or Lv <= 1274 then -- Ship Deckhand [Lv. 1250]
            Ms = "Ship Deckhand [Lv. 1250]"
            NQ = "ShipQuest1"
            QN = 1
            QP = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            QPT = Vector3.new(1037.80127, 125.092171, 32911.6016)
            PUK = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
          elseif Lv == 1275 or Lv <= 1299 then -- Ship Engineer [Lv. 1275]
            Ms = "Ship Engineer [Lv. 1275]"
            NQ = "ShipQuest1"
            QN = 2
            QP = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            QPT = Vector3.new(1037.80127, 125.092171, 32911.6016)
            PUK = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
          elseif Lv == 1300 or Lv <= 1324 then -- Ship Steward [Lv. 1300]
            Ms = "Ship Steward [Lv. 1300]"
            NQ = "ShipQuest2"
            QN = 1
            QP = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            QPT = Vector3.new(968.80957, 125.092171, 33244.125)
            PUK = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
          elseif Lv == 1325 or Lv <= 1349 then -- Ship Officer [Lv. 1325]
            Ms = "Ship Officer [Lv. 1325]"
            NQ = "ShipQuest2"
            QN = 2
            QP = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            QPT = Vector3.new(968.80957, 125.092171, 33244.125)
            PUK = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
          elseif Lv == 1350 or Lv <= 1374 then -- Arctic Warrior [Lv. 1350]
            Ms = "Arctic Warrior [Lv. 1350]"
            NQ = "FrostQuest"
            QN = 1
            QP = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            QPT = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            PUK = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
          elseif Lv == 1375 or Lv <= 1424 then -- Snow Lurker [Lv. 1375]
            Ms = "Snow Lurker [Lv. 1375]"
            NQ = "FrostQuest"
            QN = 2
            QP = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            QPT = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            PUK = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
          elseif Lv == 1425 or Lv <= 1449 then -- Sea Soldier [Lv. 1425]
            Ms = "Sea Soldier [Lv. 1425]"
            NQ = "ForgottenQuest"
            QN = 1
            QP = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            QPT = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            PUK = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
          elseif Lv >= 1450 then -- Water Fighter [Lv. 1450]
            Ms = "Water Fighter [Lv. 1450]"
            NQ = "ForgottenQuest"
            QN = 2
            QP = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            QPT = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            PUK = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
        end
    end
    if Three then
        if Lv == 1500 or Lv <= 1524 then -- Pirate Millionaire
            Ms = "Pirate Millionaire [Lv. 1500]"
            NQ = "PiratePortQuest"
            QN = 1
            QP = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            QPT = Vector3.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            PUK = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
        elseif Lv == 1525 or Lv <= 1574 then -- Pistol Billoonaire
            Ms = "Pistol Billionaire [Lv. 1525]"
            NQ = "PiratePortQuest"
            QN = 2
            QP = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            QPT = Vector3.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            PUK = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
        elseif Lv == 1575 or Lv <= 1599 then -- Dragon Crew Warrior
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NQ = "AmazonQuest"
            QN = 1
            QP = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            QPT = Vector3.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            PUK = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
        elseif Lv == 1600 or Lv <= 1624 then -- Dragon Crew Archer
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NQ = "AmazonQuest"
            QN = 2
            QP = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            QPT = Vector3.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            PUK = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
        elseif Lv == 1625 or Lv <= 1649 then -- Female Islander
            Ms = "Female Islander [Lv. 1625]"
            NQ = "AmazonQuest2"
            QN = 1
            QP = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            QPT = Vector3.new(5446.8793945313, 601.62945556641, 749.45672607422)
            PUK = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
        elseif Lv == 1650 or Lv <= 1699 then -- Giant Islander
            Ms = "Giant Islander [Lv. 1650]"
            NQ = "AmazonQuest2"
            QN = 2
            QP = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            QPT = Vector3.new(5446.8793945313, 601.62945556641, 749.45672607422)
            PUK = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
        elseif Lv == 1700 or Lv <= 1724 then -- Marine Commodore
            Ms = "Marine Commodore [Lv. 1700]"
            NQ = "MarineTreeIsland"
            QN = 1
            QP = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            QPT = Vector3.new(2179.98828125, 28.731239318848, -6740.0551757813)
            PUK = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
        elseif Lv == 1725 or Lv <= 1774 then -- Marine Rear Admiral
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NQ = "MarineTreeIsland"
            QN = 2
            QP = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            QPT = Vector3.new(2179.98828125, 28.731239318848, -6740.0551757813)
            PUK = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
        elseif Lv == 1775 or Lv <= 1799 then -- Fishman Raide
            Ms = "Fishman Raider [Lv. 1775]"
            NQ = "DeepForestIsland3"
            QN = 1
            QP = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
            QPT = Vector3.new(-10582.759765625, 331.78845214844, -8757.666015625)
            PUK = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
        elseif Lv == 1800 or Lv <= 1824 then -- Fishman Captain
            Ms = "Fishman Captain [Lv. 1800]"
            NQ = "DeepForestIsland3"
            QN = 2
            QP = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
            QPT = Vector3.new(-10582.759765625, 331.78845214844, -8757.666015625)
            PUK = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
        elseif Lv == 1825 or Lv <= 1849 then -- Forest Pirate
            Ms = "Forest Pirate [Lv. 1825]"
            NQ = "DeepForestIsland"
            QN = 1
            QP = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            QPT = Vector3.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            PUK = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
        elseif Lv == 1850 or Lv <= 1899 then -- Mythological Pirate
            Ms = "Mythological Pirate [Lv. 1850]"
            NQ = "DeepForestIsland"
            QN = 2
            QP = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            QPT = Vector3.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            PUK = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
        elseif Lv == 1900 or Lv <= 1924 then -- Jungle Pirate
            Ms = "Jungle Pirate [Lv. 1900]"
            NQ = "DeepForestIsland2"
            QN = 1
            QP = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            QPT = Vector3.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            PUK = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
        elseif Lv == 1925 or Lv <= 1974 then -- Musketeer Pirate
            Ms = "Musketeer Pirate [Lv. 1925]"
            NQ = "DeepForestIsland2"
            QN = 2
            QP = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            QPT = Vector3.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            PUK = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif Lv == 1925 or Lv <= 1974 then -- Musketeer Pirate
            Ms = "Musketeer Pirate [Lv. 1925]"
            NQ = "DeepForestIsland2"
            QN = 2
            QP = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            QPT = Vector3.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            PUK = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif Lv == 1975 or Lv <= 1999 then -- Reborn Skeleton
            Ms = "Reborn Skeleton [Lv. 1975]"
            NQ = "HauntedQuest1"
            QN = 1
            QP = CFrame.new(-9481.0439453125, 142.13061523438, 5564.1069335938)
            QPT = Vector3.new(-9481.0439453125, 142.13061523438, 5564.1069335938)
            PUK = CFrame.new(-8940.265625, 160.77685546875, 5904.806640625)
        elseif Lv == 2000 or Lv <= 2024 then -- Living Zombie
            Ms = "Living Zombie [Lv. 2000]"
            NQ = "HauntedQuest1"
            QN = 2 
            QP = CFrame.new(-9480.62305, 142.130661, 5563.63477, -0.6752159, 1.62456413e-08, -0.737620115, 4.96923391e-09, 1, 1.74755748e-08, 0.737620115, 8.13437939e-09, -0.6752159)
            QPT = Vector3.new(-9481.0439453125, 142.13061523438, 5564.1069335938)
            PUK = CFrame.new(-10087.9238, 398.988098, 5931.33496, 0.195364684, 0, 0.980730653, -0, 1, -0, -0.980730653, 0, 0.195364684)
        elseif Lv == 2020 or Lv <= 2049 then -- Demonic Soul
            Ms = "Demonic Soul [Lv. 2025]"
            NQ = "HauntedQuest2"
            QN = 1	 
            QP = CFrame.new(-9518.3623046875, 172.13063049316, 6076.2333984375)
            QPT = Vector3.new(-9518.3623046875, 172.13063049316, 6076.2333984375)
            PUK = CFrame.new(-9677.58984375, 271.1305847168, 6261.9907226563)
        elseif Lv == 2050 or Lv <= 10000 then -- Posessed Mummy
            Ms = "Posessed Mummy [Lv. 2050]"
            NQ = "HauntedQuest2"
            QN = 2	 
            QP = CFrame.new(-9518.3623046875, 172.13063049316, 6076.2333984375)
            QPT = Vector3.new(-9518.3623046875, 172.13063049316, 6076.2333984375)
            PUK = CFrame.new(-9519.087890625, 69.619895935059, 6365.482421875)
        end
    end
end
CheckQuest()

spawn(function()
        while wait() do
            if _G.Auto_Farm_Level then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    CheckQuest()
                    local Distance = (QPT - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    local Speed = 150
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = QP})
                    tween:Play()
                    wait(Distance/Speed)
                    local args = {
                        [1] = "StartQuest",
                        [2] = NQ,
                        [3] = QN
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    wait(1)
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = PUK})
                    tween:Play()
                    wait(2)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat wait()
                                CheckQuest()
                                EquipTool()
                                Buso()
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                                require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1}
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,20)
                                BringMob()
                                if v.Humanoid.Health == 0 then
                                    plr.Character.HumanoidRootPart.CFrame = PUK
                                end
                                if plr.Character.Humanoid.Health == 0 then
                                    _G.Auto_Farm_Level = false
                                    wait(6)
                                    _G.Auto_Farm_Level = true
                                end
                            until _G.Auto_Farm_Level == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                        end
                    end
                else
                    CheckQuest()
                    local Distance = (QPT - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    local Speed = 150
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = QP})
                    tween:Play()
                    wait(Distance/Speed)
                    local args = {
                        [1] = "StartQuest",
                        [2] = NQ,
                        [3] = QN
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = PUK})
                    tween:Play()
                end
            end
        end
end)

spawn(function()
    repeat wait()
        if _G.Auto_Farm_Level == false then
        local args = {
            [1] = "AbandonQuest"
        }

        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    until _G.Auto_Farm_Level == false
end)

spawn(function()
    while wait() do
        if _G.Auto_Farm_Level then
            plr.Character.Humanoid:ChangeState(11)
        end
    end
end)

function BringMob()
    if _G.Auto_Farm_Level then
        CheckQuest()
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                end
                v.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-20)
                v.HumanoidRootPart.CanCollide = false
                v.Humanoid:ChangeState(11)
                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                end
            end
        end
    end
end

function Buso()
if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
else
local args = {
    [1] = "Buso"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end

function EquipTool()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == _G.SelectWeapon then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
end

section10:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
    print("Activated Keybind")
    venyx:toggle()
    end, function()
    print("Changed Keybind")
    end)

section1:addToggle("Auto Farm Level",false,function(a)
    _G.Auto_Farm_Level = a
end)
section1:addToggle("Fast Attack",false,function(t)
    _G.FastAttack = t
end)

function Fast()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

spawn(function()
while wait() do
if _G.FastAttack then
    Fast()
            Fast()
            require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 80
            require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1} 
            require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.timeToNextAttack = 0
        end
    end
    if plr.Character.Humanoid == 0 then
        _G.FastAttack = false
        wait(6)
        _G.FastAttack = true
    end
end)


Weaponlist = {}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
        table.insert(Weaponlist ,v.Name)
    end
end
section1:addDropdown("Select Weapon",Weaponlist,function(Value)
    _G.SelectWeapon = Value
end)

for theme, color in pairs(themes) do
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

venyx:SelectPage(venyx.pages[1], true)
