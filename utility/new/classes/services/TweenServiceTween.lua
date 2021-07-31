-- TweenServiceTween
-- author: @roblox/0a_oq, @github/0aoq

local TweenService = game:GetService("TweenService")

return {
	name = script.Name,
	constructor = function(instance, tweeninfo, goal, finished)
		local t = TweenService:Create(instance, tweeninfo, goal); t:Play(); t.Completed:Connect(function()
			if (finished) then finished() end; end)

		-- object functions

		local properties = {} do 
			function properties:Cancel()
				t:Cancel()
			end
		end; return properties
	end,
}
