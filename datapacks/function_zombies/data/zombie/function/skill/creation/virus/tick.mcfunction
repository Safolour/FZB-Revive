
scoreboard players add @s zombie.creation.virus 1
execute if score @s zombie.creation.virus matches ..20 run return fail
scoreboard players set @s zombie.creation.virus 0
execute unless entity @a[scores={stat.player=1},distance=..3] run return fail
playsound entity.zombie.infect record @a ~ ~ ~ 2 1
particle entity_effect{color:1963124807} ~ ~1 ~ 0.1 0.1 0.1 1 20 force @a[scores={particle=0}]
function zombie:skill/creation/virus/particle
execute as @a[scores={stat.player=1},distance=..4] at @s run scoreboard players add @s zombie.creation.virus 1
effect give @s speed 1 0 true
