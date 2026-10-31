playsound block.note_block.pling record @s ~ ~ ~ 10 1

title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 0 30 0
title @s[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.laser.title.1"}

tellraw @s[scores={system.room=4..}] {"translate":"zb.zombie.guardian.laser.tellraw.1"}
