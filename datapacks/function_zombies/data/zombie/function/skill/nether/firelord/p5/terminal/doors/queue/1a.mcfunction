execute if data storage map:r40 doors.1a run return 0
data modify storage map:r40 doors.1a set value 1b
title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title ""
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.9"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.9"}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 2
schedule function zombie:skill/nether/firelord/p5/terminal/doors/open/1a 100t replace
