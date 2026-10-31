execute if score #bp_dx weapon.state matches 0 if score #bp_dy weapon.state matches 0 run return 0
execute store result score #spread_r weapon.state run data get entity @s Rotation[0] 100
scoreboard players operation #spread_r weapon.state += #bp_dx weapon.state
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #spread_r weapon.state
execute store result score #spread_r weapon.state run data get entity @s Rotation[1] 100
scoreboard players operation #spread_r weapon.state += #bp_dy weapon.state
execute if score #spread_r weapon.state matches 9001.. run scoreboard players set #spread_r weapon.state 9000
execute if score #spread_r weapon.state matches ..-9001 run scoreboard players set #spread_r weapon.state -9000
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #spread_r weapon.state
