function weapon:range/gun/slot/xp_lv {gun:"season_spring"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_season_spring_reload = reload weapon.gun_season_spring

#scoreboard players add reload test 1
