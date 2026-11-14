scoreboard players add @s origin.phase_age 1
scoreboard players set @s zombie.health 75000
scoreboard players set @s zombie.health0 75000
data merge entity @s {Motion:[0d,0d,0d]}
scoreboard players operation #owner origin.owner = @s origin.owner
execute if score @s origin.phase_age matches 1..22 as @e[type=marker,tag=origin.phase.anchor] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/origin/transition/line_batch
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
execute if score @s origin.phase_age matches 54 run function zombie:skill/creation/titan/transition/source
# Reuse Origin's six source ticks; the 10/20 replay directly tracks five of these batches.
execute if score @s origin.phase_age matches 54..59 as @e[type=marker,tag=titan.p3.source] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/titan/transition/fx
execute if score @s origin.phase_age matches 60 run function zombie:skill/creation/titan/transition/return
execute if score @s origin.phase_age matches 66 run function zombie:skill/creation/titan/transition/target
# Eight arrival batches, including the final batch on the reveal tick.
execute if score @s origin.phase_age matches 66..73 as @e[type=marker,tag=titan.p3.target] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/titan/transition/arrival_fx
execute if score @s origin.phase_age matches 73 run function zombie:skill/creation/titan/transition/restore_origin
