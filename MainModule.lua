-- used to import the module without inserting it into the game yourself
-- DEV

--[[
====================================================================
Licensed under the MIT license
--------------------------------------------------------------------
More information on the license at 
https://github.com/0aoq/RobloxScriptUtility/blob/main/LICENSE
====================================================================

PUSH

./client.lua
./settings.lua
./core/loader.lua
./core/functions.lua
./misc/addEventListener.lua
./misc/service.lua
./new/main.lua
./new/classes/example.lua
./new/classes/services/ChatServiceMessageListener.lua
./new/classes/services/PlayerServiceActivityListener.lua
./new/classes/services/PlayerServiceGetPlayer.lua
./new/classes/service/TweenServiceTween.lua
./new/classes/math/Seed.lua
./new/classes/functions/HumanoidAnimation.lua
./new/classes/functions/Instance.lua
./new/classes/functions/WhileTrueLoop.lua
./new/classes/enum/Material.lua
./new/classes/JSON/JSONString.lua
./new/classes/JSON/JSONTable.lua

IGNORE

./DO_NOT_DISTRIBUTE.lua
../Script.lua
../Script.lua
]]

local InsertService = game:GetService("InsertService")

local export = {} do
	function export:LoadUtility()
		local success, model = pcall(InsertService.LoadAsset, InsertService, 7178602922)
		
		if success and model then
			print("[Utility]: Imported!")
			model.utility.Parent = game:GetService("ServerScriptService"); model:Destroy()
		else
			error("[Utility]: Failed to import.")
		end
	end
end; return export
