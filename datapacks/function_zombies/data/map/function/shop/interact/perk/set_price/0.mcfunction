
execute store result storage shop root.state.price int 1 run scoreboard players get price shop.price

data modify storage shop root.state.price set string storage shop root.state.price 0

data modify storage shop root.state.price0 set from storage shop root.state.price
data modify storage shop root.state.price0 set string storage shop root.state.price0 -3

data modify storage shop root.state.price1 set from storage shop root.state.price
data modify storage shop root.state.price1 set string storage shop root.state.price1 0 -3
data modify storage shop root.state.price1 set string storage shop root.state.price1 -3

data modify storage shop root.state.price2 set from storage shop root.state.price
data modify storage shop root.state.price2 set string storage shop root.state.price2 0 -6
data modify storage shop root.state.price2 set string storage shop root.state.price2 -3

data modify storage shop root.state.price3 set from storage shop root.state.price
data modify storage shop root.state.price3 set string storage shop root.state.price3 0 -9
data modify storage shop root.state.price3 set string storage shop root.state.price3 -3
function map:shop/interact/perk/set_price/1 with storage shop root.state
function map:shop/interact/perk/set_price/2 with storage shop root.state
