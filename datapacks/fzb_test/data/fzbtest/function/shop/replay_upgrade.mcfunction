execute store success score #upgrade_price_saved fzbtest.tmp run scoreboard players operation #upgrade_old_price fzbtest.tmp = price shop.price
scoreboard players operation price shop.price = ultimatemachine shop.price
function map:shop/interact/upgradable
execute if score #upgrade_price_saved fzbtest.tmp matches 1 run scoreboard players operation price shop.price = #upgrade_old_price fzbtest.tmp
execute unless score #upgrade_price_saved fzbtest.tmp matches 1 run scoreboard players reset price shop.price
