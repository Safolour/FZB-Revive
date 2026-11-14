execute store result score #spawn_x weapon.pd_hit run random value -8000..8000
execute store result score #spawn_z weapon.pd_hit run random value -8000..8000
scoreboard players operation #spawn_r weapon.pd_hit = #spawn_x weapon.pd_hit
scoreboard players operation #spawn_r weapon.pd_hit *= #spawn_x weapon.pd_hit
scoreboard players operation #spawn_z2 weapon.pd_hit = #spawn_z weapon.pd_hit
scoreboard players operation #spawn_z2 weapon.pd_hit *= #spawn_z weapon.pd_hit
scoreboard players operation #spawn_r weapon.pd_hit += #spawn_z2 weapon.pd_hit
execute if score #spawn_r weapon.pd_hit matches 64000001.. run return run function weapon:range/gun/gun/paradox/captive/random_offset
execute store result storage weapon paradox.spawn.dx double 0.001 run scoreboard players get #spawn_x weapon.pd_hit
execute store result storage weapon paradox.spawn.dz double 0.001 run scoreboard players get #spawn_z weapon.pd_hit
