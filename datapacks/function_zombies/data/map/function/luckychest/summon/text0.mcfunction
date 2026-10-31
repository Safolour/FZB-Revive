
scoreboard players operation @s luckychest.price = price luckychest.price

$execute if score price luckychest.price matches 0..999 run data modify storage luckychest root.state.price4 set value '§e§l$(price0)§r'
$execute if score price luckychest.price matches 1000..999999 run data modify storage luckychest root.state.price4 set value '§e§l$(price1),$(price0)§r'
$execute if score price luckychest.price matches 1000000..999999999 run data modify storage luckychest root.state.price4 set value '§e§l$(price2),$(price1),$(price0)§r'
$execute if score price luckychest.price matches 1000000000.. run data modify storage luckychest root.state.price4 set value '§e§l$(price3),$(price2),$(price1),$(price0)§r'

function map:luckychest/summon/text1 with storage luckychest root.state