local locoRecipe = {
    type = "recipe",
    name = "SteamTrains-locomotive",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"steam-engine", 4},
	  {"storage-tank", 1},
      {"electronic-circuit", 10},
      {"steel-plate", 30}
    },
    result = "SteamTrains-locomotive"
}

data:extend({locoRecipe})