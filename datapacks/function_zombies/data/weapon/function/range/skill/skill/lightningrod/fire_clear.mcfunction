# 原版闪电会点燃实体和方块，抗性只挡伤害：落雷 1 tick 后把落点 4 格内怪身上的火和地上的火清掉
execute at @e[tag=lightning_fire_clear] run execute as @e[tag=mob,distance=..4] run data merge entity @s {Fire:-1s}
execute at @e[tag=lightning_fire_clear] run fill ~-4 ~-2 ~-4 ~4 ~3 ~4 air replace fire
kill @e[tag=lightning_fire_clear]
