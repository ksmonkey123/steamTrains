data:extend({
  {
    type = "technology",
    name = "steam-locomotives",
    icon = "__steamTrains__/graphics/technology/steam-locomotive.png",
    icon_size = 128,
    prerequisites = {"railway", "fluid-handling"},
	effects = {},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30,
      count = 100
    },
    order = "c-g-a-b",
  }
})

table.insert(data.raw.technology["steam-locomotives"].effects, {type = "unlock-recipe", recipe = "steam-locomotive"})
table.insert(data.raw.technology["fluid-handling"].effects,    {type = "unlock-recipe", recipe = "fill-steam-barrel"})
table.insert(data.raw.technology["nuclear-power"].effects,     {type = "unlock-recipe", recipe = "fill-super-steam-barrel"})
table.insert(data.raw.technology["nuclear-power"].effects,     {type = "unlock-recipe", recipe = "steam-expansion"})
