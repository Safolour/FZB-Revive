scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_staticelectrictimer 1

particle enchanted_hit ~ ~1 ~ 1 1 1 0 30 force @a[scores={particle=0}]
particle electric_spark ~ ~1 ~ 1 1 1 0.5 30 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]

playsound item.flintandsteel.use record @a ~ ~ ~ 1.5 0
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1.5 1

execute as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/static_electric/damage
