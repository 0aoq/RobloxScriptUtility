-- Instance
-- author: @roblox/0a_oq, @github/0aoq

local Players = game:GetService("Players")

return {
	name = script.Name,
	constructor = function(type: string, parent: Instance, next)
		local self = Instance.new(type, parent); next(self)

		-- object functions

		local properties = {} do
			function properties:Destroy()
				self:Destroy()
			end
		end; return properties
	end,
}
