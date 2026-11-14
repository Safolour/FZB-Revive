scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.phase.anchor] if score @s origin.owner = #owner origin.owner run kill @s
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:darkness
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run scoreboard players set @s origin.p_owner 0
# The replay later returns this same Origin UUID in P3; suspend it out of the P2 room.
tag @s remove zombieleft
tag @s remove origin.transition
tag @s add origin.p2
tag @s add origin.dormant
data merge entity @s {NoAI:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,Motion:[0d,0d,0d]}
