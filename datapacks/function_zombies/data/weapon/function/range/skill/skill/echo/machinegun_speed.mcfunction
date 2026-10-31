scoreboard players set #echo_machinegun weapon.state 0
execute if items entity @s weapon.mainhand *[custom_data~{tag:["machinegun_ammo"]}] run scoreboard players set #echo_machinegun weapon.state 1
execute if items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"machinegun"}] run scoreboard players set #echo_machinegun weapon.state 1
execute if items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"ultimatemachinegun"}] run scoreboard players set #echo_machinegun weapon.state 1
execute if score #echo_machinegun weapon.state matches 1 if entity @s[tag=!weapon.machinegun_speed,scores={stat.player=1}] run function weapon:range/gun/gun/machinegun/speed_on
execute if entity @s[tag=weapon.machinegun_speed] unless score @s stat.player matches 1 run function weapon:range/gun/gun/machinegun/speed_off
execute if entity @s[tag=weapon.machinegun_speed] if score #echo_machinegun weapon.state matches 0 run function weapon:range/gun/gun/machinegun/speed_off
