scoreboard players add @s zombie.nether.spirit.soul 1
#execute if score @s zombie.nether.spirit.soul matches 2 run data merge entity @s {Fire:72000}

execute if score @s zombie.nether.spirit.soul matches 3 run function zombie:skill/nether/spirit/soul/particle/0
execute if score @s zombie.nether.spirit.soul matches 4 run function zombie:skill/nether/spirit/soul/particle/1
execute if score @s zombie.nether.spirit.soul matches 5 run function zombie:skill/nether/spirit/soul/particle/2
execute if score @s zombie.nether.spirit.soul matches 6 run function zombie:skill/nether/spirit/soul/particle/3
execute if score @s zombie.nether.spirit.soul matches 7 run function zombie:skill/nether/spirit/soul/particle/4
execute if score @s zombie.nether.spirit.soul matches 8 run function zombie:skill/nether/spirit/soul/particle/5
execute if score @s zombie.nether.spirit.soul matches 9 run function zombie:skill/nether/spirit/soul/particle/6
execute if score @s zombie.nether.spirit.soul matches 10 run function zombie:skill/nether/spirit/soul/particle/7

execute if score @s zombie.nether.spirit.soul matches 10 run scoreboard players set @s zombie.nether.spirit.soul 3
