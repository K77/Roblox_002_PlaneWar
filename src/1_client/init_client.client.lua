-- todo 进入战斗状态，变身成为飞机
-- todo 自动发射子弹，按钮是大招
-- todo 生产障碍物，碰子弹爆炸，碰飞机，飞机减血
-- todo 优化飞机场景，优化障碍物飞行速度，爆炸效果

_G.PathRojoShare = game:GetService("ReplicatedStorage"):WaitForChild("2_RojoShare")
_G.ConstShare = require(_G.PathRojoShare.const_share)


print("client inited!0!!")


local Players = game:GetService("Players")
local Player = Players.LocalPlayer
Player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid.CameraOffset = Vector3.new(0,10,0)
	local camera = workspace.CurrentCamera :: Camera
	camera.CameraType = Enum.CameraType.Scriptable


	camera.CFrame = CFrame.new(-1590.21, 105.082, 90.189,-36.945, 3.501, 0)
	-- task.wait(1)
	-- camera.CFrame = CFrame.new(-1590.21, 105.082, 90.189) * CFrame.fromEulerAnglesXYZ(math.rad(-36.945), 0, 0)
	-- print("client inited!CharacterAdded!!")
end)


print("client inited!1!!")