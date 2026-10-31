
execute if score @s shop.menu_page matches 1 unless items entity @s container.13 *[custom_data~{tag:["armor"]}] run function map:shop/interact/buy_armor
