title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.floor.title.2"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.floor.tellraw.2"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1

schedule function zombie:skill/nether/guardian/crimson/1/warning/1 5s
