
#particle cloud ~ ~0.25 ~ 0.25 0.5 0.25 0 30 normal @a
execute if entity @s[type=player] run return run say death
data modify entity @s Size set value 0
tp @s[tag=!deathanimation] 0.0 -100.0 0.0
execute if score @s zombie.health = @s zombie.health run scoreboard players set @s zombie.health -1

kill @s