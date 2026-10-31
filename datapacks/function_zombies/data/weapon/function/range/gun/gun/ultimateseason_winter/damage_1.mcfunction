tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ultimateseason_winter
scoreboard players operation damage weapon.state = damage weapon.gun_ultimateseason_winter
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ultimateseason_winter
scoreboard players operation @s weapon.gun_ultimateseason_winter_time = time weapon.gun_ultimateseason_winter_time
execute at @s run particle snowflake ~ ~1 ~ 0.5 0.3 0.5 0.02 16 force @a[scores={particle=0..1}]
execute at @s run particle block{block_state:"minecraft:ice"} ~ ~1 ~ 0.3 0.2 0.3 0.05 8 force @a[scores={particle=0..1}]
execute at @s run playsound block.glass.break player @a ~ ~ ~ 0.5 1.6
execute at @s as @e[tag=mob,distance=0.01..4] run function weapon:range/gun/gun/ultimateseason_winter/splash_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ultimateseason_winter
scoreboard players operation damage weapon.state = damage weapon.gun_ultimateseason_winter
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ultimateseason_winter
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
