--[[

# RBLX SCRIPT UTLITY

// BEGIN JSON

{
	"Author Information": {
		"@roblox": "0a_oq",
		"@github": "0aoq"
	},
		
	"Project Information": {
		"name": "rblxScriptUtility",
		"description": "Basic utility modules for roblox games."
		"repository": "@github/0aoq/rblxScriptUtility",
	}
}

// END JSON

This module can be required so that you don't have to individually require each module by yourself.

/// BEGIN SNIPPET
local utility = require(script.Parent.utility.client);
	local require = utility.require;
	local new = utility.new
/// END SNIPPET

Keep in mind that this is just a small WIP project, and my be broken/missing features!!!

]]

local export = {} do
	export.require = require(script.Parent.loader)
	export.new = export.require({ "*" }, script.Parent.new.main)
	export.service = export.require({" * "}, script.Parent.service.main)
end; return export
