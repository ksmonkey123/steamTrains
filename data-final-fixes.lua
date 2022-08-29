local tankApi = require "__fluidTrains__/api/data"

tankApi.generateTank(20000)

local function patchBarrel(barrel, energy, hot)
	if barrel then
		if not barrel.fuel_category then
			barrel.fuel_category = "SteamTrains-steam"
			barrel.fuel_value = energy
			barrel.burnt_result = "empty-barrel"
			if hot then
				barrel.fuel_acceleration_multiplier = settings.startup["steamTrains_hot_steam_accel_mult"].value
				barrel.fuel_top_speed_multiplier = settings.startup["steamTrains_hot_steam_topspeed_mult"].value
			else
				barrel.fuel_acceleration_multiplier = settings.startup["steamTrains_steam_accel_mult"].value
				barrel.fuel_top_speed_multiplier = settings.startup["steamTrains_steam_topspeed_mult"].value
			end
		end
	end
end

patchBarrel(data.raw["item"]["steam-barrel-165"], "1500kJ", false)
patchBarrel(data.raw["item"]["steam-barrel-500"], "4850kJ", true)
