local a, b = pcall(game.HttpGet, 'https://raw.githubusercontent.com/justwhite1488-boop/skid.cc/refs/heads/main/games/symbiote/games/' .. game.PlaceId .. '.lua')
if a and b ~= ' ' then
	loadstring(b)()
else
	local c, d = pcall(game.HttpGet, 'https://raw.githubusercontent.com/justwhite1488-boop/skid.cc/refs/heads/main/games/symbiote/games/' .. game.GameId .. '.lua')
	if c and d ~= ' ' then
		loadstring(d)()
	else
		warn("game isn't supported.")
	end
end
