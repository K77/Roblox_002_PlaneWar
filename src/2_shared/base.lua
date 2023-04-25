local module = {}
module.Players = game:GetService("Players")
module.RunService = game:GetService("RunService")


function module.new()
    local aaa = {}
    setmetatable(aaa,{_index = module})
    return aaa
end

return module