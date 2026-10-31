
scoreboard players operation score zombie.number = damage zombie.health

scoreboard players set percent zombie.number 50

scoreboard players set 100 zombie.number 100
scoreboard players operation score zombie.number *= percent zombie.number
scoreboard players operation score zombie.number /= 100 zombie.number

scoreboard players operation store zombie.number = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange

scoreboard players operation @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange -= score zombie.number

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange matches ..30 run scoreboard players operation @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange = store zombie.number


scoreboard players reset score zombie.number
scoreboard players reset store zombie.number

particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.3 100 force @a[scores={particle=0}]
particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.3 100 force @a[scores={particle=0}]

playsound entity.bee.hurt record @a ~ ~ ~ 2 1
playsound item.flintandsteel.use record @a ~ ~ ~ 2 0
playsound entity.iron_golem.attack record @a ~ ~ ~ 2 0
playsound minecraft:entity.iron_golem.damage record @a ~ ~ ~ 2 0
