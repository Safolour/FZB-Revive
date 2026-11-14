# Executor: a temporary marker at one eligible player's actual eye position.
# Centimeter displacements keep squared distances within scoreboard integer range.
execute store result score #pickaxe.g_dx origin.tool_cfg run data get entity @s Pos[0] 100
execute store result score #pickaxe.g_dy origin.tool_cfg run data get entity @s Pos[1] 100
execute store result score #pickaxe.g_dz origin.tool_cfg run data get entity @s Pos[2] 100
scoreboard players operation #pickaxe.g_dx origin.tool_cfg -= #pickaxe.g_x origin.tool_cfg
scoreboard players operation #pickaxe.g_dy origin.tool_cfg -= #pickaxe.g_y origin.tool_cfg
scoreboard players operation #pickaxe.g_dz origin.tool_cfg -= #pickaxe.g_z origin.tool_cfg
scoreboard players operation #pickaxe.g_r2 origin.tool_cfg = #pickaxe.g_dx origin.tool_cfg
scoreboard players operation #pickaxe.g_r2 origin.tool_cfg *= #pickaxe.g_dx origin.tool_cfg
scoreboard players operation #pickaxe.g_part origin.tool_cfg = #pickaxe.g_dy origin.tool_cfg
scoreboard players operation #pickaxe.g_part origin.tool_cfg *= #pickaxe.g_dy origin.tool_cfg
scoreboard players operation #pickaxe.g_r2 origin.tool_cfg += #pickaxe.g_part origin.tool_cfg
scoreboard players operation #pickaxe.g_part origin.tool_cfg = #pickaxe.g_dz origin.tool_cfg
scoreboard players operation #pickaxe.g_part origin.tool_cfg *= #pickaxe.g_dz origin.tool_cfg
scoreboard players operation #pickaxe.g_r2 origin.tool_cfg += #pickaxe.g_part origin.tool_cfg
# A one-block harmonic core avoids a singular impulse; outside it gravity is inverse-square.
scoreboard players operation #pickaxe.g_r2 origin.tool_cfg > #pickaxe.g_min_r2 origin.tool_cfg
scoreboard players operation input.sqrt int = #pickaxe.g_r2 origin.tool_cfg
function large_number:int_sqrt_simple
scoreboard players operation #pickaxe.g_r origin.tool_cfg = output.sqrt int
scoreboard players operation #pickaxe.g_strength origin.tool_cfg = #pickaxe.g_num origin.tool_cfg
scoreboard players operation #pickaxe.g_strength origin.tool_cfg /= #pickaxe.g_r2 origin.tool_cfg
scoreboard players operation #pickaxe.g_dx origin.tool_cfg *= #pickaxe.g_unit origin.tool_cfg
scoreboard players operation #pickaxe.g_dy origin.tool_cfg *= #pickaxe.g_unit origin.tool_cfg
scoreboard players operation #pickaxe.g_dz origin.tool_cfg *= #pickaxe.g_unit origin.tool_cfg
scoreboard players operation #pickaxe.g_dx origin.tool_cfg /= #pickaxe.g_r origin.tool_cfg
scoreboard players operation #pickaxe.g_dy origin.tool_cfg /= #pickaxe.g_r origin.tool_cfg
scoreboard players operation #pickaxe.g_dz origin.tool_cfg /= #pickaxe.g_r origin.tool_cfg
scoreboard players operation #pickaxe.g_dx origin.tool_cfg *= #pickaxe.g_strength origin.tool_cfg
scoreboard players operation #pickaxe.g_dy origin.tool_cfg *= #pickaxe.g_strength origin.tool_cfg
scoreboard players operation #pickaxe.g_dz origin.tool_cfg *= #pickaxe.g_strength origin.tool_cfg
scoreboard players operation #pickaxe.g_dx origin.tool_cfg /= #pickaxe.g_acc_div origin.tool_cfg
scoreboard players operation #pickaxe.g_dy origin.tool_cfg /= #pickaxe.g_acc_div origin.tool_cfg
scoreboard players operation #pickaxe.g_dz origin.tool_cfg /= #pickaxe.g_acc_div origin.tool_cfg
scoreboard players operation #pickaxe.g_ax origin.tool_cfg += #pickaxe.g_dx origin.tool_cfg
scoreboard players operation #pickaxe.g_ay origin.tool_cfg += #pickaxe.g_dy origin.tool_cfg
scoreboard players operation #pickaxe.g_az origin.tool_cfg += #pickaxe.g_dz origin.tool_cfg
kill @s
