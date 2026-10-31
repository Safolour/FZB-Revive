execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.omegagma.tellraw.0"}

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 40 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.area.temperature.title.0"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.omegagma.title.0"}
