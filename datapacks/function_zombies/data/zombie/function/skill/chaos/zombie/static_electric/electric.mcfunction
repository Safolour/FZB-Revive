particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.1 10 force @a[scores={particle=0}]

playsound item.flintandsteel.use record @a ~ ~ ~ 2 0
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 2 1

execute as @a[scores={stat.player=1},distance=..2.5] at @s run function zombie:skill/chaos/zombie/static_electric/damage
