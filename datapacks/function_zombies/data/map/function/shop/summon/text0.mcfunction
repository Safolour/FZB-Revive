
$execute if entity @s[tag=item] run summon item ~ ~0.25 ~ {Age:-32768,PickupDelay:-1,Invulnerable:1b,Item:{id:"$(item)",count:1},Tags:["shop","$(name)","item"],NoGravity:1b}

$summon armor_stand ~ ~-0.25 ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.shop.$(name)"}],Tags:["shop","interactable","$(name)",text]}

$execute if score price shop.price matches 0..999 run data modify storage shop root.state.price4 set value '§6$(price0)§r'
$execute if score price shop.price matches 1000..999999 run data modify storage shop root.state.price4 set value '§6$(price1),$(price0)§r'
$execute if score price shop.price matches 1000000..999999999 run data modify storage shop root.state.price4 set value '§6$(price2),$(price1),$(price0)§r'
$execute if score price shop.price matches 1000000000.. run data modify storage shop root.state.price4 set value '§6$(price3),$(price2),$(price1),$(price0)§r'

team join collision @e[type=item,tag=shop,tag=item]
function map:shop/summon/text1 with storage shop root.state