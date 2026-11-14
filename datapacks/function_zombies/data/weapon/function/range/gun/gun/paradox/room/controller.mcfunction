scoreboard players operation #control_owner weapon.pd_owner = @s weapon.pd_owner
scoreboard players set #control_online weapon.pd_owner 0
scoreboard players set #control_keep weapon.pd_owner 0
execute as @a if score @s uuid = #control_owner weapon.pd_owner run scoreboard players set #control_online weapon.pd_owner 1
execute as @a if score @s uuid = #control_owner weapon.pd_owner if score @s weapon.pd_state matches 1.. run scoreboard players set #control_keep weapon.pd_owner 1
execute as @e[tag=paradox.captive] if score @s weapon.pd_owner = #control_owner weapon.pd_owner run scoreboard players set #control_keep weapon.pd_owner 1
execute unless score #control_online weapon.pd_owner matches 1 run return run function weapon:range/gun/gun/paradox/room/offline
execute if score #control_keep weapon.pd_owner matches 1 run return run scoreboard players set @s weapon.pd_time 0
scoreboard players add @s weapon.pd_time 1
execute if score @s weapon.pd_time matches 20.. run function weapon:range/gun/gun/paradox/room/offline
