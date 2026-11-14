execute if score @s weapon.pd_fcd matches 1.. run scoreboard players operation @s weapon.pd_fcd -= hit_cd weapon.gun_paradox
execute if score @s weapon.pd_qcd matches 1.. run scoreboard players operation @s weapon.pd_qcd -= hit_cd weapon.gun_paradox
execute if score @s weapon.pd_fcd matches ..-1 run scoreboard players set @s weapon.pd_fcd 0
execute if score @s weapon.pd_qcd matches ..-1 run scoreboard players set @s weapon.pd_qcd 0
