summon lightning_bolt
summon lightning_bolt

particle explosion_emitter ~ ~ ~ 8 3 8 0 200 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 10 10 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
particle lava ~ ~ ~ 8 8 8 0 200 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
particle trial_spawner_detection ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
particle dripping_lava ~ ~4 ~ 20 0 20 0 1000 force @a[scores={particle=0}]
particle dripping_lava ~ ~6 ~ 20 0 20 0 1000 force @a[scores={particle=0}]
particle dripping_lava ~ ~8 ~ 20 0 20 0 1000 force @a[scores={particle=0}]
particle dripping_lava ~ ~10 ~ 20 0 20 0 1000 force @a[scores={particle=0}]
particle campfire_cosy_smoke ~ ~ ~ 20 1 20 0 5000 force @a[scores={particle=0}]

playsound block.end_portal.spawn record @a ~ ~ ~ 2 2
playsound block.end_portal.spawn record @a ~ ~ ~ 2 1
playsound block.end_portal.spawn record @a ~ ~ ~ 2 0
playsound item.trident.thunder record @a ~ ~ ~ 2 0
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 0
playsound block.bell.resonate record @a ~ ~ ~ 2 0
playsound entity.warden.sonic_boom record @a ~ ~ ~ 2 0

execute as @a[scores={stat.player=1},distance=..100] at @s run function zombie:skill/remains/dropship/tnt/damage

kill @s
