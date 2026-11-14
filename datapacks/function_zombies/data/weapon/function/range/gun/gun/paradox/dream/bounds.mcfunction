$execute positioned $(cx) ~ 18058 positioned ~0.5 ~ ~0.5 unless entity @s[distance=..55.0] run return run function weapon:range/gun/gun/paradox/dream/recover_safe
execute store result score #height weapon.pd_y run data get entity @s Pos[1] 100
execute if score #height weapon.pd_y matches ..14400 run return run function weapon:range/gun/gun/paradox/dream/recover_safe
$execute positioned $(cx) ~ 18058 positioned ~0.5 ~ ~0.5 if entity @s[distance=..54.0] run function weapon:range/gun/gun/paradox/dream/save_safe
