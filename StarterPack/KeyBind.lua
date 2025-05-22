-- @ScriptType: LocalScript
local player = game.Players.LocalPlayer

repeat wait() until player.Character.Humanoid

local humanoid = player.Character.Humanoid

local mouse = player:GetMouse()

local anim = Instance.new("Animation")
anim.AnimationId = "http://www.roblox.com/asset/?id=9283746592"

mouse.KeyDown:connect(function(key)
  if key == "r" then
   local playAnim = humanoid:LoadAnimation(anim)
   playAnim:Play()
    end
end)