
execute if score @s weapon.melee.ultimatepuncher.timer matches 1.. run scoreboard players remove @s weapon.melee.ultimatepuncher.timer 1

execute if score @s weapon.damage_dealt matches 1 unless score @s weapon.melee.ultimatepuncher.timer matches 1.. run scoreboard players operation @s weapon.melee.ultimatepuncher.timer = cooldown weapon.melee.ultimatepuncher