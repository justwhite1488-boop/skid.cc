local a = game.PlaceId

local b, c = pcall(game.HttpGet, 'https://raw.githubusercontent.com/justwhite1488-boop/skid.cc/refs/heads/main/games/symbiote/games/' .. a .. '.lua')
if b then
	loadstring(c)()
end
