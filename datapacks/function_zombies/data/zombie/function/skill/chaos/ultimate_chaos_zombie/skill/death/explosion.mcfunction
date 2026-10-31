summon lightning_bolt
summon lightning_bolt
summon lightning_bolt

particle explosion ~ ~1 ~ 0 0 0 10 10 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle firework ~ ~1 ~ 0 0 0 1 100 force @a[scores={particle=0}]
particle smoke ~ ~1 ~ 0 0 0 1 100 force @a[scores={particle=0}]
particle large_smoke ~ ~1 ~ 0 0 0 1 100 force @a[scores={particle=0}]

playsound block.end_gateway.spawn record @a ~ ~ ~ 2 2
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 1
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 0

execute as @a[scores={stat.player=1},distance=..8] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/death/damage
