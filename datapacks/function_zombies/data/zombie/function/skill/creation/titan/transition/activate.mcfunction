execute if entity @s[tag=origin.transition] run return 0
tag @s remove origin.p2
tag @s remove origin.dormant
tag @s add origin.transition
tag @s add origin.p3.return
# The parked Origin keeps R70 alive while Titan is gone and P3 is still concealed.
tag @s add zombieleft
scoreboard players set @s origin.phase_age 0
scoreboard players set @s zombie.health 75000
scoreboard players set @s zombie.health0 75000
scoreboard players set @s zombie.armor 100
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
data merge entity @s {NoAI:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,Motion:[0d,0d,0d]}
effect give @s minecraft:invisibility infinite 0 true
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players operation @a[scores={system.room=4..}] origin.p_owner = #owner origin.owner
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect give @s minecraft:nausea 8 0 true
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect give @s minecraft:night_vision infinite 0 false
scoreboard players set #line_scope origin.line 1
execute positioned 300.5 92 150.5 run function zombie:skill/creation/origin/transition/fx_start
