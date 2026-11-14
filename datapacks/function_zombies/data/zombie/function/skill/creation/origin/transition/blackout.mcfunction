scoreboard players operation #owner origin.owner = @s origin.owner
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect give @s minecraft:blindness 3 2 true
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run title @s reset
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run title @s times 15 1 60
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run title @s subtitle {text:""}
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run title @s title {text:"\uF000"}
