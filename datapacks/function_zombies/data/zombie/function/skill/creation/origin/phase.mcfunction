execute if entity @s[tag=origin.p2] run return 0
execute if entity @s[tag=origin.transition] run return 0
execute unless entity @s[tag=origin.ready] run function zombie:skill/creation/origin/init
function zombie:skill/creation/origin/cancel
execute as @e[type=marker,tag=origin.destination] if score @s origin.owner = #owner origin.owner run kill @s
tag @s remove origin.intro
tag @s remove origin.arrive
tag @s remove origin.depart
tag @s remove hitable
tag @s remove bossbar
tag @s add origin.transition
scoreboard players set @s origin.phase_age 0
scoreboard players set @s zombie.health 75000
scoreboard players set @s zombie.health0 75000
scoreboard players operation @s origin.phase_armor = @s zombie.armor
scoreboard players set @s zombie.armor 100
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
data merge entity @s {NoAI:1b,NoGravity:1b,Glowing:0b,Invulnerable:1b,Invisible:1b,Motion:[0d,0d,0d]}
effect give @s minecraft:invisibility infinite 0 true
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #line_scope origin.line 0
function zombie:skill/creation/origin/transition/burst_start
scoreboard players operation @a[scores={system.room=4..}] origin.p_owner = #owner origin.owner
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect give @s minecraft:nausea 8 0 true
execute as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect give @s minecraft:night_vision infinite 0 false
# Replay: the net is anchored at the P1 arena center, independent of the last P1 teleport.
execute positioned 300.5 92 150.5 run function zombie:skill/creation/origin/transition/fx_start
playsound minecraft:entity.wither.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
playsound minecraft:entity.wither.shoot hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
# Keep only an invisible transition controller; this Origin never enters the P2 room.
tp @s 300.5 73 150.5
