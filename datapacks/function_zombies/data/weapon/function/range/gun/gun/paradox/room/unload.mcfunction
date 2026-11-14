$forceload remove $(x) 18000 $(x1) 18116
scoreboard players operation #unload_owner weapon.pd_owner = @s uuid
execute as @e[type=marker,tag=paradox.room_control] if score @s weapon.pd_owner = #unload_owner weapon.pd_owner run kill @s
