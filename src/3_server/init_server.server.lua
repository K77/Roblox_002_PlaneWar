--主要是一些自定义常量，还有非rojo管理的配置，需要在全局_G里面定义
_G.PathRojoShare = game:GetService("ReplicatedStorage"):WaitForChild("2_RojoShare")
_G.ConstShare = require(_G.PathRojoShare.const_share)
local Players = game:GetService("Players")
local s_prompt = require(script.Parent.s_prompt)
local s_status = require(script.Parent.s_status)
local s_head_name = require(script.Parent.s_head_name)

print("server inited!!!")

