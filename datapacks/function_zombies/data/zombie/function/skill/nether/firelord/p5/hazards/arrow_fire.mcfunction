scoreboard players set @s area.temperature 100
playsound minecraft:entity.arrow.shoot hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
execute positioned ^ ^0.5 ^0.6 rotated ~-1 ~-6 run function zombie:skill/nether/firelord/p5/hazards/arrow_spawn
execute positioned ^ ^1.5 ^0.6 rotated ~8 ~6 run function zombie:skill/nether/firelord/p5/hazards/arrow_spawn
