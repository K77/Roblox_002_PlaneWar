-- todo 进入战斗状态，变身成为飞机
-- todo 自动发射子弹，按钮是大招
-- todo 生产障碍物，碰子弹爆炸，碰飞机，飞机减血
-- todo 优化飞机场景，优化障碍物飞行速度，爆炸效果

_G.PathRojoShare = game:GetService("ReplicatedStorage"):WaitForChild("2_RojoShare")
_G.ConstShare = require(_G.PathRojoShare.const_share)
_G.debug_mode = true

_G.c_aaa = require(script.Parent.c_camera)

