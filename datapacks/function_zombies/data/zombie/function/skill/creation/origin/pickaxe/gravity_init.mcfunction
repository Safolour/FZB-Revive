# Sample the current heading at the origin so absolute coordinates are not scaled by 1e6.
execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^0.75 summon marker run function zombie:skill/creation/origin/pickaxe/gravity_initial_vector
scoreboard players operation @s origin.pick_vx = #pickaxe.init_vx origin.tool_cfg
scoreboard players operation @s origin.pick_vy = #pickaxe.init_vy origin.tool_cfg
scoreboard players operation @s origin.pick_vz = #pickaxe.init_vz origin.tool_cfg
# Retire this pickaxe's old locked target if it survived a hot reload.
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
execute as @e[type=marker,tag=origin.pickaxe.target] if score @s origin.owner = #owner origin.owner if score @s origin.fx_id = #fx origin.fx_id run kill @s
