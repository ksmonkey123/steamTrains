# SteamTrains
SteamTrains is a Factorio Mod adding Fireless Steam Locomotives that are fueled by steam barrels instead of solid burnable fuels.
(I wished Factorio would allow powering trains with fluids directly, that is however currently not possible...)

This mod adds a few new things to the game:

 - **Steam Locomotive**: A locomotive fueled by *steam barrels* or *superheated steam barrels*
 - **Steam Barrel**: Fill barrels with 500 units of steam with a temperature of at least 165 degrees. 2 Assembly Machines Mk.2 perfectly utilise a single burner. A single barrel contains 15MJ of energy.
 - **Superheated Steam Barrel**: Fill barrels with 500 units of steam with a temperature of at least 500 degrees. A single heat exchanger can supply 3 Assembly Machines Mk. 2. A single barrel contains 30MJ of energy and slightly boosts locomotive performance.
 - **Steam-Steam Heat Exchange** (chemical plant recipe): Mix superheated steam with water to cool it. While cooling it will increase in volume at a ratio of 1:3. A single heat exchanger can supply 3 chemical plants.
 
 ## Balancing
 
 ### Range
 Steam locomotives are limited in their range compared to their fuel-burning counterparts. It is also more efficient to barrel the steam on-site instead of having a central barreling site that delivers to different refueling sites.
 
| fuel type    | locomotive | cargo wagon | fluid wagon | approx. burn time |
|:-------------|-----------:|------------:|------------:|------------------:|
| coal         |   600 MJ   |  8 GJ       | N/A         | 1000 s            |
| solid fuel   | 1.8 GJ     | 24 GJ       | N/A         | 3000 s            |
| steam (165°) |    75 MJ   |    600 MJ   |   750 MJ    |  125 s            |
| steam (500°) |   150 MJ   |  1.2 GJ     | 1.5 GJ*     |  250 s            |

\*a fluid wagon filled with superheated steam (500°) contains 2.425GJ of energy. The 1.5 GJ of energy correspond to the energy available to a steam locomotive after barreling the entire fluid tank.

### Barrels
While *steam barrels* are created at 100% efficiency, *superheated steam barrels* are created at a loss:

500 units of superheated steam contain 48.5 MJ of energy, but after barreling only 30MJ are available. This done to create an interesting tradeoff between cool and hot steam, where cool steam has about half the range of hot steam, but is overall more efficient.

### Steam-Steam Heat Exchange
A single unit of 500° steam contains 97 kJ. A single unit of 165° steam contains 30 kJ.
The steam-steam heat exchange produces 90 units of 165° steam for every 30 units of 500° steam consumed. The 7 units of steam missing from a perfect ratio correspond to a total loss of 7.22%.

The steam-steam heat exchange can be used to produce cool *steam barrels* from a nuclear reactor, but also for coal liquification.


