repeat wait() until game:IsLoaded()
wait(3)
local desiredPlaceID = 14363264964
local currentPlaceID = game.PlaceId
-- [ CONFIG ]
Settings = {
	--> [ Script ]
		Enabled = true,						-- false = disable/skip Autolobby
		VIPONLY = false,					-- true = Suspend everything unless on a VIP Server
	--> [ Hosting ]
		LobbyHost = "dragpong",				-- Username of player that will be creating/hosting the game lobby. Will also accept "" to be host
WLParty  = {"OhGeniusZ","OhGeniusZ2","OhGeniusZ3","OhGeniusZ4","OhGeniusZ","OhGeniusZ"},				-- Username(s) to whitelist. Example: {"Player1","Player2","Player3"} | Will also accept {} for solo
		LobbyType = "Dungeon",				-- "Dungeon" or "BossRaid"
	--> [ Dungeon ]
		MapName = "Volcanic Chambers",
		Difficulty = "Insane",
		Hardcore = true,
		WaveDefense = false,				-- Keep this false. (Wave defence doesn't currently work on Blake's Autofarm)
	--> [ BossRaid ]
		BRTier = 30,						-- I'll add an Auto feature for this in a future update
		BRTierReq = 0,						-- Leave at 0. Reserved for future update
	--> [ Misc ]
		Private = true,						-- Keep this true. Reserved for future update
		DisableMusic = true,				-- true = Music disabled | false = Music enabled
		DisableTrade = true,				-- true = Trading disabled | false = Trading enabled
		DebugOutput = false,					-- Enable or Disable script output to Roblox Developer Console
		NameOfAutofarmFile = "",	-- EXACT name of the autofarm lua file
		RunAfOnlyAsHost = true				-- true = Will only run Autofarm when you're the host | false = Will always run Autofarm when Dungeon loads
	} -- [ END CONFIG ] --> (Do not edit below this line)

	DQAL = {}
	SRemote = {
		rFile = nil,
		invoke = {"createLobby","createBossLobby","joinDungeon","playerJoinBossLobby"},
		fire = {"loadPlayerCharacter","changeMute","changeDnD","addPlayerToWhitelist","addPlayerToBossWhitelist","startDungeon","startBossRaid"}}
	setmetatable(SRemote, {__call =
	function(tbl, rScript, ...)
		if not tbl.rFile then tbl.rFile = game:GetService("ReplicatedStorage"):FindFirstChild("remotes") end
		if table.find(tbl.invoke, rScript) then tbl.rFile:FindFirstChild(rScript):InvokeServer(...) return end
		if table.find(tbl.fire, rScript) then tbl.rFile:FindFirstChild(rScript):FireServer(...) return end
	end})


if currentPlaceID == desiredPlaceID then
    SRemote("createLobby", Settings.MapName, Settings.Difficulty, 0, Settings.Hardcore, Settings.Private, Settings.WaveDefense)
	game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("addPlayerToWhitelist"):FireServer("OhGeniusZ")
	game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("addPlayerToWhitelist"):FireServer("OhGeniusZ2")
	game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("addPlayerToWhitelist"):FireServer("OhGeniusZ3")
	game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("addPlayerToWhitelist"):FireServer("OhGeniusZ4")
	game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("addPlayerToWhitelist"):FireServer("OhGeniusZ5")
	game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("addPlayerToWhitelist"):FireServer("OhGeniusZ6")
	wait(30)
	SRemote("startDungeon")
else
    print('Incorrect')
end
