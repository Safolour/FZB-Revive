
$execute if score price shop.price matches 0..999 run data modify storage shop root.state.price4 set value '§6$(price0)§r'
$execute if score price shop.price matches 1000..999999 run data modify storage shop root.state.price4 set value '§6$(price1),$(price0)§r'
$execute if score price shop.price matches 1000000..999999999 run data modify storage shop root.state.price4 set value '§6$(price2),$(price1),$(price0)§r'
$execute if score price shop.price matches 1000000000.. run data modify storage shop root.state.price4 set value '§6$(price3),$(price2),$(price1),$(price0)§r'
