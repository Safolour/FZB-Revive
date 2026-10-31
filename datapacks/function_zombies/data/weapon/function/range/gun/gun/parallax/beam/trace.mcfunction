execute store result score #parallax_y weapon.state run data get entity @s Pos[1]
execute if score #parallax_y weapon.state matches ..-65 run return 0
execute if score #parallax_y weapon.state matches 2032.. run return 0
execute unless loaded ~ ~ ~ run return 0
execute unless block ~ ~ ~ #weapon:gun_penetrable run return 0
execute at @s run function weapon:range/gun/detect/hit_near
execute as @e[tag=gethit,distance=..32] run function weapon:range/gun/gun/parallax/beam/hit
execute if score #parallax_stop weapon.state matches 1 run return 0
scoreboard players add #parallax_length weapon.state 1
execute at @s run tp @s ^ ^ ^0.5
execute at @s run function weapon:range/gun/gun/parallax/beam/trace
