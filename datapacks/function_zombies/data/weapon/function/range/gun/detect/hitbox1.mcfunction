tag @s add hit
# 沿弹道在碰撞箱内采样，任意一点落在头部（碰撞箱 1.5 格以上）即爆头
execute if function weapon:range/gun/detect/head/probe run return run tag @s add hit1
tag @s add hit2
