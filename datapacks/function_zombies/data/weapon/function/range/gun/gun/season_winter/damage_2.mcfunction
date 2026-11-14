scoreboard players operation punch weapon.state = punch weapon.gun_season_winter
scoreboard players operation damage weapon.state = damage weapon.gun_season_winter
scoreboard players operation gold weapon.state = gold weapon.gun_season_winter
scoreboard players operation @s weapon.gun_season_winter_time = time weapon.gun_season_winter_time
execute at @s run particle snowflake ~ ~1 ~ 0.5 0.3 0.5 0.02 16 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute at @s run particle block{block_state:"minecraft:ice"} ~ ~1 ~ 0.3 0.2 0.3 0.05 8 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute at @s run playsound block.glass.break player @a ~ ~ ~ 0.5 1.6
execute at @s as @e[tag=mob,distance=0.01..3] run function weapon:range/gun/gun/season_winter/splash_hit
scoreboard players operation punch weapon.state = punch weapon.gun_season_winter
scoreboard players operation damage weapon.state = damage weapon.gun_season_winter
scoreboard players operation gold weapon.state = gold weapon.gun_season_winter
function weapon:range/gun/damage/damage
tag @s remove hit
