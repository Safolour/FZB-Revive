# 特殊检测：音枪（要测 ±0.5 格反弹面，立方体放大到 3 格）、巨人（命中区比碰撞箱高 4 格）、壁垒护盾（5 格球）
execute if score gun weapon.use matches 10010 run return run function weapon:range/gun/detect/hit_near_music
execute if score gun weapon.use matches 10025 run return run function weapon:range/gun/detect/hit_near_music
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=hitable,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function weapon:range/gun/detect/hit1
execute positioned ~-0.5 ~-4.5 ~-0.5 as @e[tag=hitable,tag=giantzombie,dx=0,dy=4,dz=0] positioned ~0.5 ~4.5 ~0.5 run function weapon:range/gun/detect/hit1
execute as @e[type=marker,tag=hitable,tag=skill.creation.rampart.shield,distance=..5] run function weapon:range/gun/detect/hit1
