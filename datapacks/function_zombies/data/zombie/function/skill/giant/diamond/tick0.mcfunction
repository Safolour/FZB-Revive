scoreboard players add @s zombie.diamondgiant 1

scoreboard players operation match zombie.diamondgiant.match = @s zombie.diamondgiant.match

execute as @e[type=item_display,tag=skill.diamondgiant.sword] if score @s zombie.diamondgiant.match = match zombie.diamondgiant.match run tag @s add target

tp @n[type=item_display,tag=target] ~ ~ ~ ~90 0
tp @s ^ ^ ^1

tag @e[type=item_display,tag=target] remove target

execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/giant/diamond/explosion

execute if score @s zombie.diamondgiant matches 20.. run function zombie:skill/giant/diamond/explosion
