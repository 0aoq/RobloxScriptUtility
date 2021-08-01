--[[ 
====================================================================
Licensed under the MIT license
--------------------------------------------------------------------
More information on the license at 
https://github.com/0aoq/RobloxScriptUtility/blob/main/LICENSE
====================================================================
]]

local export = {} 

function export:print(s: string)
	print("[Utility]: " .. s)
end

function export:warn(s: string)
	warn("[Utility]: " .. s)
end

function export:error(s: string)
	error("[Utility]: " .. s)
end

return export
