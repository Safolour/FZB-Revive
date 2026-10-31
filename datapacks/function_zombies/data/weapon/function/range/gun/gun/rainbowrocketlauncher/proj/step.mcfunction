execute if score @s weapon.rainbowrocketlauncher_dist >= @s weapon.range run return 0
execute unless block ~ ~ ~ #weapon:gun_penetrable run function weapon:range/gun/gun/rainbowrocketlauncher/proj/wall
execute if score @s weapon.rainbowrocketlauncher_stop matches 1 run return 0
scoreboard players operation range weapon.range = @s weapon.rainbowrocketlauncher_dist
execute if score @s weapon.rainbowrocketlauncher_steps matches 4 run function weapon:range/gun/loop/particle
execute if score @s weapon.rainbowrocketlauncher_steps matches 2 run function weapon:range/gun/gun/rainbowrocketlauncher/proj/trail_next
execute if entity @s[tag=magnet] run function map:perk/magnetic_bullet/steer
execute at @s run function weapon:range/gun/detect/hit_near
execute as @e[tag=gethit,distance=..32] run function weapon:range/gun/gun/rainbowrocketlauncher/proj/hit
execute if score @s weapon.rainbowrocketlauncher_pierce matches ..-1 run scoreboard players set @s weapon.rainbowrocketlauncher_stop 1
execute if score @s weapon.rainbowrocketlauncher_stop matches 1 run return 0
execute at @s run tp @s ^ ^ ^0.5
scoreboard players add @s weapon.rainbowrocketlauncher_dist 1
scoreboard players remove @s weapon.rainbowrocketlauncher_steps 1
execute if score @s weapon.rainbowrocketlauncher_steps matches 1.. at @s run function weapon:range/gun/gun/rainbowrocketlauncher/proj/step
