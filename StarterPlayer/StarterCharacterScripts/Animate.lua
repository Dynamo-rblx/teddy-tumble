-- @ScriptType: LocalScript



-- Very basic walking animation script by GnomeCode
local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")

-- Remeber to select the animtion object and set the id to your own!
local walkAnim = script:WaitForChild("Walk")
local walkAnimTrack = humanoid.Animator:LoadAnimation(walkAnim)

local jumpAnim = script:WaitForChild("Jump")
local jumpAnimTrack = humanoid.Animator:LoadAnimation(jumpAnim)

local fallAnim = script:WaitForChild("Fall")
local fallAnimTrack = humanoid.Animator:LoadAnimation(fallAnim)

local idleAnim = script:WaitForChild("idle")
local idleAnimTrack = humanoid.Animator:LoadAnimation(idleAnim)

humanoid.Running:Connect(function(speed)
	if speed > 0 then
		if not walkAnimTrack.IsPlaying then
			idleAnimTrack:Stop()
			walkAnimTrack:Play()
		end
	else
		if walkAnimTrack.IsPlaying then
			walkAnimTrack:Stop()
			idleAnimTrack:Play()
		end
	end
end)

humanoid.Jumping:Connect(function(jump)
	if jumpAnimTrack.IsPlaying then

		if not jumpAnimTrack.IsPlaying then
			jumpAnimTrack:Play()
		end

		if jumpAnimTrack.IsPlaying then
			jumpAnimTrack:Stop()
		end

	end
end)

humanoid.FreeFalling:Connect(function(fall)
	if fallAnimTrack.IsPlaying then

		if not fallAnimTrack.IsPlaying then
			fallAnimTrack:Play()
		end

		if fallAnimTrack.IsPlaying then
			fallAnimTrack:Stop()
		end

	end
end)

humanoid.FallingDown:Connect(function(fall)
	if fallAnimTrack.IsPlaying then
		if not fallAnimTrack.IsPlaying then
			fallAnimTrack:Play()
		end

		if fallAnimTrack.IsPlaying then
			fallAnimTrack:Stop()
		end
	end
end)
