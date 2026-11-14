# 地板一带（x 283..317, z 128..175，3×3 个区块）由 floor/reset 强制加载，加载好了才恢复方块，没好就下一 tick 再试（最多 100 次）
scoreboard players add #try area.floor.reset 1
execute unless function map:area/lab/floor/loaded if score #try area.floor.reset matches ..100 run return run schedule function map:area/lab/floor/reset_blocks 1t
function zombie:skill/nether/guardian/floor/0/reset
clone 286 120 129 314 122 173 286 90 129
execute if data storage map:r40 core_door_active run function map:door/portal_lab/core/reset
# 去掉强制加载；300 160 那个区块原来就常驻（system:load / init0 管），原来是常驻的就留着
forceload remove 283 128 287 175
forceload remove 304 128 317 175
forceload remove 288 128 303 159
execute unless score #kept area.floor.reset matches 1 run forceload remove 300 160
scoreboard objectives remove area.floor.reset
