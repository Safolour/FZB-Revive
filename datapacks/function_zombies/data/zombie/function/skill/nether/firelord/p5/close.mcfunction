kill @e[type=text_display,tag=firelord.p5.guide]
data remove storage map:r40 p5
data modify storage map:r40 p5_closed set value 1b
execute in minecraft:overworld run kill @e[tag=mob,tag=!skill.firelord,tag=!firelord.p2.ghast,tag=!p5.raytarget]
execute in minecraft:overworld run kill @e[tag=zombieleft,tag=!skill.firelord,tag=!firelord.p2.ghast]
function map:area/lab/temperature/suspend_effects
function map:door/portal_lab/core/restore_blocks
scoreboard players set lab_core door.open 2
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..}] at @s run playsound entity.blaze.death hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound block.anvil.land hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound block.piston.contract hostile @s ~ ~ ~ 2 0
title @a[scores={system.room=4..,title.color.enable=0}] times 0 100 0
title @a[scores={system.room=4..,title.color.enable=0}] title {translate:"zb.zombie.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.10.4"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.10.5"}
data merge entity @e[type=armor_stand,tag=firelord.p5.switch.status,limit=1] {CustomName:{translate:"zb.zombie.firelord.10.3"}}
kill @e[type=interaction,tag=firelord.p5.switch]
function zombie:skill/nether/firelord/p5/terminal/activate
