function zombie:skill/creation/origin/landing/sample
scoreboard players add @s origin.phase_age 1
scoreboard players set @s zombie.health 75000
scoreboard players set @s zombie.health0 75000
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
data merge entity @s {Motion:[0d,0d,0d]}
scoreboard players operation #owner origin.owner = @s origin.owner
execute if score @s origin.phase_age matches 1..4 run function zombie:skill/creation/origin/transition/burst_tick
execute if score @s origin.phase_age matches 4 as @e[type=marker,tag=origin.phase.burst] if score @s origin.owner = #owner origin.owner run kill @s
execute if score @s origin.phase_age matches 1..22 as @e[type=marker,tag=origin.phase.anchor] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/origin/transition/line_batch
# Replay sounds repeat every three ticks while the 550-line net forms.
execute if score @s origin.phase_age matches 1 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 4 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 7 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 10 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 13 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 16 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 19 run function zombie:skill/creation/origin/transition/line_sound
execute if score @s origin.phase_age matches 1 as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:block.respawn_anchor.deplete hostile @s ~ ~ ~ 2 0
execute if score @s origin.phase_age matches 10 as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2 0
execute if score @s origin.phase_age matches 20 as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner at @s run playsound minecraft:item.trident.thunder hostile @s ~ ~ ~ 2 0
execute if score @s origin.phase_age matches 20 as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect give @s minecraft:darkness infinite 0 true
execute if score @s origin.phase_age matches 45 run function zombie:skill/creation/origin/transition/blackout
execute if score @s origin.phase_age matches 60..65 positioned 300.5 73 150.5 run function zombie:skill/creation/origin/transition/debris_batch
execute if score @s origin.phase_age matches 66..73 positioned 352.5 92 135.5 run function zombie:skill/creation/origin/transition/debris_batch
execute if score @s origin.phase_age matches 61..73 run function zombie:skill/creation/origin/transition/impact
execute if score @s origin.phase_age matches 60 run function zombie:skill/creation/origin/transition/move
execute if score @s origin.phase_age matches 72 as @e[type=zombie,tag=titan.awaiting] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/titan/arrive
execute if score @s origin.phase_age matches 74 run function zombie:skill/creation/origin/transition/finish
