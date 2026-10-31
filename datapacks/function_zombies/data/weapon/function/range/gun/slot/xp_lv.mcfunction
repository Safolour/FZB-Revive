
$execute unless score @s weapon.gun_$(gun)_reload matches -1 run function weapon:range/gun/slot/xpmax
$execute store result storage weapon root.lv float 1 run scoreboard players get @s weapon.gun_$(gun)_ammo
function weapon:range/gun/slot/xp_lv0 with storage weapon root
data remove storage weapon root