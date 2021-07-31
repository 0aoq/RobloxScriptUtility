-- HumanoidAnimation
-- author: @roblox/0a_oq, @github/0aoq

local Players = game:GetService("Players")

return {
	name = script.Name,
	constructor = function(humanoid: Humanoid, anim: string)
		local track
		if (anim ~= nil) then
			local animator = humanoid:FindFirstChild("Animator")
			track = Instance.new("Animation")
			track.Name = "ScriptAnimation"
			track.AnimationId = anim
			track.Parent = animator
			track = animator:LoadAnimation(track)
			track:Play()
			track:Stop()
		end

		-- object functions

		local properties = {} do
			function properties:Play()
				track:Play(); end
			
			function properties:Stop()
				track:Stop(); end
		end; return properties, track
	end,
}
