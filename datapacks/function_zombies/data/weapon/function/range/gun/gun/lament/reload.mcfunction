function weapon:range/gun/slot/xp_lv {gun:"lament"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_lament_reload = reload weapon.gun_lament
