scoreboard players operation match zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage

execute as @a[scores={stat.player=1}] if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage = match zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage run tag @s add target

scoreboard players reset match zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage

execute as @a[tag=target] at @s run particle bubble_pop ~ ~1 ~ 0.3 0.3 0.3 0 30 force @a[scores={particle=0}]
execute as @a[tag=target] at @s run playsound minecraft:entity.player.hurt_on_fire record @a ~ ~ ~ 2 1

