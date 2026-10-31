scoreboard players set @s zombie.lamda.skill_timer 0
tag @s add skill.lamda.laser0

effect give @s slowness infinite 255 true

scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function animated_java:lamda/animations/animation.model.laser/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 40 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"text":"§c\uF020§r"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.lamda.title"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.lamda.tellraw"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1

execute on target if entity @s[type=player,scores={stat.player=1},gamemode=adventure] run tag @s add target
data merge entity @s {NoAI:1b}

execute facing entity @p[tag=target] eyes run tp @s ~ ~ ~ ~ 0

tag @a[tag=target] remove target
