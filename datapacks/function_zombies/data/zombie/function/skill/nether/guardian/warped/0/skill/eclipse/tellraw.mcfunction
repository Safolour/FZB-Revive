tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.eclipse.tellraw.0"}

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 30 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
execute if score stat zombie.nether.guardian matches 3 run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.eclipse.title.0"}
execute if score stat zombie.nether.guardian matches 7 run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.shockwave_eclipse.title.0"}
execute if score stat zombie.nether.guardian matches 5 run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.eclipse.title.0"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
