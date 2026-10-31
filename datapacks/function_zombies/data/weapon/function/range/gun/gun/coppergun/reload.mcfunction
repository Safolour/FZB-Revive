function weapon:range/gun/slot/xp_lv {gun:"coppergun"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_coppergun_reload = reload weapon.gun_coppergun

#scoreboard players add reload test 1
