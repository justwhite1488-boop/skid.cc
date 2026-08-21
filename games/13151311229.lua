-- 13151311229.lua
-- > Services
local StarterGui = game:GetService('StarterGui')
local Players = game:GetService('Players')

-- > Variables
local LocalPlayer = Players.LocalPlayer

-- > Connections
do -- > Miscellaneous Library
	if not identifyexecutor or typeof(identifyexecutor) ~= 'function' then
		getgenv().identifyexecutor = function()
			return 'Unknown', 'Unknown'
		end
	end
end

do -- > Environment Library
	if not getgc or typeof(getgc) ~= 'function' then
		LocalPlayer:Kick(identifyexecutor() .. '. [getgc]')
	end
end

do -- > Metatable Library
	if not getnamecallmethod or typeof(getnamecallmethod) ~= 'function' then
		LocalPlayer:Kick(identifyexecutor() .. '. [getnamecallmethod]')
	end
	--
	if not hookmetamethod or typeof(hookmetamethod) ~= 'function' then
		LocalPlayer:Kick(identifyexecutor() .. '. [hookmetamethod]')
	end
	--
	if not setreadonly or typeof(setreadonly) ~= 'function' then
		if makewritable and makereadonly then
			getgenv().setreadonly = function(...)
				local Args = {...}
				if not Args[1] then return end
				(Args[2] and makereadonly or makewriteable)(Args[1])
			end
		elseif not makewritable or typeof(makewritable) ~= 'function' then
			LocalPlayer:Kick(identifyexecutor() .. '. [makewritable]')
		elseif not makereadonly or typeof(makereadonly) ~= 'function' then
			LocalPlayer:Kick(identifyexecutor() .. '. [makereadonly]')
		end
	end
end

do -- > Closure Library
	if not hookfunction or typeof(hookfunction) ~= 'function' then
		if oth and typeof(oth) == 'table' and typeof(oth.hook) == 'function' then
			getgenv().hookfunction = oth.hook
		else
			LocalPlayer:Kick(identifyexecutor() .. '. [hookfunction]')
		end
	end
end

do -- > Bypass Procedures
	do -- Bypass 0 Procedure (0/3)
		for Index, Value in next, getgc(true) do
			if typeof(Value) == 'table' and rawget(Value, '__tostring') and typeof(rawget(Value, '__tostring')) == 'function' and debug.getinfo(rawget(Value, '__tostring')).currentline == 204 then
				hookfunction(rawget(Value, '__tostring'), function() return '' end)
			end
		end
		--
		StarterGui:SetCore('SendNotification', {
			Duration = 60000,
			--
			Title = 'Anti-Cheat Removal, by @VoidOverlord.',
			Text = 'Bypass 0 procedure executed without errors.'
		})
	end
	--
	do -- Bypass 1 & 2 Procedure (2/3)
		hookfunction(LocalPlayer.Kick, function() return nil end)
		local Original; Original = hookmetamethod(game, '__namecall', function(self, ...)
			local Args = {...}
			if getnamecallmethod() == 'FireServer' then if (tostring(self) == 'KML' or tostring(self) == 'aKM' or tostring(self) == 'km' or tostring(self) == 'fn') or (Args[1] == 'airwalk' or Args[1] == 'speed' or Args[1] == 'jp' or Args[1] == 'GG' or tonumber(Args[1]) == 2 or tonumber(Args[1]) == 3) then return nil end end
			--
			return Original(self, table.unpack(Args))
		end)
		--
		StarterGui:SetCore('SendNotification', {
			Duration = 60000,
			--
			Title = 'Anti-Cheat Removal, by @VoidOverlord.',
			Text = 'Bypass 1 & 2 procedure executed without errors.'
		})
	end
	--
	do -- Bypass 3 Procedure (3/3)
		setreadonly(math, false)
		local Original; Original = hookfunction(math.max, function(...)
			local Args = {...}
			--
			local Success, Source = pcall(debug.info, 2, 's')
			if Success and Source and Source:find('Kmdj') then
				return 3
			end
			--
			return Original(table.unpack(Args))
		end)
		--
		StarterGui:SetCore('SendNotification', {
			Duration = 60000,
			--
			Title = 'Anti-Cheat Removal, by @VoidOverlord.',
			Text = 'Bypass 3 procedure executed without errors.'
		})
	end
end
