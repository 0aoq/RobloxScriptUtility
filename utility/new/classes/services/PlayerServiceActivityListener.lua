-- PlayerServiceActivityListener
-- author: @roblox/0a_oq, @github/0aoq

local Players = game:GetService("Players")

return {
	name = script.Name,
	constructor = function(type, luauFunction)
		local con
		
		if (type == "Join") then
			con = Players.PlayerAdded:Connect(function(Player)
				luauFunction(Player, os.time()) end)
		elseif (type == "Leave") then
			con = Players.PlayerRemoving:Connect(function(Player)
				luauFunction(Player, os.time()) end); end

		-- object functions

		local properties = {} do
			function properties:Disconnect()
				con:Disconnect()
			end
		end; return properties
	end,
}
