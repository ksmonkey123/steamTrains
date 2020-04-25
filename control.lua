local function ON_INIT()
	remote.call("fluidTrains_hook", "addLocomotive", "SteamTrains-locomotive", 20000)
	remote.call("fluidTrains_hook", "addFluid", "SteamTrains-steam", "steam", {
		{item = "SteamTrains-hotSteamProxy", temp = 500, multiplier = 50},
		{item = "SteamTrains-mixedSteamProxy", temp = 315, multiplier = 50},
		{item = "SteamTrains-steamProxy", multiplier = 50}
	})
	
	for _, force in pairs(game.forces) do
	  if force.technologies["steam-locomotives"].researched then
	    force.recipes["SteamTrains-locomotive"].enabled = true
	  end
	end
end

script.on_init(ON_INIT)
script.on_configuration_changed(ON_INIT)