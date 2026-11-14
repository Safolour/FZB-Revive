scoreboard players operation #owner origin.owner = @s origin.owner
# The arrival point was chosen before its eight visible debris/sound batches.
execute as @e[type=marker,tag=titan.p3.target] if score @s origin.owner = #owner origin.owner run tag @s add titan.p3.target.current
execute at @e[type=marker,tag=titan.p3.target.current,limit=1] run tp @s ~ ~ ~
tag @e[type=marker,tag=titan.p3.target.current] remove titan.p3.target.current
tag @s remove origin.p2
tag @s remove origin.dormant
tag @s remove origin.transition
tag @s remove origin.p3.return
tag @s add origin.p3
tag @s add hitable
tag @s add bossbar
tag @s add zombieleft
scoreboard players set @s zombie.health 75000
scoreboard players set @s zombie.health0 75000
scoreboard players set @s zombie.max_health 150000
scoreboard players operation @s zombie.armor = @s origin.phase_armor
scoreboard players set @s zombie.bossbar_number 15
scoreboard players set @s origin.phase_age 0
scoreboard players set @s origin.age 0
scoreboard players set @s origin.light_cd 80
scoreboard players set @s origin.sword_cd 80
scoreboard players set @s origin.shovel_cd 100
scoreboard players set @s origin.pick_cd 200
scoreboard players set @s origin.laser_cd 320
tag @s add origin.large75
execute if entity @s[tag=bossbar] run function zombie:bossbar/if_health
data merge entity @s {NoAI:0b,NoGravity:0b,Invulnerable:0b,Invisible:0b,Glowing:0b,Motion:[0d,0d,0d],fall_distance:0d}
effect clear @s minecraft:invisibility
team join mob @s
execute as @e[type=marker,tag=origin.phase.anchor] if score @s origin.owner = #owner origin.owner run kill @s
execute as @e[type=marker,tag=titan.p3.source] if score @s origin.owner = #owner origin.owner run kill @s
execute as @e[type=marker,tag=titan.p3.target] if score @s origin.owner = #owner origin.owner run kill @s
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:darkness
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:night_vision
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run scoreboard players set @s origin.p_owner 0
scoreboard players set #line_scope origin.line 0
