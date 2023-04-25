local module = {}
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(char)
        -- local camera = workspace.CurrentCamera :: Camera
        --camera.CFrame = CFrame.new(-1590.21, 105.082, 90.189,-36.945, 3.501, 0)
        -- task.wait(1)
        -- camera.CFrame = CFrame.new(-1590.21, 105.082, 90.189) * CFrame.fromEulerAnglesXYZ(math.rad(-36.945), 0, 0)
        print("client inited!CharacterAdded!!")
        
        --local char = script.Parent
        -- local player = game.Players:GetPlayerFromCharacter(char)
        local humanoid = char:WaitForChild("Humanoid")
        humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        local head = char:WaitForChild("HumanoidRootPart")
        local headName = game.ServerStorage.HeadName:Clone()
        headName.Parent = head
        headName.Adornee = head
        headName.TextLabel.Text = player.Name
    end)
end)


return module