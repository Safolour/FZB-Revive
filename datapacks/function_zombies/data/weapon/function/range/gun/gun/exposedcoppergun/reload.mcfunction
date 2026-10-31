function weapon:range/gun/slot/xp_lv {gun:"exposedcoppergun"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_exposedcoppergun_reload = reload weapon.gun_exposedcoppergun

#scoreboard players add reload test 1
