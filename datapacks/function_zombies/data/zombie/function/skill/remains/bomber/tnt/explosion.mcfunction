scoreboard players operation match zombie.number = @s zombie.remains.bomber.tntmatch
execute as @e[type=armor_stand] if score @s zombie.remains.bomber.tntmatch = match zombie.number run tag @s add target
kill @e[type=armor_stand,tag=target]
scoreboard players reset match zombie.number

tag @s add target
execute as @a[scores={stat.player=1},distance=..4] at @s run function zombie:skill/remains/bomber/tnt/damage
tag @s remove target

function system:death

playsound entity.generic.explode record @a ~ ~ ~ 2 1
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1.5 0

particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
