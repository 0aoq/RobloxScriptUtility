-- easy service loader
-- author: @roblox/0a_oq, @github/0aoq

local services = {
	{name = "TweenService", location = game:GetService("TweenService") or nil},

	{name = "Market", location = game:GetService("MarketplaceService") or nil},
	{name = "MarketplaceService", location = game:GetService("MarketplaceService") or nil},
	
	{name = "Players", location = game:GetService("Players") or nil},
	{name = "ReplicatedStorage", location = game:GetService("ReplicatedStorage") or nil},
	{name = "ServerStorage", location = game:GetService("ServerStorage") or nil},
	{name = "ServerScriptService", location = game:GetService("ServerScriptService") or nil},
	{name = "StarterGui", location = game:GetService("StarterGui") or nil},
	{name = "StarterPack", location = game:GetService("StarterPack") or nil},
	{name = "Workspace", location = game:GetService("Workspace") or nil},
	
	-- adding more soon!
}

local export = {} do
	for _,s in pairs(services) do
		export[s.name] = s.location; end
end; return export
