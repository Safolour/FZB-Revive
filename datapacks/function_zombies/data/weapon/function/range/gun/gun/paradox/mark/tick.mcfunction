scoreboard players operation #mark_owner weapon.pd_owner = @s weapon.pd_owner
scoreboard players set #mark_online weapon.pd_owner 0
execute as @a if score @s uuid = #mark_owner weapon.pd_owner run scoreboard players set #mark_online weapon.pd_owner 1
execute unless score #mark_online weapon.pd_owner matches 1 run return run kill @s
function weapon:range/gun/gun/paradox/mark/follow with entity @s data
