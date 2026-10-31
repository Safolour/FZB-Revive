
execute as @a[scores={stat.player=1},distance=..3] run function zombie:skill/electric/automation/self_explosion/damage

playsound block.end_gateway.spawn record @a ~ ~ ~ 1.5 1

particle lava ~ ~1.2 ~ 0 0 0 0 5 force @a[scores={particle=0}]
particle large_smoke ~ ~1.2 ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
particle flash ~ ~1.2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~1.2 ~ 0 0 0 0 3 force @a[scores={particle=0}]

function system:death
