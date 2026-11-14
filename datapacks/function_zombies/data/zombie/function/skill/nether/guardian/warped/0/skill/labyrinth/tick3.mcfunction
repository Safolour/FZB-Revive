
scoreboard players add @s zombie.nether.guardian.labyrinth 1

execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute at @s run tp @s ^ ^ ^0.12 ~2 ~
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.5,1,1],to_color:[0,0,1],scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break

execute if score @s zombie.nether.guardian.labyrinth matches 10.. run kill @s
