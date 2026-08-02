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
	--
	--[[
	
	if not request or typeof(request) ~= 'function' then
		LocalPlayer:Kick(identifyexecutor() .. '. [request]')
	end
	
	--]]
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

do -- > Script Library
	if not getrunningscripts or typeof(getrunningscripts) ~= 'function' then
		getgenv().getrunningscripts = function()
			local Output = {}
			for Index, Value in next, game:GetDescendants() do
				if not Value:IsA('ModuleScript') or not Value:IsA('LocalScript') or not Value:IsA('Script') then continue end
				--
				table.insert(Output, Value)
			end
			--
			return Output
		end
	end
	--
	if not getscripthash or typeof(getscripthash) ~= 'function' then
		LocalPlayer:Kick(identifyexecutor() .. '. [getscripthash]')
	end
end

do -- > Crypt Library
	if not crypt or typeof(crypt) ~= 'table' then
		getgenv().crypt = {}
	end
	--
	if not crypt.base64decode or typeof(crypt.base64decode) ~= 'function' then
		local Total = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		--
		getgenv().crypt.base64decode = function(...)
			local Args = {...}
			if not Args or typeof(Args[1]) ~= 'string' then return end
			--
			local Binary = Args[1]:gsub('.', function(Value)
				if Value == '=' then return '' end
				--
				local Number = Total:find(Value, 1, true) - 1
				if not Number then return '' end
				--
				local Output = ''
				for Index = 5, 0, -1 do
					if Number >= 2 ^ Index then
						Output = Output .. '1'
						Number = Number - 2 ^ Index
					else
						Output = Output .. '0'
					end
				end
				--
				return Output
			end)
			--
			Binary = Binary:sub(1, -(1 + (#Args[1] % 3)))
			--
			local Output = Binary:gsub('%d%d%d%d%d%d%d%d?', function(Value)
				if #Value ~= 8 then return '' end
				--
				local Group = 0
				for Index = 1, 8 do
					Group = Group + (Value:sub(Index, Index) == '1' and 2 ^ (8 - Index) or 0)
				end
				--
				return string.char(Group)
			end)
			--
			return Output
		end
	end
	--
	if not crypt.base64encode or typeof(crypt.base64encode) ~= 'function' then
		local Total = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		--
		getgenv().crypt.base64encode = function(...)
			local Args = {...}
			if not Args or typeof(Args[1]) ~= 'string' then return end
			--
			local Binary = Args[1]:gsub('.', function(Value)
				Value = Value:byte()
				--
				local Output = ''
				for Index = 8, 1, -1 do
					Output = Output .. (Value % 2 ^ Index - Value % 2 ^ (Index - 1) > 0 and '1' or '0')
				end
				--
				return Output
			end) .. '0000'
			--
			local Output = Binary:gsub('%d%d%d?%d?%d?%d?%d?%d?', function(Value)
				if #Value ~= 6 then return '' end
				--
				local Group = 0
				for Index = 1, 6 do
					Group = Group + (Value:sub(Index, Index) == '1' and 2 ^ (6 - Index) or 0)
				end
				--
				return Total:sub(Group + 1, Group + 1)
			end)
			--
			return Output .. ((#Args[1] % 3 == 1) and '==' or (#Args[1] % 3 == 2) and '=' or '')
		end
	end
	--
	if not crypt.hash or typeof(crypt.hash) ~= 'function' then
		local Constants = buffer.create(256) do
			for Index, Value in next, { 0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5, 0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174, 0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da, 0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967, 0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85, 0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070, 0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3, 0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2 } do
				buffer.writeu32(Constants, (Index - 1) * 4, Value)
			end
		end
		--
		getgenv().crypt.hash = function(...)
			local Args = {...}
			if not Args or typeof(Args[1]) ~= 'string' or typeof(Args[2]) ~= 'string' then return end
			--
			if Args[2] == 'sha256' then
				local function Process(Contents)
					local _Content = buffer.len(Contents)
					local Padding = -(_Content + 9) % 64
					--
					local _Contents = buffer.create(_Content + 1 + Padding + 8)
					buffer.copy(_Contents, 0, Contents)
					buffer.writeu8(_Contents, _Content, 128)
					--
					local Length = _Content * 8
					for Index = 7, 0, -1 do
						local Remainder = Length % 256
						--
						buffer.writeu8(_Contents, Index + _Content + 1 + Padding, Remainder)
						Length = (Length - Remainder) / 256
					end
					--
					return _Contents, _Content + 1 + Padding + 8
				end
				--
				local Offsets = buffer.create(256)
				local function Digest(Blocks, Length)
					local _1, _2, _3, _4 = 0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a
					local _5, _6, _7, _8 = 0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19
					--
					for Offset = 0, Length - 1, 64 do
						for BlockIndex = 0, 60, 4 do
							buffer.writeu32(Offsets, BlockIndex, bit32.byteswap(buffer.readu32(Blocks, Offset + BlockIndex)))
						end
						--
						for Index = 64, 252, 4 do
							local Sub15 = buffer.readu32(Offsets, Index - 60)
							local S0 = bit32.bxor(bit32.rrotate(Sub15, 7), bit32.rrotate(Sub15, 18), bit32.rshift(Sub15, 3))
							--
							local Sub2 = buffer.readu32(Offsets, Index - 8)
							local S1 = bit32.bxor(bit32.rrotate(Sub2, 17), bit32.rrotate(Sub2, 19), bit32.rshift(Sub2, 10))
							--
							local Sub7, Sub16 = buffer.readu32(Offsets, Index - 28), buffer.readu32(Offsets, Index - 64)
							buffer.writeu32(Offsets, Index, (Sub16 + S0 + Sub7 + S1))
						end
						--
						local __1, __2, __3, __4, __5, __6, __7, __8 = _1, _2, _3, _4, _5, _6, _7, _8
						--
						for BufferIndex = 0, 252, 4 do
							local S1 = bit32.bxor(bit32.rrotate(_5, 6), bit32.rrotate(_5, 11), bit32.rrotate(_5, 25))
							local Ch = bit32.bxor(bit32.band(_5, _6), bit32.band(bit32.bnot(_5), _7))
							local Temp1 = _8 + S1 + Ch + buffer.readu32(Constants, BufferIndex) + buffer.readu32(Offsets, BufferIndex)
							_8, _7, _6, _5, _4 = _7, _6, _5, _4 + Temp1, _3
							--
							local S0 = bit32.bxor(bit32.rrotate(_1, 2), bit32.rrotate(_1, 13), bit32.rrotate(_1, 22))
							local Maj = bit32.bxor(bit32.band(_1, _2), bit32.band(_1, _3), bit32.band(_2, _3))
							_3, _2, _1 = _2, _1, Temp1 + S0 + Maj
						end
						--
						_1, _2, _3, _4, _5, _6, _7, _8 = bit32.bor(_1 + __1, 0), bit32.bor(_2 + __2, 0), bit32.bor(_3 + __3, 0), bit32.bor(_4 + __4, 0), bit32.bor(_5 + __5, 0), bit32.bor(_6 + __6, 0), bit32.bor(_7 + __7, 0), bit32.bor(_8 + __8, 0)
					end
					--
					return _1, _2, _3, _4, _5, _6, _7, _8
				end
				--
				local Processed, Length = Process(Args[1])
				local _1, _2, _3, _4, _5, _6, _7, _8 = Digest(Processed, Length)
				--
				local Digest = buffer.create(32)
				buffer.writeu32(Digest, 0, _1)
				buffer.writeu32(Digest, 4, _2)
				buffer.writeu32(Digest, 8, _3)
				buffer.writeu32(Digest, 12, _4)
				buffer.writeu32(Digest, 16, _5)
				buffer.writeu32(Digest, 20, _6)
				buffer.writeu32(Digest, 24, _7)
				buffer.writeu32(Digest, 28, _8)
				--
				return string.format('%08x%08x%08x%08x%08x%08x%08x%08x', _1, _2, _3, _4, _5, _6, _7, _8), Digest
			end
			--
			return nil
		end
	end
end

do -- > Bypass Procedures
	do -- Bypass 0 Procedure (0/3)
		--[[
		for _, Value in next, getrunningscripts() do
			for Index, Meow in next, { checker = '789f4d9c972e5a75f4ed2902d91263807f4a5d3f144e3ad9c168c10fc93e1418cb243a33d0410f94bef56a9f9d331204', detect = '62a2c35cb77aaa8c47efa15288f321eda891a5cf06dfb77a37d6c83e2ff9f570034138230f974b5d58e3e4c8ad1f7d03', fnuuy = '12a0e50844f4cd9b74cd114b6ac043059a7fad55257befb348da6ead530e970ae583331de6faf0466e25da78ee5cb064', Kmdj = 'dc934c9afe6215c83c8527e5fc3e721b160200e60a306721a46a17730b72bb8d4d449f3f01e3cbeaeb79f6a78cc10d8b' } do
				if Index == tostring(Value) and getscripthash(Value) ~= Meow then
					LocalPlayer:Kick(Index .. ' expected ' .. Meow .. ', got ' .. getscripthash(Value) .. '.')
					--
					break
				end
			end
		end
		--]]
		--
		for Index, Value in next, getgc(true) do
			if typeof(Value) == 'table' and rawget(Value, '__tostring') and typeof(rawget(Value, '__tostring')) == 'function' and debug.getinfo(rawget(Value, '__tostring')).currentline == 204 then
				hookfunction(rawget(Value, '__tostring'), function() return nil end)
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
