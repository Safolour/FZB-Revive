playsound block.note_block.pling record @s ~ ~ ~ 2 1

title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 0 50 0
title @s[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.ashes","color":"#2F4F4F"}
title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.suicidezombie.title"}

tellraw @s {"translate":"zb.zombie.suicidezombie.tellraw"}
