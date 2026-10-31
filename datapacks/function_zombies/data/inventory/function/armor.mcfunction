
clear @s *[custom_data~{tag:["armor","clear"]}]
scoreboard players operation @s inventory.armor0 = @s inventory.armor
scoreboard players set @s armor.rainbow_armor 0
execute if score @s inventory.armor matches 0 run function inventory:armor/0
execute if score @s inventory.armor matches 1 run function inventory:armor/1
execute if score @s inventory.armor matches 2 run function inventory:armor/2
execute if score @s inventory.armor matches 3 run function inventory:armor/3
execute if score @s inventory.armor matches 4 run function inventory:armor/4
execute if score @s inventory.armor matches 5 run function inventory:armor/5
execute if score @s inventory.armor matches 6 run function inventory:armor/6
execute if score @s inventory.armor matches 7 run function inventory:armor/7
execute if score @s inventory.armor matches 8 run function inventory:armor/8
execute if score @s inventory.armor matches 9 run function inventory:armor/9
execute if score @s inventory.armor matches 10 run function inventory:armor/10
execute if score @s inventory.armor matches 11 run function inventory:armor/11
execute if score @s inventory.armor matches 12 run function inventory:armor/12