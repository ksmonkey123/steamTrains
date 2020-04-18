local iconSize = data.raw.item["empty-barrel"].icon_size -- 32px in v0.17, 64px in v0.18

local fillSteamRecipe = {
  allow_decomposition = false,
  category = "crafting-with-fluid",
  enabled = false, -- can set to true to ignore tech unlocks
  energy_required = 2,
  icon_mipmaps = 4,
  icon_size = 64,
  icons = {
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png",
      icon_mipmaps = 4,
      icon_size = iconSize -- 32px in v0.17, 64px in v0.18
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png",
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
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.7,
        g = 0.7,
        r = 0.7
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/steam.png",
      icon_mipmaps = 4,
      icon_size = iconSize,  -- 32px in v0.17, 64px in v0.18
      scale = 16 / iconSize, -- 0.5  in v0.17, 0.25 in v0.18
      shift = {
        4,
        -8
      }
    }
  },
  ingredients = {
    {
      amount = 500,
      catalyst_amount = 500,
      name = "steam",
      type = "fluid",
      minimum_temperature = 165.0
    },
    {
      amount = 1,
      catalyst_amount = 1,
      name = "empty-barrel",
      type = "item"
    }
  },
  localised_name = {
    "recipe-name.fill-barrel",
    {
      "fluid-name.steam"
    }
  },
  name = "fill-steam-barrel",
  order = "z[fill-steam-barrel-165]",
  results = {
    {
      amount = 1,
      catalyst_amount = 1,
      name = "steam-barrel",
      type = "item"
    }
  },
  subgroup = "fill-barrel",
  type = "recipe"
}
-- SUPER-HEATED NUCLEAR VARIANT --

local fillSuperSteamRecipe = table.deepcopy(fillSteamRecipe)
fillSuperSteamRecipe.name = "fill-super-steam-barrel"
fillSuperSteamRecipe.order = "z[fill-steam-barrel-500]"
fillSuperSteamRecipe.localised_name[2][1] = "fluid-name.super-steam"
fillSuperSteamRecipe.icons[2].tint.r = 1.0
fillSuperSteamRecipe.ingredients[1].minimum_temperature = 500.0
fillSuperSteamRecipe.results[1].name = "super-steam-barrel"

local locoRecipe = {
    type = "recipe",
    name = "steam-locomotive",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steam-engine", 5},
      {"electronic-circuit", 10},
      {"steel-plate", 30}
    },
    result = "steam-locomotive"
}

local steamExpansionRecipe = {
  type = "recipe",
  name = "steam-expansion",
  category = "chemistry",
  enabled = false,
  energy_required = 0.3,
  ingredients =
  {
    {type="fluid", name="steam", amount=30, minimum_temperature = 500.0},
    {type="fluid", name="water", amount=80}
  },
  results=
  {
    {type="fluid", name="steam", amount=95, temperature = 165.0}
  },
  main_product= "",
  icon = "__steamTrains__/graphics/icons/steam-expansion.png",
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "fluid-recipes",
  order = "f[fluid-chemistry]-a[steam]",
  emissions_multiplier = 0,
  crafting_machine_tint =
  {
    primary = {r = 0.6, g = 1, b = 1, a = 1.000},
		secondary = {r = 1, g = 1, b = 1, a = 1.000},
    tertiary = {r = 1, g = 1, b = 1, a = 0.010},
  }
}

data:extend({
	fillSteamRecipe,
	fillSuperSteamRecipe,
	locoRecipe,
	steamExpansionRecipe
})
