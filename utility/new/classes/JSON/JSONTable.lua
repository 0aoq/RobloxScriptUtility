-- JSONTable
-- author: @roblox/0a_oq, @github/0aoq

return {
	name = script.Name,
	constructor = function(s: string)
		return game:GetService("HttpService"):JSONDecode(s)
	end,
}
