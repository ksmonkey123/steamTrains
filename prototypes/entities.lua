-- Make a copy of the base game's locomotive, then make the needed changes for this mod
local fluid_locomotive = table.deepcopy(data.raw["locomotive"]["locomotive"])
fluid_locomotive.name = "SteamTrains-locomotive"
fluid_locomotive.minable.result = "SteamTrains-locomotive"
fluid_locomotive.burner.fuel_category = "SteamTrains-steam"
fluid_locomotive.burner.fuel_inventory_size = 1
fluid_locomotive.burner.burnt_inventory_size = 1
fluid_locomotive.color = { r = 0.2, g = 0.7, b = 1, a = 0.5 }
data:extend({fluid_locomotive})

if settings.startup["steamTrains_enable_legacy"].value then
  local steam_loco = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
  steam_loco.name = "steam-locomotive"
  steam_loco.minable.result = "SteamTrains-locomotive"
  steam_loco.color = { r = 0.2, g = 0.7, b = 1, a = 0.5 }
  data:extend({steam_loco})
end

