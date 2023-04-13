local module ={}
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    local status = Instance.new("IntValue",player)
    status.Name = "status"
    status.Value = _G.EnumStatus.outBattle

end)

Players.PlayerRemoving:Connect(function(player)
    
end)


function module.goInBattle(player:Player)
    player.status.Value = _G.EnumStatus.inBattle
    
end

function module.goOutBattle(player:Player)
    player.status.Value = _G.EnumStatus.outBattle
    
end

RunService.Stepped:Connect(function(time, deltaTime)
    
end)



return module