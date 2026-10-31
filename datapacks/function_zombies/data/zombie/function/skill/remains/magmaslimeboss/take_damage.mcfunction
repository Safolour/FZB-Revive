scoreboard players operation @s zombie.remains.magmaslimeboss.takedamage += damage zombie.health

execute if score @s zombie.remains.magmaslimeboss.takedamage matches ..5000 run return 0

execute if score @s zombie.remains.magmaslimeboss.size matches 3.. run scoreboard players remove @s zombie.remains.magmaslimeboss.size 1
scoreboard players set @s zombie.remains.magmaslimeboss.takedamage 0
