execute unless entity @a[scores={zombie.observereye=0}] run return fail

scoreboard players operation mod zombie.observereye = @s zombie.observereye
scoreboard players set 10 zombie.observereye 10
scoreboard players operation mod zombie.observereye %= 10 zombie.observereye

execute if score mod zombie.observereye matches 1 run function zombie:skill/machine/observereye/laser0

scoreboard players operation mod zombie.observereye = @s zombie.observereye
scoreboard players set 5 zombie.observereye 5
scoreboard players operation mod zombie.observereye %= 5 zombie.observereye

execute if score mod zombie.observereye matches 1 run function zombie:skill/machine/observereye/laser1

scoreboard players reset mod zombie.observereye
scoreboard players reset 10 zombie.observereye
scoreboard players reset 5 zombie.observereye
