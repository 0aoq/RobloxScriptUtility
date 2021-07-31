# rblxScriptUtility
Utility scripts for roblox.
Information file at [utility/client.lua](https://github.com/0aoq/rblxScriptUtility/blob/main/utility/client.lua)

## Test Script

This script has the utility folder in ServerScriptService, as well as the calling script.

```lua
-- ./utility
local require = require(script.Parent.utility.loader)
local new = require({ "*" }, script.Parent.utility.new.main)
-- END ./utility

new.ChatServiceMessageListener(function(Player, msg)
	print(Player, msg)
end)

-- while loop test

local loop = new.whileTrueLoop(0.1, function()
	print("Hello, world!")
end)

wait(1)
loop:Destroy()
```
