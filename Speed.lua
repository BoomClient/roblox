repeat wait() until game:IsLoaded()
wait(10)
local Player = game.Players.LocalPlayer
local walkspeed = 33
while wait(0.0000000001) do
Player.Character.Humanoid.WalkSpeed = walkspeed
end