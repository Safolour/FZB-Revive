data modify storage map:r40 p5_door_warned set value 1b
title @a[scores={system.room=4..,title.color.enable=0}] times 0 100 0
title @a[scores={system.room=4..,title.color.enable=0}] title {translate:"zb.zombie.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.10"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.10.0"}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1
