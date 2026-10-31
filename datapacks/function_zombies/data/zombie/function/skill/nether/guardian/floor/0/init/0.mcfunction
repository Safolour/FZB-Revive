

#floor (r26-30)
clone 286 140 129 314 142 173 286 90 129

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 80 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.floor.title.1"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1

schedule function zombie:skill/nether/guardian/floor/0/init/1 3s
