# 音枪：要检测 ±0.5 格处的反弹面（detect/hit2_0），立方体放大到 3 格
execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[tag=hitable,dx=2,dy=2,dz=2] positioned ~1.5 ~1.5 ~1.5 run function weapon:range/gun/detect/hit1
execute positioned ~-1.5 ~-5.5 ~-1.5 as @e[tag=hitable,tag=giantzombie,dx=2,dy=6,dz=2] positioned ~1.5 ~5.5 ~1.5 run function weapon:range/gun/detect/hit1
execute as @e[type=marker,tag=hitable,tag=skill.creation.rampart.shield,distance=..5] run function weapon:range/gun/detect/hit1
