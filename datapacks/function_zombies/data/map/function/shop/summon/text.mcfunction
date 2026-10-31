
scoreboard players operation @s shop.price = price shop.price
execute store result storage shop root.state.price int 1 run scoreboard players get price shop.price
$data modify storage shop root.state.name set value $(name)
$data modify storage shop root.state.item set value $(item)

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

function map:shop/summon/text0 with storage shop root.state

execute if entity @s[tag=refill] run data modify entity @n[type=item,tag=shop,tag=item] Item.components."minecraft:profile" set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjAxMDE4YzExZGY2YzNkZTczY2E5OWNkMTgxZmNiNWFlMDlhN2QwYWY3M2NiNWMxMGY5ZTY4MzE0MzM3NTFlIn19fQ=="}]}

data remove storage shop root
tag @s remove chosen