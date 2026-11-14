execute store result score #flare.dx fl.sunflare run data get entity @s Pos[0] 100
execute store result score #flare.dz fl.sunflare run data get entity @s Pos[2] 100
scoreboard players operation #flare.dx fl.sunflare -= #flare.x fl.sunflare
scoreboard players operation #flare.dz fl.sunflare -= #flare.z fl.sunflare
# Bound each coordinate before squaring to avoid integer overflow for distant players.
execute unless score #flare.dx fl.sunflare matches -700..700 run return run function zombie:skill/nether/firelord/sunflare/absorption
execute unless score #flare.dz fl.sunflare matches -700..700 run return run function zombie:skill/nether/firelord/sunflare/absorption
scoreboard players operation #flare.dx fl.sunflare *= #flare.dx fl.sunflare
scoreboard players operation #flare.dz fl.sunflare *= #flare.dz fl.sunflare
scoreboard players operation #flare.dx fl.sunflare += #flare.dz fl.sunflare
execute if score #flare.dx fl.sunflare matches ..490000 run return run function zombie:skill/nether/firelord/sunflare/damage
function zombie:skill/nether/firelord/sunflare/absorption
