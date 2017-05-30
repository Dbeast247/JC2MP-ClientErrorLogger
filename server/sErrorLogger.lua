Network:Subscribe("LogClientError", function(Data)
	local file = io.open("../../ClientErrors.log", "a")
	local ts = os.date("%d/%b %H:%M:%S")

	if not IsValid(file) then return end
	if not Data then return end

	file:write(ts.." | Error From \""..Data.PlayerName.." ("..tostring(Data.PlayerID)..")\" in Module \""..Data.module.."\":\n")
	file:write("  "..Data.error..":\n")

	if Data.args then
		file:write("  Args (Name | Value):\n")
		for k, v in pairs(Data.args) do
			file:write("    "..k.." | "..v.."\n")
		end
	end

	file:write("\n")

	file:flush()
	file:close()
end)
