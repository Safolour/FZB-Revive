
execute if score @s weapon.melee.ultimateknife.block_timer matches 1.. unless score @s weapon.melee.ultimateknife.block_timer0 matches 1 run function weapon:melee/melee/ultimateknife/slow
execute if score @s weapon.melee.ultimateknife.block_timer matches 0 run function weapon:melee/melee/ultimateknife/slow0

scoreboard players set @s[scores={weapon.melee.ultimateknife.block_timer=1..}] weapon.melee.block 1
scoreboard players remove @s[scores={weapon.melee.ultimateknife.block_timer=0..}] weapon.melee.ultimateknife.block_timer 1

execute unless items entity @s weapon *[custom_data~{tag:["ultimateknife"]}] run return run scoreboard players set @s weapon.melee.ultimateknife.block_timer 0

execute if score @s weapon.rightclick matches 1 run function weapon:melee/melee/ultimateknife/rightclick