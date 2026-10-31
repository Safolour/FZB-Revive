
scoreboard players set @s luckychest.state 1

summon armor_stand ~ ~2 ~ {Tags:["luckychest",text,"text0","chosen"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.luckychest.1"}]}
summon armor_stand ~ ~1.75 ~ {Tags:["luckychest",text,"text1","chosen"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{"score":{"name":"price","objective":"luckychest.price"}},{translate:"zb.luckychest.2"}]}

execute store result storage luckychest root.state.price int 1 run scoreboard players get price luckychest.price

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

execute as @e[type=armor_stand,tag=chosen,tag=text1] at @s run function map:luckychest/summon/text0 with storage luckychest root.state
tag @e[tag=chosen] remove chosen
data remove storage luckychest root
