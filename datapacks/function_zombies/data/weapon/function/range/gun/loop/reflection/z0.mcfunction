
execute if score z weapon.state matches 1 run return fail
execute if block ~ ~ ~ #weapon:gun_penetrable unless entity @e[tag=gethit1_+z] run return fail
scoreboard players set z weapon.state 1
execute if score reflection weapon.state matches 1.. run scoreboard players remove reflection weapon.state 1
execute store result score rotation0 weapon.state run data get entity @s Rotation[0] -10000
execute if score rotation0 weapon.state matches 0.. run tag @s add remove
execute unless score rotation0 weapon.state matches 0.. run tag @s add add
execute if entity @s[tag=remove] run scoreboard players operation rotation0 weapon.state -= 1800000 number
execute if entity @s[tag=add] run scoreboard players operation rotation0 weapon.state += 1800000 number
tag @s remove remove
tag @s remove add
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get rotation0 weapon.state
