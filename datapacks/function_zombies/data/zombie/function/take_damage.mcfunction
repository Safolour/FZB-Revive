
execute if entity @s[nbt={HurtTime:10s}] run tag @s add pass
execute unless score @s zombie.health0 = @s zombie.health run tag @s add pass
execute unless entity @s[scores={zombie.health=1..}] run return run tag @s remove pass
execute unless entity @s[tag=pass] run return fail
tag @s remove pass
execute unless score @s zombie.health0 = @s zombie.health run function zombie:take_damage0
execute store result score @s zombie.health1 run data get entity @s Health 10
scoreboard players operation @s zombie.health1 -= 10240 number
scoreboard players operation @s zombie.health += @s zombie.health1
scoreboard players reset @s zombie.health1
data modify entity @s Health set value 1024

execute if entity @s[tag=bossbar] run function zombie:bossbar/if_health