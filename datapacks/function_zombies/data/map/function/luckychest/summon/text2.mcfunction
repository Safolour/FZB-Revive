scoreboard players operation price luckychest.price = @s luckychest.price
execute store result storage luckychest root.state.price int 1 run scoreboard players get @s luckychest.price
data modify storage luckychest root.state.price set string storage luckychest root.state.price 0

data modify storage luckychest root.state.price0 set from storage luckychest root.state.price
data modify storage luckychest root.state.price0 set string storage luckychest root.state.price0 -3

data modify storage luckychest root.state.price1 set from storage luckychest root.state.price
data modify storage luckychest root.state.price1 set string storage luckychest root.state.price1 0 -3
data modify storage luckychest root.state.price1 set string storage luckychest root.state.price1 -3

data modify storage luckychest root.state.price2 set from storage luckychest root.state.price
data modify storage luckychest root.state.price2 set string storage luckychest root.state.price2 0 -6
data modify storage luckychest root.state.price2 set string storage luckychest root.state.price2 -3

data modify storage luckychest root.state.price3 set from storage luckychest root.state.price
data modify storage luckychest root.state.price3 set string storage luckychest root.state.price3 0 -9
data modify storage luckychest root.state.price3 set string storage luckychest root.state.price3 -3

function map:luckychest/summon/text0 with storage luckychest root.state

data remove storage luckychest root