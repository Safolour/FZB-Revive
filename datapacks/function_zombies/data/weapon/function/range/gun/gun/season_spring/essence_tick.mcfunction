execute unless entity @a[distance=..1.5,limit=1] run return 0
execute if data entity @s Item.components."minecraft:custom_data"{heal:6} as @p[distance=..1.5] run function bs.health:add/health {points:6}
execute if data entity @s Item.components."minecraft:custom_data"{heal:4} as @p[distance=..1.5] run function bs.health:add/health {points:4}
particle happy_villager ~ ~0.3 ~ 0.2 0.2 0.2 0 6 force @a[scores={particle=0..1}]
playsound entity.player.levelup player @a ~ ~ ~ 0.35 1.8
kill @s
