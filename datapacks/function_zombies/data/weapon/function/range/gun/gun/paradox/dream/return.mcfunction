execute store result storage weapon paradox.back.x double 0.001 run scoreboard players get @s weapon.pd_x
execute store result storage weapon paradox.back.y double 0.001 run scoreboard players get @s weapon.pd_y
execute store result storage weapon paradox.back.z double 0.001 run scoreboard players get @s weapon.pd_z
function weapon:range/gun/gun/paradox/dream/return_player with storage weapon paradox.back
function weapon:range/gun/gun/paradox/dream/clear_sky
effect clear @s speed
function weapon:range/gun/gun/paradox/dream/attributes_restore
scoreboard players set @s weapon.pd_qcd 3000
function weapon:range/gun/gun/paradox/mode/normal
playsound block.end_portal.spawn record @s ~ ~ ~ 2 0
