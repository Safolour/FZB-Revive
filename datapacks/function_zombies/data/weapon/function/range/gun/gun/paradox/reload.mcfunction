function weapon:range/gun/slot/xp_lv {gun:"paradox"}
playsound item.crossbow.loading_start record @s ~ ~ ~ 1.5 1
scoreboard players operation @s weapon.gun_paradox_reload = reload weapon.gun_paradox
execute if score @s weapon.pd_state matches 2 run scoreboard players operation @s weapon.gun_paradox_reload = dream_reload weapon.gun_paradox
