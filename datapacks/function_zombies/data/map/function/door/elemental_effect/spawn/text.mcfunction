
scoreboard players operation @s door.price = price door.price
execute store result storage door root.state.price int 1 run scoreboard players get price door.price

data modify storage door root.state.price set string storage door root.state.price 0

data modify storage door root.state.price0 set from storage door root.state.price
data modify storage door root.state.price0 set string storage door root.state.price0 -3

data modify storage door root.state.price1 set from storage door root.state.price
data modify storage door root.state.price1 set string storage door root.state.price1 0 -3
data modify storage door root.state.price1 set string storage door root.state.price1 -3

data modify storage door root.state.price2 set from storage door root.state.price
data modify storage door root.state.price2 set string storage door root.state.price2 0 -6
data modify storage door root.state.price2 set string storage door root.state.price2 -3

data modify storage door root.state.price3 set from storage door root.state.price
data modify storage door root.state.price3 set string storage door root.state.price3 0 -9
data modify storage door root.state.price3 set string storage door root.state.price3 -3

function map:door/elemental_effect/spawn/text0 with storage door root.state

data remove storage door root
