execute if score range weapon.range matches ..1 run return 0
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return 0
particle landing_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
