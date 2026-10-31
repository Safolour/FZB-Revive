
$execute unless items entity @s container.* *[custom_data~{tag:["$(gun)"]}] run return fail
scoreboard players set @s inventory 2
$scoreboard players operation reload weapon.state = @s weapon.gun_$(gun)_reload
scoreboard players operation reload weapon.state *= 10000 number
$scoreboard players operation reload weapon.state /= reload weapon.gun_$(gun)
$execute store result storage weapon root.slot int 1 run scoreboard players get @s weapon.gun_$(gun)_slot
function weapon:range/gun/slot/reload0 with storage weapon root
$execute if items entity @s weapon *[custom_data~{tag:["$(gun)"]}] run function weapon:range/gun/slot/xp_point {gun:"$(gun)"}
data remove storage weapon root
scoreboard players set @s inventory 1
function inventory:item_store
