tag @s add origin.combat_fx
tag @s add origin.sword_fx
tag @s add origin.sword.target
scoreboard players operation @s origin.owner = #owner origin.owner
# 落点算法未定值；暂用场内随机固定点，不把玩家脚下当成录像已证实的目标。
execute store result entity @s Pos[0] double 0.1 run random value 2900..3110
execute store result entity @s Pos[2] double 0.1 run random value 1320..1680
