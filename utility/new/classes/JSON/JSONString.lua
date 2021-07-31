-- JSONString
-- author: @roblox/0a_oq, @github/0aoq

return {
	name = script.Name,
	constructor = function(t: {})
		return game:GetService("HttpService"):JSONEncode(t)
	end,
}
