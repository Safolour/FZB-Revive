scoreboard players operation #owner origin.owner = @s origin.owner
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:darkness
# Replay: these transition cues originate at each listener, so every participant hears them.
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:block.end_portal.spawn hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 0
scoreboard players set #lab_phase map 1
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run tp @s ~48 ~ ~
function zombie:skill/creation/origin/transition/floor_reset
# ClearAura 09/30: fixed P1 source, volume 10; spatial sound covering both arenas, not one copy per listener.
playsound minecraft:entity.zombie_villager.cure hostile @a[scores={system.room=4..}] 300.5 99 124.5 10 0
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:night_vision
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.lightning_bolt.impact hostile @s ~ ~ ~ 2 1
function zombie:zombie/creation/titan/0
function map:music/origin/p2
