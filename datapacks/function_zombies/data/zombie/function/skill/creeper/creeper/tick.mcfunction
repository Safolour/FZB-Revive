scoreboard players operation match zombie.creeper.match = @s zombie.creeper.match
execute as @e[type=creeper,tag=skill.creeper] if score @s zombie.creeper.match = match zombie.creeper.match run tag @s add target
tp @n[type=creeper,tag=target] ~ ~ ~ ~ ~
execute if entity @s[tag=!skill.creeper.lightning] unless entity @s[tag=skill.creeper.primed] if entity @a[scores={stat.player=1},distance=..3,gamemode=adventure] run function zombie:skill/creeper/creeper/primed
execute if entity @s[tag=skill.creeper.lightning] unless entity @s[tag=skill.creeper.primed] if entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] run function zombie:skill/creeper/creeper/primed
execute as @n[type=creeper,tag=target] if entity @s[team=!creeper] run team join creeper @s
scoreboard players reset match zombie.creeper.match
tag @e[type=creeper,tag=target] remove target

execute unless entity @s[tag=skill.creeper.primed] run return fail
scoreboard players add @s zombie.creeper.primed 1
particle smoke ~ ~1.5 ~ 0.05 0.05 0.05 0.1 1 force @a[scores={particle=0}]
execute if score @s zombie.creeper.primed matches 29 run function zombie:skill/creeper/creeper/explosion
