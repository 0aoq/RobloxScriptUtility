-- module loader
-- author: @roblox/0a_oq, @github/0aoq

-- //  TYPES

type packageLock = {
	placeId: number,
	dependencies: {}
}

-- // MAIN

local package: packageLock = {
	placeId = game.PlaceId,
	dependencies = {}
}

return (function(functions: { string }, module: any)
	if (module == nil) and (functions ~= {""}) then return end
	if not (module:IsA("ModuleScript")) then return warn('Check parameters! "module" must be a ModuleScript') end
	if (functions ~= {}) and (functions ~= {""}) then
		if not (module) then return warn('Check module! "' .. module:GetFullName() .. '" could not be found') end
		
		local m, fullName = require(module), module:GetFullName()
		local f = {}

		if (functions[1] ~= "*")  then
			-- if functions contains specific functions to import, return them
			for _,x in pairs(functions) do
				if (typeof(x) == "string") then
					if (m[x]) then
						table.insert(f, m[x]); table.insert(package, fullName .. "." .. x)
					else
						warn('Check module! "' .. x .. '" is not a valid import for "' .. fullName .. '"')
					end
				end
			end
		else
			-- if functions == { '*' }, then return module
			table.insert(package, fullName); return m
		end

		-- return unpacked version of table
		return table.unpack(f), package
	else
		-- return packageLock if no functions are specified
		return package
	end
end)
