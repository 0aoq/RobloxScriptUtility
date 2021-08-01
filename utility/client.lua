--!nocheck

--[[
= == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = =
== = == == == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = ==

====================================================================
Licensed under the MIT license
--------------------------------------------------------------------
More information on the license at 
https://github.com/0aoq/RobloxScriptUtility/blob/main/LICENSE
====================================================================

== = == == == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = ==
= == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = == = =
]]

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

local settings = require(script.Parent.settings)
local misc = { "addEventListener", "service"  }

local export = {} do
	export.require = require(script.Parent.core.loader)
	export.new = export.require({ "*" }, script.Parent.new.main)
	
	for _,x in pairs(misc) do
		if (settings[x]) then
			export[x] = export.require({ "*" }, script.Parent.misc[x]);
		end 
	end
end; return export
