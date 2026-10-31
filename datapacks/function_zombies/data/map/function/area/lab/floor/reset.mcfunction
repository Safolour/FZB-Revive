# 方块恢复在 floor/reset_blocks：/hub 或退出后马上结束游戏时玩家已经传走，地板一带的区块已卸载（常驻的只有 300 160 那一个），直接 clone 会失败
function map:area/lab/floor/nether/ashes/transition/cancel
scoreboard objectives add area.floor.reset dummy
scoreboard players set #try area.floor.reset 0
execute store success score #kept area.floor.reset run forceload query 300 160
forceload add 283 128 317 175
function map:area/lab/floor/reset_blocks

scoreboard objectives remove area.floor.timer
scoreboard objectives remove area.floor.effectcooldown

