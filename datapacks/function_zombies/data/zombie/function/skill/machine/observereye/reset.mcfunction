function zombie:skill/machine/observereye/clear
schedule clear zombie:skill/machine/observereye/start0

scoreboard players set tick zombie.observereye 0

scoreboard players reset @a zombie.observereye
scoreboard players reset mobcount zombie.observereye
scoreboard players reset stat zombie.observereye
scoreboard players reset @a zombie.observereye.damage
