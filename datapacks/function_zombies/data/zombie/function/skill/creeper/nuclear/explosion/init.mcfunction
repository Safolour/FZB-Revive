playsound block.note_block.pling record @a ~ ~ ~ 10 1

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 100 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.laser"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.nuclearcreeper.0"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearcreeper.1","with":[{"translate":"zb.zombie.name.nuclearcreeper"}]}

tag @s remove hitable
