
execute if entity @s[scores={area.reaction.fire_bar=1}] if function map:area/lab/reaction/fire/bar/tick_0 run scoreboard players set @s area.reaction.fire_bar 2
kill @s[scores={area.reaction.fire_bar=1}]
execute as @n[tag=chosen] at @s run function map:area/lab/reaction/fire/bar/tp
scoreboard players set @s area.reaction.fire_bar 1
tag @e[tag=chosen] remove chosen