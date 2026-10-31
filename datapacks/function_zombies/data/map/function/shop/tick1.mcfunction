#type=chest_minecart
execute if entity @s[tag=!opened] store result score item shop.menu_item run data get entity @s Items
execute if entity @s[tag=!opened] unless score item shop.menu_item = @s shop.menu_item run function map:shop/interact/perk/menu_reset
execute unless entity @s[tag=opened] run return fail

execute if entity @s[tag=perk] run function map:shop/tick1_0
execute if entity @s[tag=armor] run function map:shop/tick1_1

execute store result score item shop.menu_item run data get entity @s Items
execute unless score item shop.menu_item = @s shop.menu_item run function map:shop/interact/menu_reset