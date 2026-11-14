# Also repairs an already flying orb after reload without restarting its flight.
execute unless data entity @s active_effects[{id:"minecraft:invisibility"}] run effect give @s minecraft:invisibility infinite 0 true
scoreboard players add @s origin.phase_age 1
execute if score @s origin.phase_age matches 10 run data merge entity @s {Size:1}
execute if score @s origin.phase_age matches 20 run data merge entity @s {Size:3}
execute if score @s origin.phase_age matches 30 run data merge entity @s {Size:4}
# Loading Slime Size recalculates vanilla health. Preserve the custom-health bridge.
execute if score @s origin.phase_age matches 10 run function zombie:skill/creation/titan/eclipse/resize_health
execute if score @s origin.phase_age matches 20 run function zombie:skill/creation/titan/eclipse/resize_health
execute if score @s origin.phase_age matches 30 run function zombie:skill/creation/titan/eclipse/resize_health
scoreboard players operation #owner origin.owner = @s origin.owner
execute store result storage zombie:titan.eclipse black double 0.1 run scoreboard players get @s origin.phase_age
execute store result storage zombie:titan.eclipse glass double 0.12 run scoreboard players get @s origin.phase_age
execute if score @s origin.phase_age matches ..30 run function zombie:skill/creation/titan/eclipse/scale with storage zombie:titan.eclipse
execute if score @s origin.phase_age matches 1 run tp @s ~ ~ ~1
execute if score @s origin.phase_age matches 2.. run tp @s ~ ~ ~0.14
# Shells trail the invisible hitbox by one block. Keep each shell's own rotation.
execute at @s positioned ~ ~ ~-1 as @e[type=item_display,tag=titan.eclipse.shell] if score @s origin.owner = #owner origin.owner run tp @s ~ ~ ~
execute as @e[type=item_display,tag=titan.eclipse.shell] if score @s origin.owner = #owner origin.owner run function zombie:skill/creation/titan/eclipse/rotate
# The far wall is the end of this corridor; evaluate collision at the moved hitbox.
execute store result score #eclipse_z origin.phase_age run data get entity @s Pos[2] 100
execute if score #eclipse_z origin.phase_age matches 17100.. at @s run return run function zombie:skill/creation/titan/eclipse/impact
execute at @s unless block ~ ~ ~ air run return run function zombie:skill/creation/titan/eclipse/impact
