-- PlayerServiceGetPlayer
-- author: @roblox/0a_oq, @github/0aoq

local Players = game:GetService("Players")

return {
	name = script.Name,
	constructor = function(instance: any)
		local player
		if (instance:IsA("Model")) then
			player = Players:GetPlayerFromCharacter(instance)
		elseif (instance:IsA("Part") and instance.Parent:IsA("Model")) then
			player = Players:GetPlayerFromCharacter(instance.Parent)
		elseif (typeof(instance) == "string") then
			player = Players:FindFirstChild(instance)
		end
		
		-- object functions

		local properties = {} do end; return properties, player
	end,
}
