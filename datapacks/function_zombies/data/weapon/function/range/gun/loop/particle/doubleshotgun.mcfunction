
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return fail

execute if score range weapon.range matches 4 run particle lava ~ ~ ~ 0.5 0.5 0.5 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
#execute if score range weapon.range matches 1 run particle lava ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]