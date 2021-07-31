-- math/Seed
-- author: @roblox/0a_oq, @github/0aoq

return {
	name = script.Name,
	constructor = function()
		return math.floor( -- somewhat randomness using random math values lol
			math.random(
				1, 
				tick()
			) * math.floor(
				math.pow(
					math.pi,
					math.random(
						1, 
						5
					)
				)
			) + os.time() * math.random(math.random(16, 32), math.random(32, 64))
		)
	end,
}
