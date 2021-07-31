# RobloxScriptUtility
Utility scripts for roblox.<br>
Information file at [utility/client.lua](https://github.com/0aoq/rblxScriptUtility/blob/main/utility/client.lua)

Please note this is just a test project, and isn't very documented.<br>
Every script in this repository is meant to be a module script, unless said otherwise within the script.

## Test Script

This script has the utility folder in ServerScriptService, as well as the calling script.

```lua
-- ./utility
local utility = require(script.Parent.utility.client)
local require, new = utility.require, utility.new
-- END ./utility

-- local testModule = require({ "*" }, script.Parent.testModule)
-- local testModule = require({ "test", "test2" }, script.Parent.testModule)

local con = new.ChatServiceMessageListener(function(Player, msg)
	print(Player, msg)
end)

-- while loop test

local loop = new.whileTrueLoop(0.1, function()
	print("Hello, world!")
end)

-- activity listeners

new.PlayerServiceActivityListener("Join", function(Player, timestamp)
	print("New Connection: ", Player.Name, Player.DisplayName, timestamp)
end); new.PlayerServiceActivityListener("Leave", function(Player, timestamp)
	print("Disconnect: ", Player.Name, Player.DisplayName, timestamp); end)

-- Remove all objects

wait(1)
loop:Destroy()

wait(9)
con:Disconnect(); print("Removed chat listener!")
```
