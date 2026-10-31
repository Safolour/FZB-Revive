
function weapon:range/gun/slot/xp_lv {gun:"pistol"}
playsound entity.horse.gallop record @s ~ ~ ~ 1 0 0
scoreboard players operation @s weapon.gun_pistol_reload = reload weapon.gun_pistol

#scoreboard players add reload test 1