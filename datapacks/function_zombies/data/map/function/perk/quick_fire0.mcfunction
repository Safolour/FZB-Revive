
$scoreboard players operation @s weapon.gun_$(gun)_rate0 = rate weapon.gun_$(gun)
execute unless items entity @s container.* *[custom_data~{tag:["quick_fire"]}] run return fail
$scoreboard players operation @s weapon.gun_$(gun)_rate0 *= default perk.quick_fire
$scoreboard players operation @s weapon.gun_$(gun)_rate0 /= 100 number