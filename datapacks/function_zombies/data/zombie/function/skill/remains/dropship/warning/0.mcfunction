
title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"text":"§c\uF005§r"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.dropship.title.0"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1

schedule function zombie:skill/remains/dropship/warning/1 1s
