--!strict

-- run/main
-- author: @roblox/0a_oq, @github/0aoq

-- // TYPES

type class = {
	name: string,
	constructor: any	
}

-- // LOADER

local classes = {}

for _,ms in pairs(script.Parent:FindFirstChild("classes"):GetDescendants()) do
	if (ms:IsA("ModuleScript")) then
		local MS_VALUE: class = require(ms); if (MS_VALUE) then
			table.insert(classes, MS_VALUE); end
	end	
end

-- // MAIN

local export = {} do
	for _,x in pairs(classes) do 
		export[x.name] = x.constructor; end
end; return export
