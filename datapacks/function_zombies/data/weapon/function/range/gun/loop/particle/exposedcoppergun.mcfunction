execute if score range weapon.range matches ..1 run return 0
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return 0
particle block{block_state:"minecraft:exposed_copper"} ~ ~ ~ 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 2 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 4 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 18 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 24 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 28 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 30 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 34 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 40 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 44 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 56 run particle scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 10 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 22 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 26 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 38 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 42 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 52 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 54 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 58 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if data entity @s data{beam:0} if score range weapon.range matches 60 run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
