title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 80 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.floor.title.0"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.floor.tellraw.4"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1

function zombie:skill/nether/guardian/crimson/3/platform/0
