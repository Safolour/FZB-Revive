
execute if entity @s[scores={weapon.melee.block=0,stat.attack.damage_dealt=1..}] at @s run function player_stat:attack/hit
execute if entity @s[scores={weapon.melee.block=0,interaction.left_click=1}] at @s run function player_stat:attack/left_click
scoreboard players set @s[scores={weapon.use=1}] weapon.use 0