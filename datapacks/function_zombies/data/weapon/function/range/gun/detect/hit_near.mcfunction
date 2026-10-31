# 即时命中子弹/投射物的命中检测（执行位置 = 检测点）：只检测碰撞箱可能覆盖检测点的实体
# 音枪 / 场上有巨人 / 有壁垒护盾 由 detect/hit_near_flags 在每发子弹开始时算好，这里每一步只看分数
execute if score #hit_near_special weapon.state matches 1 run return run function weapon:range/gun/detect/hit_near_special
# 粗筛：以本检测点到前方 1.5 格这段弹道（共 4 个检测点，步长 0.5）为中心查 3 格立方体，里面没有可命中实体就跳过这 4 个点
# 立方体覆盖这 4 个点各自的 1 格立方体，所以跳过是安全的；需要朝向为子弹方向（即时命中子弹与投射物调用时都满足）
execute if score #hit_near_skip weapon.state matches 1.. run return run scoreboard players remove #hit_near_skip weapon.state 1
execute positioned ^ ^ ^0.75 positioned ~-1.5 ~-1.5 ~-1.5 unless entity @e[tag=hitable,dx=2,dy=2,dz=2] run return run scoreboard players set #hit_near_skip weapon.state 3
# 1 格立方体与碰撞箱相交是精确命中区（碰撞箱水平外扩 3px）的超集，由引擎按真实碰撞箱筛选，任意体型都不会漏
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=hitable,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function weapon:range/gun/detect/hit1
