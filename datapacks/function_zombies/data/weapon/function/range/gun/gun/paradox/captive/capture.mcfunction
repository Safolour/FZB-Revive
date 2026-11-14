scoreboard players operation @s weapon.pd_owner = @a[tag=paradox.erosion_owner,limit=1] uuid
execute store result score @s weapon.pd_x run data get entity @s Pos[0] 1000
execute store result score @s weapon.pd_y run data get entity @s Pos[1] 1000
execute store result score @s weapon.pd_z run data get entity @s Pos[2] 1000
execute store result score @s weapon.pd_ai run data get entity @s NoAI
tag @s add paradox.captive
execute if entity @s[tag=path] run tag @s add paradox.had_path
tag @s remove path
data merge entity @s {NoAI:1b,Motion:[0.0d,0.0d,0.0d]}
scoreboard players add @a[tag=paradox.erosion_owner,limit=1] weapon.pd_count 1
function weapon:range/gun/gun/paradox/captive/place with storage weapon paradox.room
function weapon:range/gun/gun/paradox/room/hold with storage weapon paradox.room
