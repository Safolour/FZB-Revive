scoreboard players operation #return_owner weapon.pd_owner = @s uuid
execute as @e[tag=paradox.captive] if score @s weapon.pd_owner = #return_owner weapon.pd_owner at @s run function weapon:range/gun/gun/paradox/captive/return
scoreboard players set @s weapon.pd_count 0
