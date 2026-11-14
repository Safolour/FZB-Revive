execute unless data storage map:r40 terminals run return 0
execute unless data storage map:r40 doors.4a run return 0
data modify storage map:r40 doors.4a set value 2b
clone 418 114 290 418 128 296 348 88 233 replace force
title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title ""
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.10"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.10"}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 2
execute in minecraft:overworld positioned 348.5 88 236.5 run playsound entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1 1
execute in minecraft:overworld positioned 348.5 90 236.5 run particle explosion ~ ~ ~ 1 1 1 0 8 force @a[scores={system.room=4..,particle=0..1}]
