
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return fail

execute if score range weapon.range matches 1..9 run particle dust{color:[1,1,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. run particle dust{color:[1,1,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]