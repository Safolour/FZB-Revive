execute if score @s weapon.resonance_dist >= @s weapon.range run return 0
execute unless block ~ ~ ~ #weapon:gun_penetrable run return run scoreboard players set @s weapon.resonance_stop 1
scoreboard players operation range weapon.range = @s weapon.resonance_dist
function weapon:range/gun/loop/particle
execute if entity @s[tag=magnet] run function map:perk/magnetic_bullet/steer
execute at @s run function weapon:range/gun/detect/hit_near
execute as @e[tag=gethit,distance=..32] run function weapon:range/gun/gun/resonance/proj/hit
execute if score @s weapon.resonance_pierce matches ..-1 run scoreboard players set @s weapon.resonance_stop 1
execute if score @s weapon.resonance_stop matches 1 run return 0
execute at @s run tp @s ^ ^ ^0.5
scoreboard players add @s weapon.resonance_dist 1
scoreboard players remove @s weapon.resonance_steps 1
execute if score @s weapon.resonance_steps matches 1.. at @s run function weapon:range/gun/gun/resonance/proj/step
