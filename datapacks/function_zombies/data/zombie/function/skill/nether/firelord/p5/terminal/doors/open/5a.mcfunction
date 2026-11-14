execute unless data storage map:r40 terminals run return 0
execute unless data storage map:r40 doors.5a run return 0
data modify storage map:r40 doors.5a set value 2b
clone 413 114 278 419 126 278 356 113 245 replace force
title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title ""
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.10"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.10"}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 2
execute in minecraft:overworld positioned 359.5 113 245.5 run playsound entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1 1
execute in minecraft:overworld positioned 359.5 115 245.5 run particle explosion ~ ~ ~ 1 1 1 0 8 force @a[scores={system.room=4..,particle=0..1}]
