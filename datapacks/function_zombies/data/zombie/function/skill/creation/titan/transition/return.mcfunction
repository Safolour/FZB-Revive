scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #lab_phase map 0
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:darkness
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:night_vision
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:block.end_portal.spawn hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run tp @s ~-48 ~ ~
function map:music/origin/p3
