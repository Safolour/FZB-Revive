scoreboard objectives add titan.cfg dummy
scoreboard objectives add titan.age dummy
scoreboard objectives add titan.scatter_cd dummy
scoreboard objectives add titan.light_cd dummy
scoreboard objectives add titan.cast_id dummy
scoreboard objectives add titan.scatter_hit dummy
scoreboard objectives add titan.yaw dummy
team add titan.red
team modify titan.red color red
team modify titan.red collisionRule pushOtherTeams
team modify titan.red friendlyFire false
team add titan.white
team modify titan.white color white
team modify titan.white collisionRule pushOtherTeams
team modify titan.white friendlyFire false
team add titan.aqua
team modify titan.aqua color aqua
team modify titan.aqua collisionRule pushOtherTeams
team modify titan.aqua friendlyFire false
team add titan.dark_red
team modify titan.dark_red color dark_red
team modify titan.dark_red collisionRule pushOtherTeams
team modify titan.dark_red friendlyFire false
function zombie:skill/creation/titan/teleport/load
function zombie:skill/creation/titan/combo/load
function zombie:skill/creation/titan/melee/load
function zombie:skill/creation/titan/lightning/load
scoreboard players set #titan.sword zombie.skill.damage 250
# Two ClearArua hits, armor20/toughness8: raw35 ->19.2 ->7.6 at40%,11.5 at60%.
scoreboard players set #titan.scatter zombie.skill.damage 350
scoreboard players set #scatter.slow titan.cfg 3
scoreboard players set #scatter.wither titan.cfg 3
