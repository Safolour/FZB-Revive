# Persist velocity separately for each pickaxe (1e6 units per block/tick).
# Existing pickaxes are initialized once when this implementation is reloaded.
execute unless score @s origin.pick_vx = @s origin.pick_vx run function zombie:skill/creation/origin/pickaxe/gravity_init
execute unless score @s origin.pick_vy = @s origin.pick_vy run function zombie:skill/creation/origin/pickaxe/gravity_init
execute unless score @s origin.pick_vz = @s origin.pick_vz run function zombie:skill/creation/origin/pickaxe/gravity_init
execute store result score #pickaxe.g_x origin.tool_cfg run data get entity @s Pos[0] 100
execute store result score #pickaxe.g_y origin.tool_cfg run data get entity @s Pos[1] 100
execute store result score #pickaxe.g_z origin.tool_cfg run data get entity @s Pos[2] 100
scoreboard players set #pickaxe.g_ax origin.tool_cfg 0
scoreboard players set #pickaxe.g_ay origin.tool_cfg 0
scoreboard players set #pickaxe.g_az origin.tool_cfg 0
# Select every source around the same anchor snapshot, then sample actual player eyes.
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..100] at @s anchored eyes positioned ^ ^ ^ summon marker run function zombie:skill/creation/origin/pickaxe/gravity_source
scoreboard players operation @s origin.pick_vx += #pickaxe.g_ax origin.tool_cfg
scoreboard players operation @s origin.pick_vy += #pickaxe.g_ay origin.tool_cfg
scoreboard players operation @s origin.pick_vz += #pickaxe.g_az origin.tool_cfg
