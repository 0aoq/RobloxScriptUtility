-- enum/Material
-- author: @roblox/0a_oq, @github/0aoq

return {
	name = script.Name,
	constructor = function(material: string)
		return Enum.Material[material]
	end,
}
