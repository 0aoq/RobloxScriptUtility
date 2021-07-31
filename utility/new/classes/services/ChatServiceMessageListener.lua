-- ChatServiceMessageListener
-- author: @roblox/0a_oq, @github/0aoq

local Players = game:GetService("Players")

return {
	name = script.Name,
	constructor = function(luauFunction)
		local con
		local function worker (Player)
			-- fire function
			con = Player.Chatted:Connect(function(msg)
				luauFunction(Player, msg); end)
		end
		
		-- handle current players
		for _,Player in pairs(Players:GetPlayers()) do 
			worker(Player); end
		
		-- handle new joins
		Players.PlayerAdded:Connect(function(Player)
			worker(Player); end)
		
		-- object functions
		
		local properties = {} do
			function properties:Disconnect()
				con:Disconnect()
			end
		end; return properties
	end,
}
