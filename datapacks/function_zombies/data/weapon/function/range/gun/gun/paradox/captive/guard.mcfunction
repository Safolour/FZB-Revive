scoreboard players operation #captive_owner weapon.pd_owner = @s weapon.pd_owner
scoreboard players set #owner_online weapon.pd_owner 0
scoreboard players set #owner_active weapon.pd_state 0
execute as @a if score @s uuid = #captive_owner weapon.pd_owner run scoreboard players set #owner_online weapon.pd_owner 1
execute as @a if score @s uuid = #captive_owner weapon.pd_owner if score @s weapon.pd_state matches 2 run scoreboard players set #owner_active weapon.pd_state 1
execute unless score #owner_online weapon.pd_owner matches 1 run return run function weapon:range/gun/gun/paradox/captive/return
execute unless score #owner_active weapon.pd_state matches 1 run data merge entity @s {NoAI:1b}
execute unless score #owner_active weapon.pd_state matches 1 run return 0
execute store result entity @s NoAI byte 1 run scoreboard players get @s weapon.pd_ai
return 1
