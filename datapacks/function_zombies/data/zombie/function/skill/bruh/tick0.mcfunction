
scoreboard players add @s zombie.skill_timer 1
particle lava ~ ~ ~
execute unless entity @s[scores={zombie.skill_timer=50..}] run return fail
kill @s
playsound minecraft:entity.wolf.death record @a ~ ~ ~ 1 2 0
particle explosion ~ ~ ~
#function zombie:zombie/bruh/projectile1
