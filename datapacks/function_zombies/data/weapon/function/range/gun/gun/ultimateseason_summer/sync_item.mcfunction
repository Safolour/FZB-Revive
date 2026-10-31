execute unless items entity @s weapon.mainhand *[custom_data~{gun:"ultimateseason_summer"}] run return 0
execute if data entity @s SelectedItem{components:{"minecraft:custom_data":{ammo:"ultimateseason_summer"},"minecraft:lore":[{translate:"zb.item.gun.ultimateseason_summer.lore.0"}]}} run return 0
execute store result storage weapon migrate_item.slot int 1 run data get entity @s SelectedItemSlot
function weapon:range/gun/_get_item/migrate/ultimateseason_summer with storage weapon migrate_item
data remove storage weapon migrate_item
