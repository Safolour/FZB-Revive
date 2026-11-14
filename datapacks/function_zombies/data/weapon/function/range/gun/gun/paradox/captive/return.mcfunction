execute store result storage weapon paradox.back.x double 0.001 run scoreboard players get @s weapon.pd_x
execute store result storage weapon paradox.back.y double 0.001 run scoreboard players get @s weapon.pd_y
execute store result storage weapon paradox.back.z double 0.001 run scoreboard players get @s weapon.pd_z
execute store result entity @s NoAI byte 1 run scoreboard players get @s weapon.pd_ai
function weapon:range/gun/gun/paradox/captive/return0 with storage weapon paradox.back
tag @s remove paradox.captive
execute if entity @s[tag=paradox.had_path] run tag @s add path
tag @s remove paradox.had_path
return 0
