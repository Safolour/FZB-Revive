execute if score @s weapon.pd_state matches 1.. unless score @s weapon.pd_layout matches 2 run function weapon:range/gun/gun/paradox/room/migrate
execute unless score @s weapon.pd_state = @s weapon.pd_state run scoreboard players set @s weapon.pd_state 0
execute unless score @s weapon.pd_fcd = @s weapon.pd_fcd run scoreboard players set @s weapon.pd_fcd 0
execute unless score @s weapon.pd_qcd = @s weapon.pd_qcd run scoreboard players set @s weapon.pd_qcd 0
execute if score @s weapon.pd_state matches 0 if items entity @s weapon.mainhand *[custom_data~{gun:"paradox"}] unless items entity @s weapon.mainhand *[custom_data~{paradox_version:3}] run function weapon:range/gun/gun/paradox/mode/normal
scoreboard players remove @s[scores={weapon.pd_fcd=1..}] weapon.pd_fcd 1
scoreboard players remove @s[scores={weapon.pd_qcd=1..}] weapon.pd_qcd 1
execute if entity @s[tag=weapon.pd_f] run function weapon:range/gun/gun/paradox/erosion/try
execute if entity @s[tag=weapon.pd_q] run function weapon:range/gun/gun/paradox/dream/try
function weapon:range/gun/gun/paradox/count
# Empty dreams return immediately; a pending entry never strands the owner either.
execute if score @s weapon.pd_state matches 1..3 if score @s weapon.pd_count matches 0 run return run function weapon:range/gun/gun/paradox/dream/empty_exit
# A controller disappears after logout. On rejoin, restore the saved real-world position.
scoreboard players operation #verify_owner weapon.pd_owner = @s uuid
scoreboard players set #controller_present weapon.pd_owner 0
execute as @e[type=marker,tag=paradox.room_control] if score @s weapon.pd_owner = #verify_owner weapon.pd_owner run scoreboard players set #controller_present weapon.pd_owner 1
execute if score @s weapon.pd_state matches 1.. unless score #controller_present weapon.pd_owner matches 1 run return run function weapon:range/gun/gun/paradox/cleanup
execute if score @s stat.player matches 2..3 run return run function weapon:range/gun/gun/paradox/cleanup
execute unless items entity @s container.* *[custom_data~{gun:"paradox"}] run return run function weapon:range/gun/gun/paradox/cleanup
execute if score @s weapon.pd_state matches 1 run return run function weapon:range/gun/gun/paradox/dream/transition
execute if score @s weapon.pd_state matches 3 run return run function weapon:range/gun/gun/paradox/dream/transition
execute if score @s weapon.pd_state matches 2 run function weapon:range/gun/gun/paradox/dream/tick
