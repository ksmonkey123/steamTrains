local fluid_locomotive_item = {
    type = "item-with-entity-data",
    name = "SteamTrains-locomotive",
    icon = "__steamTrains__/graphics/icons/steam-locomotive.png",
    icon_size = 64,
	icon_mipmaps = 4,
    subgroup = "transport",
    order = "a[train-system]-fz[diesel-locomotive]",
    place_result = "SteamTrains-locomotive",
    stack_size = 5
}
data:extend({fluid_locomotive_item})

if settings.startup["steamTrains_enable_legacy"].value then
    local old_locomotive = {
        type = "item-with-entity-data",
        name = "steam-locomotive",
        icon = "__steamTrains__/graphics/icons/steam-locomotive.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "transport",
        order = "a[train-system]-fz[diesel-locomotive]",
        place_result = "steam-locomotive",
        stack_size = 5,
        flags = { "hidden" }
    }
    data:extend({old_locomotive})
end

local fluid_steam = data.raw["fluid"]["steam"]

local steam_proxy = {
	type = "item",
	icon = fluid_steam.icon,
	icon_size = fluid_steam.icon_size,
	icon_mipmaps = fluid_steam.icon_mipmaps,
	icons = fluid_steam.icons,
	stack_size = 20000,
	fuel_category = "SteamTrains-steam",
	flags = {"hidden"},
	name = "SteamTrains-steamProxy",
	localised_name = {"", {"fluid-name.steam"}},
	fuel_value = "1500kJ",
	fuel_acceleration_multiplier = settings.startup["steamTrains_steam_accel_mult"].value,
	fuel_top_speed_multiplier = settings.startup["steamTrains_steam_topspeed_mult"].value
}

local mixed_steam_proxy = table.deepcopy(steam_proxy)
mixed_steam_proxy.name = "SteamTrains-mixedSteamProxy"
mixed_steam_proxy.localised_name = {"", {"fluid-name.SteamTrains-mixedSteam"}}
mixed_steam_proxy.fuel_value = "3MJ"
mixed_steam_proxy.fuel_acceleration_multiplier = settings.startup["steamTrains_mixed_steam_accel_mult"].value
mixed_steam_proxy.fuel_top_speed_multiplier = settings.startup["steamTrains_mixed_steam_topspeed_mult"].value
mixed_steam_proxy.flags = {"hidden","hide-from-fuel-tooltip"}

local hot_steam_proxy = table.deepcopy(steam_proxy)
hot_steam_proxy.name = "SteamTrains-hotSteamProxy"
hot_steam_proxy.localised_name = {"", {"fluid-name.SteamTrains-hotSteam"}}
hot_steam_proxy.fuel_value = "4850kJ"
hot_steam_proxy.fuel_acceleration_multiplier = settings.startup["steamTrains_hot_steam_accel_mult"].value
hot_steam_proxy.fuel_top_speed_multiplier = settings.startup["steamTrains_hot_steam_topspeed_mult"].value
hot_steam_proxy.flags = {"hidden","hide-from-fuel-tooltip"}

data:extend({steam_proxy, mixed_steam_proxy, hot_steam_proxy})