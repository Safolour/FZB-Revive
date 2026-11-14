scoreboard players set @s weapon.pd_state 0
scoreboard players set @s weapon.pd_time 0
# Surviving banked monsters remain force-loaded and still block the round.
function weapon:range/gun/gun/paradox/count
execute if score @s weapon.pd_count matches 1.. run return 0
scoreboard players operation #release_owner weapon.pd_owner = @s uuid
execute as @e[type=marker,tag=paradox.room_control] if score @s weapon.pd_owner = #release_owner weapon.pd_owner run function weapon:range/gun/gun/paradox/room/offline
