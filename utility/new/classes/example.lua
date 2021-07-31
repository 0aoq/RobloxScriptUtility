return {
	name = script.Name,
	constructor = function()
		print("Hello, world!")
	end,
}

--[[

local new = require(PATH_TO_LOADER)
new.example()

]]
