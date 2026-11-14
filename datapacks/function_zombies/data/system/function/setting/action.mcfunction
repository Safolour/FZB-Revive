execute if score @s setting.action matches 1 run scoreboard players set @s nightvision 1
execute if score @s setting.action matches 2 run scoreboard players set @s nightvision 0
execute if score @s setting.action matches 3 run scoreboard players set @s particle 1
execute if score @s setting.action matches 4 run scoreboard players set @s particle 0
execute if score @s setting.action matches 5 run scoreboard players set @s particle 2
execute if score @s setting.action matches 7 run scoreboard players set @s gun.particle 1
execute if score @s setting.action matches 8 run scoreboard players set @s gun.particle 0
execute if score @s setting.action matches 9 run scoreboard players set @s gun.particle 2
execute if score @s setting.action matches 6 run function system:trigger/hub
execute if score @s setting.action matches 1..5 run function system:setting/menu
execute if score @s setting.action matches 7..9 run function system:setting/menu
scoreboard players set @s setting.action 0
