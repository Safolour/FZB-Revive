# Test-only wrapper. Restore the shared shop price before this synchronous call returns.
execute store success score #refill_price_saved fzbtest.tmp run scoreboard players operation #refill_old_price fzbtest.tmp = price shop.price
scoreboard players operation price shop.price = refill shop.price
function map:shop/interact/refill
execute if score #refill_price_saved fzbtest.tmp matches 1 run scoreboard players operation price shop.price = #refill_old_price fzbtest.tmp
execute unless score #refill_price_saved fzbtest.tmp matches 1 run scoreboard players reset price shop.price
