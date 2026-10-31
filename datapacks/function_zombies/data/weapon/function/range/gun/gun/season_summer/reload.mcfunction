function weapon:range/gun/slot/xp_lv {gun:"season_summer"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_season_summer_reload = reload weapon.gun_season_summer

#scoreboard players add reload test 1
