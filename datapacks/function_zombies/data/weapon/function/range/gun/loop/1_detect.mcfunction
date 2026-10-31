# loop/1 的命中检测（执行朝向 = 飞行方向）
function weapon:range/gun/detect/hit_near_flags
execute positioned ^ ^ ^0.5 run function weapon:range/gun/detect/hit_near
# 每 tick 前进 1 格，只查 +0.5 会跨过命中区（深 0.975 格），所以没命中时再查 +1.0
execute unless entity @e[tag=gethit,limit=1] positioned ^ ^ ^1 run function weapon:range/gun/detect/hit_near
