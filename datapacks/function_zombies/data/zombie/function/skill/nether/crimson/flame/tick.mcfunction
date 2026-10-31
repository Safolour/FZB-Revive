scoreboard players add @s zombie.nether.crimson.flame 1
execute if score @s zombie.nether.crimson.flame matches 2 run data merge entity @s {Fire:72000}

execute if score @s zombie.nether.crimson.flame matches 3 run function zombie:skill/nether/crimson/flame/particle/0
execute if score @s zombie.nether.crimson.flame matches 4 run function zombie:skill/nether/crimson/flame/particle/1
execute if score @s zombie.nether.crimson.flame matches 5 run function zombie:skill/nether/crimson/flame/particle/2
execute if score @s zombie.nether.crimson.flame matches 6 run function zombie:skill/nether/crimson/flame/particle/3
execute if score @s zombie.nether.crimson.flame matches 7 run function zombie:skill/nether/crimson/flame/particle/4
execute if score @s zombie.nether.crimson.flame matches 8 run function zombie:skill/nether/crimson/flame/particle/5
execute if score @s zombie.nether.crimson.flame matches 9 run function zombie:skill/nether/crimson/flame/particle/6
execute if score @s zombie.nether.crimson.flame matches 10 run function zombie:skill/nether/crimson/flame/particle/7

execute if score @s zombie.nether.crimson.flame matches 10 run scoreboard players set @s zombie.nether.crimson.flame 3
