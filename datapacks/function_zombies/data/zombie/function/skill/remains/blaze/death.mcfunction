playsound entity.blaze.death record @a ~ ~ ~ 1.5 1
playsound entity.blaze.death record @a ~ ~ ~ 1.5 1

particle flame ~ ~1 ~ 0 0 0 0.1 40 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

scoreboard players operation match zombie.remains.blaze.match = @s zombie.remains.blaze.match
execute as @e[type=marker,tag=skill.blaze.spawn] if score @s zombie.remains.blaze.match = match zombie.remains.blaze.match run tag @s add target

kill @e[type=marker,tag=target]
scoreboard players reset match zombie.remains.blaze.match
