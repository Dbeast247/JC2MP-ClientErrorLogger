Events:Subscribe("ModuleError", function(args)

	args.PlayerName = LocalPlayer:GetName()
	args.PlayerID = LocalPlayer:GetSteamId()

	Network:Send("LogClientError", args)
end)
