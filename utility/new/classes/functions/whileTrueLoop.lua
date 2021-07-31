-- whileTrueLoop
-- author: @roblox/0a_oq, @github/0aoq

return {
	name = script.Name,
	constructor = function(delay, luauFunction)
		local allowed = true

		coroutine.resume(coroutine.create(function()
			while true do
				wait(delay)
				
				if (allowed) then 
					luauFunction() 
				else
					break; end
			end
		end))
		
		-- object functions

		local properties = {} do
			function properties:Destroy() 
				wait(delay)
				allowed = false
			end
		end; return properties
	end,
}
