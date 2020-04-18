# SteamTrains
SteamTrains is a Factorio Mod adding Fireless Steam Locomotives that are fueled by steam barrels instead of solid burnable fuels.
(I wished Factorio would allow powering trains with fluids directly, that is however currently not possible...)

This mod adds a few new things to the game:

 - **Steam Locomotive**: A locomotive fueled by *steam barrels* or *superheated steam barrels*
 - **Steam Barrel**: Fill barrels with 500 units of steam with a temperature of at least 165 degrees. 2 Assembly Machines Mk.2 perfectly utilise a single burner. A single barrel contains 15MJ of energy.
 - **Superheated Steam Barrel**: Fill barrels with 500 units of steam with a temperature of at least 500 degrees. A single heat exchanger can supply 3 Assembly Machines Mk. 2. A single barrel contains 45MJ of energy and slightly boosts locomotive performance.
 - **Steam-Steam Heat Exchange** (chemical plant recipe): Mix superheated steam with water to cool it. While cooling it will increase in volume at a ratio of 6:19. A single heat exchanger can supply 3 chemical plants.
 
 ## Balancing
 
 ### Range
 Steam locomotives are limited in their range compared to their fuel-burning counterparts. It is also more efficient to barrel the steam before shipping instead of barreling at the refueling site (barrels have 10x the energy density of normal steam).
 
| fuel type    | locomotive | cargo wagon | fluid wagon | approx. burn time | acceleration | max speed |
|:-------------|-----------:|------------:|------------:|------------------:|-------------:|----------:|
| coal         |   600 MJ   |  8 GJ       | N/A         | 1000 s            |         100% |      100% |
| steam (165°) |   450 MJ   |  6 GJ       |   750 MJ    |  750 s            |         120% |      105% |
| solid fuel   | 1.8 GJ     | 24 GJ       | N/A         | 3000 s            |         120% |      105% |
| steam (500°) | 1.35 GJ    | 18 GJ       | 2.25 GJ*    | 2250 s            |         150% |      110% |
| rocket fuel  | 3 GJ       | 40 GJ       | N/A         | 5000 s            |         180% |      115% |

\*a fluid wagon filled with superheated steam (500°) contains 2.425GJ of energy. The 2.25 GJ listed account for a 7.22% energy loss when barreling superheated steam.

### Barrels
While *steam barrels* are created at 100% efficiency, *superheated steam barrels* are created at a loss:

500 units of superheated steam contain 48.5 MJ of energy, but after barreling only 45MJ are available (7.22% energy loss).

Since barreling cool steam is 100% efficient and the steam-steam heat exchange only has 2.06% energy loss, it is more energy-efficient to convert superheated steam into cool steam before barreling - but with the consequence of lower speed and acceleration.

### Steam-Steam Heat Exchange
A single unit of 500° steam contains 97 kJ. A single unit of 165° steam contains 30 kJ.
The steam-steam heat exchange produces 95 units of 165° steam for every 30 units of 500° steam consumed. The 2 units of steam missing from a perfect ratio correspond to a total loss of 2.06%.

The steam-steam heat exchange can be used to produce cool *steam barrels* from a nuclear reactor, but also for coal liquefaction.


