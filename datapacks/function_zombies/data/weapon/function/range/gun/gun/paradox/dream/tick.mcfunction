execute if score @s weapon.pd_count matches 0 run return run function weapon:range/gun/gun/paradox/dream/empty_exit
scoreboard players remove @s weapon.pd_time 1
execute if score @s weapon.pd_time matches ..0 run return run function weapon:range/gun/gun/paradox/dream/leave
# Original circular barrier and a recovery guard protect the full outer platform.
scoreboard players operation #room weapon.pd_room = @s weapon.pd_room
scoreboard players operation #room weapon.pd_room *= #2048 weapon.pd_room
scoreboard players add #room weapon.pd_room 18058
execute store result storage weapon paradox.bounds.cx int 1 run scoreboard players get #room weapon.pd_room
function weapon:range/gun/gun/paradox/dream/bounds with storage weapon paradox.bounds
