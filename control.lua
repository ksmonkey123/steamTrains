-- Unlock recipes if mod was installed after technology was researched
script.on_configuration_changed(function(e)
  for _, force in pairs(game.forces) do
    if force.technologies["fluid-handling"].researched then
      force.recipes["fill-steam-barrel"].enabled = true
    end

    if force.technologies["nuclear-power"].researched then
      force.recipes["fill-super-steam-barrel"].enabled = true
	  force.recipes["steam-expansion"].enabled = true
    end
	
	if force.technologies["steam-locomotives"].researched then
	  force.recipes["steam-locomotive"].enabled = true
	end
  end
end)
