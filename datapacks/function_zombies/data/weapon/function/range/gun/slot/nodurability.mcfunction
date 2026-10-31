
scoreboard players set @s inventory 2
$execute store result storage weapon root.slot int 1 run scoreboard players get @s weapon.gun_$(gun)_slot
function weapon:range/gun/slot/nodurability0 with storage weapon root
data remove storage weapon root
scoreboard players set @s inventory 1
function inventory:item_store
