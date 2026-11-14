# Aim once, then lift the visible sword 1.5 blocks; do not home or turn during flight.
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return run function zombie:skill/creation/titan/sword/cleanup
tp @s ~ ~ ~ facing entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] feet
tp @s ~ ~1.5 ~
execute at @s rotated ~90 0 as @e[type=item_display,tag=titan.sword.model] if score @s origin.owner = #owner origin.owner run tp @s ~ ~ ~ ~ ~
