# Recover the old layout before moving a returning player to the new layout.
function weapon:range/gun/gun/paradox/dream/return
scoreboard players set @s weapon.pd_state 0
scoreboard players operation #control_owner weapon.pd_owner = @s uuid
execute as @e[type=marker,tag=paradox.room_control] if score @s weapon.pd_owner = #control_owner weapon.pd_owner run function weapon:range/gun/gun/paradox/room/offline
tag @s add paradox.build_room
