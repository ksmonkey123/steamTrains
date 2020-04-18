steam_loco = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
steam_loco.name = "steam-locomotive"
steam_loco.icon = "__steamTrains__/graphics/icons/steam-locomotive.png"
steam_loco.icon_size = 32
steam_loco.icon_mipmaps = nil
steam_loco.minable.result = "steam-locomotive"
steam_loco.burner.fuel_category = "steam"
steam_loco.burner.effectivity = 1
steam_loco.burner.fuel_inventory_size = 3
steam_loco.burner.burnt_inventory_size = 3
steam_loco.reversing_power_modifier = 1
steam_loco.color = { r = 0.2, g = 0.7, b = 1, a = 0.5 }

data:extend({
	steam_loco
})
