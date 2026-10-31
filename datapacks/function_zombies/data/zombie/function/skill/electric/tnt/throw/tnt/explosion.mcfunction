scoreboard players operation match zombie.number = @s zombie.electric.bomber.throw.tntmatch

execute as @e[type=armor_stand] if score @s zombie.electric.bomber.throw.tntmatch = match zombie.number run tag @s add target

kill @e[type=armor_stand,tag=target]

tp @s 0 0 0
kill @s


particle explosion ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle lava ~ ~ ~ 0 0 0 0 5 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.3 5 force @a[scores={particle=0}]

playsound block.end_gateway.spawn record @a ~ ~ ~ 2 1
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 2 0

scoreboard players reset match zombie.number

execute as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/electric/tnt/throw/tnt/damage
