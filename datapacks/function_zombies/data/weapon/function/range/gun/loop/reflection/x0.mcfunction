
execute if score x weapon.state matches 1 run return fail
execute if block ~ ~ ~ #weapon:gun_penetrable unless entity @e[tag=gethit_+x] run return fail
scoreboard players set x weapon.state 1
execute store result entity @s Rotation[0] float 1 run data get entity @s Rotation[0] -1
execute if score reflection weapon.state matches 1.. run scoreboard players remove reflection weapon.state 1
