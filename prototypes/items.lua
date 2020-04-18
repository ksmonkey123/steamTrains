
local iconSize = data.raw.item["empty-barrel"].icon_size -- 32px in v0.17, 64px in v0.18

local steamBarrel = {
  icon_mipmaps = 4,
  icon_size = 64,
  icons = {
    {
      icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
      icon_mipmaps = 4,
      icon_size = iconSize -- 32px in v0.17, 64px in v0.18
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0 for water barrels
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.7,
        g = 0.7,
        r = 0.7 -- was 0.0 for water barrels
      }
    }
  },
  localised_name = {
    "item-name.filled-barrel",
    {
      "fluid-name.steam"
    }
  },
  name = "steam-barrel",
  order = "z[steam-barrel-165]",
  stack_size = 1,
  subgroup = "fill-barrel",
  type = "item",
  fuel_category = "steam",
  fuel_emission_multiplier = 0,
  fuel_value = "15MJ",
  burnt_result = "empty-barrel"
}


local superSteamBarrel = table.deepcopy(steamBarrel)
superSteamBarrel.name = "super-steam-barrel"
superSteamBarrel.order = "z[steam-barrel-500]"
superSteamBarrel.localised_name[2][1] = "fluid-name.super-steam"
superSteamBarrel.icons[2].tint.r = 1.0
superSteamBarrel.icons[3].tint.r = 1.0
superSteamBarrel.fuel_value = "30MJ"
superSteamBarrel.fuel_acceleration_multiplier = 1.2
superSteamBarrel.fuel_top_speed_multiplier = 1.1

data:extend({
  {
    type = "item-with-entity-data",
    name = "steam-locomotive",
    icon = "__steamTrains__/graphics/icons/steam-locomotive.png",
    icon_size = 64,
	icon_mipmaps = 4,
    subgroup = "transport",
    order = "a[train-system]-fz[diesel-locomotive]",
    place_result = "steam-locomotive",
    stack_size = 5
  },
  steamBarrel,
  superSteamBarrel
})
