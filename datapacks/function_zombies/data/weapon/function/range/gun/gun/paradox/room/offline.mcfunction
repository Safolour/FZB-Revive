scoreboard players operation #offline_owner weapon.pd_owner = @s weapon.pd_owner
execute as @e[tag=paradox.captive] if score @s weapon.pd_owner = #offline_owner weapon.pd_owner at @s run function weapon:range/gun/gun/paradox/captive/return
execute as @e[type=item_display,tag=paradox.sky] if score @s weapon.pd_owner = #offline_owner weapon.pd_owner run kill @s
function weapon:range/gun/gun/paradox/room/offline_unload with entity @s data
kill @s
