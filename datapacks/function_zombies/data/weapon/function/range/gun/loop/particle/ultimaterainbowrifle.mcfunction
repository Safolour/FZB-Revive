
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return fail
execute store result score random weapon.range run random value 1..7
#red
execute if score range weapon.range matches 1..9 if score random weapon.range matches 1 run particle dust{color:[1,0,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 1 run particle dust{color:[1,0,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]
#green
execute if score range weapon.range matches 1..9 if score random weapon.range matches 2 run particle dust{color:[0,1,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 2 run particle dust{color:[0,1,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]
#blue
execute if score range weapon.range matches 1..9 if score random weapon.range matches 3 run particle dust{color:[0,0,1],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 3 run particle dust{color:[0,0,1],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]
#yellow
execute if score range weapon.range matches 1..9 if score random weapon.range matches 4 run particle dust{color:[1,1,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 4 run particle dust{color:[1,1,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]
#orange
execute if score range weapon.range matches 1..9 if score random weapon.range matches 5 run particle dust{color:[1,0.5,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 5 run particle dust{color:[1,0.5,0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]
#aqua
execute if score range weapon.range matches 1..9 if score random weapon.range matches 6 run particle dust{color:[0,1,1],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 6 run particle dust{color:[0,1,1],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]
#aqua
execute if score range weapon.range matches 1..9 if score random weapon.range matches 7 run particle dust{color:[0.5,0,1],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. if score random weapon.range matches 7 run particle dust{color:[0.5,0,1],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]