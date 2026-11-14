scoreboard players operation #owner weapon.pd_owner = @s uuid
scoreboard players set #count weapon.pd_count 0
execute as @e[tag=paradox.captive] if score @s weapon.pd_owner = #owner weapon.pd_owner run scoreboard players add #count weapon.pd_count 1
scoreboard players operation @s weapon.pd_count = #count weapon.pd_count
