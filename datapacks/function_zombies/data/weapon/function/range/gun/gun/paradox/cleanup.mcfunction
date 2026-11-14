tag @s remove weapon.pd_f
tag @s remove weapon.pd_q
execute if score @s weapon.pd_state matches 1.. run function weapon:range/gun/gun/paradox/dream/return
execute if score @s weapon.pd_count matches 1.. run function weapon:range/gun/gun/paradox/captive/return_all
execute if score @s weapon.pd_room matches 1.. if score @s weapon.pd_state matches 1.. run function weapon:range/gun/gun/paradox/dream/finish
scoreboard players set @s weapon.pd_state 0
