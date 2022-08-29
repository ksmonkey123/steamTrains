local locoRecipe = {
    type = "recipe",
    name = "SteamTrains-locomotive",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"steam-engine", 1},
	    {"storage-tank", 1},
      {"electronic-circuit", 10},
      {"steel-plate", 30},
	    {"iron-gear-wheel", 10},
    },
    result = "SteamTrains-locomotive"
}

data:extend({locoRecipe})