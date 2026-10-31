function weapon:range/gun/slot/xp_lv {gun:"season_winter"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_season_winter_reload = reload weapon.gun_season_winter

#scoreboard players add reload test 1
