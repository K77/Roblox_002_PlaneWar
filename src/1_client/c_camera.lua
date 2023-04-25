local module = {}
local player = game:GetService("Players").LocalPlayer



function module.head_far_45()
    print("head_far_45")    
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid")
	humanoid.CameraOffset = Vector3.new(0,10,0)
	local camera = workspace.CurrentCamera :: Camera

	camera.CameraType = Enum.CameraType.Scriptable
    repeat task.wait()
    until camera.CameraType == Enum.CameraType.Scriptable

    local cf = char:GetPivot()

    cf += cf.LookVector *-50
    cf = cf + Vector3.new(0,50,0)

	camera.CFrame = cf * CFrame.Angles(math.rad(-45),0,0)


    task.wait(11)
    camera.CameraType = Enum.CameraType.Follow
end

player.CharacterAdded:Connect(function(character)
    module.head_far_45()
end)

-- module.head_far_45()
return module