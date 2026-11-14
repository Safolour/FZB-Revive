# 同录像标准倍率下两次红血实损2.6，按20护甲8韧性取整数输入9；金血整数减少3不用于反推10。
scoreboard players set #origin.pickaxe zombie.skill.damage 90
# 0表示不按固定年龄清理；owner、目标和阶段失效仍会清理。
scoreboard players set #pickaxe.life origin.tool_cfg 0
# 四份录像的同时存在峰值均为2；新镐出手在达到上限时被跳过。
scoreboard players set #pickaxe.max_active origin.tool_cfg 2
# Five ticks is the contact cadence only; actual damage uses the shared skill queue.
# Repeated and cross-pickaxe contacts no longer force independent full damage.
scoreboard players set #pickaxe.hit_cd origin.tool_cfg 5
scoreboard players add #next origin.fx_id 0
# Equal player masses: a = G * displacement / max(distance, 1)^3; G = 1 block^3/tick^2.
# G uses a 1e9 scale. The one-block core regularizes coincident/near-coincident positions.
# Initial speed is 0.75; persistent velocity is never normalized, damped or capped.
scoreboard players set #pickaxe.g_num origin.tool_cfg 1000000000
scoreboard players set #pickaxe.g_min_r2 origin.tool_cfg 10000
scoreboard players set #pickaxe.g_unit origin.tool_cfg 10000
scoreboard players set #pickaxe.g_acc_div origin.tool_cfg 1000
data remove storage origin_tool pickaxe_flyby
