local tankApi = require "__fluidTrains__/api/data"

tankApi.generateTank(20000)

local function patchBarrel(barrel, energy)
	if barrel then
		if not barrel.fuel_category then
			barrel.fuel_category = "SteamTrains-steam"
			barrel.fuel_value = energy
			barrel.burnt_result = "empty-barrel"
		end
	end
end

patchBarrel(data.raw["item"]["steam-barrel-165"], "1500kJ")
patchBarrel(data.raw["item"]["steam-barrel-500"], "4850kJ")
