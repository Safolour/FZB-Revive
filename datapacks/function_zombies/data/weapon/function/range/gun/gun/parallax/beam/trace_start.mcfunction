tp @s ~ ~ ~ facing ^ ^ ^1
tag @s add chosen
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
scoreboard players operation gun weapon.use = uuid weapon.gun_parallax
function weapon:range/gun/detect/hit_near_flags
scoreboard players set #parallax_stop weapon.state 0
function weapon:range/gun/gun/parallax/beam/trace
tag @s remove chosen
