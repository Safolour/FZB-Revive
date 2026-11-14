# Select the smallest sweep score; ties still produce exactly one mark.
scoreboard players set #meteor_best zombie.skill.damage 2147483647
execute as @e[type=marker,tag=firelord.p2.meteor.grid] run function zombie:skill/nether/firelord/p2/meteor/grid_compare
execute as @e[type=marker,tag=firelord.p2.meteor.grid] if score @s zombie.skill.damage = #meteor_best zombie.skill.damage run tag @s add firelord.p2.meteor.best
execute as @e[type=marker,tag=firelord.p2.meteor.best,limit=1,sort=random] at @s run function zombie:skill/nether/firelord/p2/meteor/grid_pick
tag @e[type=marker,tag=firelord.p2.meteor.best] remove firelord.p2.meteor.best
