repeat wait() until game:IsLoaded()
wait(10)
local player = game:GetService("Players").LocalPlayer
local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
local desiredPlaceID = 14363263080
local currentPlaceID = game.PlaceId


local function moveAndWait(position)
    if humanoid then
        humanoid:MoveTo(position)
        humanoid.MoveToFinished:Wait()
    end
end

if currentPlaceID == desiredPlaceID then
moveAndWait(Vector3.new(68, 4, 699))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-41, 9, 702))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-220, 5, 702))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-427, 5, 701))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-578, 4, 701))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-745, 4, 701))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-898, 4, 700))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-1033, 4, 701))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-1224, 15, 703))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-1323, 11, 701))
moveAndWait(Vector3.new(-1329, 11, 703))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-1406, -1, 747))
moveAndWait(Vector3.new(-1456, -9, 700))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-1490, -14, 668))
moveAndWait(Vector3.new(-1514, -17, 673))
moveAndWait(Vector3.new(-1531, -18, 693))
moveAndWait(Vector3.new(-1550, -20, 695))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-1596, -17, 696))
moveAndWait(Vector3.new(-1608, -15, 632))
moveAndWait(Vector3.new(-1734, -2, 613))
moveAndWait(Vector3.new(-1751, 10, 661))
moveAndWait(Vector3.new(-1735, 15, 693))
moveAndWait(Vector3.new(-1833, 13, 697))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-1941, 13, 697))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Q, false, game)
moveAndWait(Vector3.new(-2103, 13, 697))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
moveAndWait(Vector3.new(-2349, 14, 695))
game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
else
print('no')
end
