scoreboard players add @s weapon.pd_time 1
scoreboard players set @s[scores={system.actionbar=2..}] system.actionbar 2
title @s[scores={system.actionbar=2}] actionbar {translate:"zb.item.gun.paradox.actionbar.4"}
execute if score @s weapon.pd_time matches 40 if score @s weapon.pd_state matches 1 run function weapon:range/gun/gun/paradox/dream/enter
execute if score @s weapon.pd_time matches 40 if score @s weapon.pd_state matches 3 run function weapon:range/gun/gun/paradox/dream/return
execute if score @s weapon.pd_time matches 70 run playsound entity.lightning_bolt.thunder record @s ~ ~ ~ 2 0
execute if score @s weapon.pd_time matches 80.. run function weapon:range/gun/gun/paradox/dream/transition_end
