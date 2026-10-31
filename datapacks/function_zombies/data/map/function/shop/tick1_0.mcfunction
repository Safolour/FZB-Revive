
execute if score @s shop.menu_page matches 1 if score @s shop.menu_tier matches 1 run function map:shop/interact/perk/click/a
execute if score @s shop.menu_page matches 1 if score @s shop.menu_tier matches 2..4 run function map:shop/interact/perk/click/b
execute if score @s shop.menu_page matches 1 if score @s shop.menu_tier matches 5 run function map:shop/interact/perk/click/c
#execute if score @s shop.menu_page matches 1 unless items entity @s container.22 *[custom_data~{tag:["close"]}] run function map:shop/interact/menu_close


execute if score @s shop.menu_page matches 2 unless items entity @s container.11 *[custom_data~{tag:["clear","minecart"]}] run function map:shop/interact/buy_perk2 with entity @s data.shop
execute if score @s shop.menu_page matches 2 unless items entity @s container.13 *[custom_data~{tag:["clear","minecart"]}] run function map:shop/interact/buy_perk2 with entity @s data.shop
execute if score @s shop.menu_page matches 2 unless items entity @s container.15 *[custom_data~{tag:["clear","minecart"]}] run function map:shop/interact/buy_perk2 with entity @s data.shop
execute if score @s shop.menu_page matches 2 unless items entity @s container.22 *[custom_data~{tag:["back"]}] run function map:shop/interact/menu_back
