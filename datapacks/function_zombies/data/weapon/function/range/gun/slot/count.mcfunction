
$execute unless items entity @s container.* *[custom_data~{tag:["$(gun)"]}] run return fail
scoreboard players set @s inventory 2
$execute store result storage weapon root.slot int 1 run scoreboard players get @s weapon.gun_$(gun)_slot
$scoreboard players operation clip_ammo weapon.state = @s weapon.gun_$(gun)_clip_ammo
function weapon:range/gun/slot/count0 with storage weapon root
data remove storage weapon root
scoreboard players set @s inventory 1
function inventory:item_store
