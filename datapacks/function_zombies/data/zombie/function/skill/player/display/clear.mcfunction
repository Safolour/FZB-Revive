
#execute as @n[type=marker,tag=skill.zombie.player] run function zombie:skill/player/display/clear

execute unless entity @s[type=marker] run return fail
scoreboard players operation match zombie.player = @s zombie.player
execute as @e[type=item_display,tag=skill.zombie.player] if score @s zombie.player = match zombie.player run kill @s
scoreboard players reset match zombie.player
kill @s
