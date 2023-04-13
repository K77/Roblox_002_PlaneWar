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

local battleStarter = workspace.BattleArea.BattleStarter :: Part
function module.goInBattle(player:Player)
    player.status.Value = _G.EnumStatus.inBattle
    local newModel = game.Workspace.PlaneModels.Model1:Clone() :: Model
    newModel.Name = player.Name
    newModel.PrimaryPart.Anchored = false
    player.Character = newModel
    newModel.Parent = game.Workspace
    newModel:PivotTo(battleStarter:GetPivot())
end

function module.goOutBattle(player:Player)
    player.status.Value = _G.EnumStatus.outBattle
    
end

RunService.Stepped:Connect(function(time, deltaTime)
    
end)



return module