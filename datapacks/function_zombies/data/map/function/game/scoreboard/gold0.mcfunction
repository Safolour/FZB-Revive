
$execute if score gold gold matches 0..999 run data modify storage game root.gold.gold4 set value "§6$(gold0)§r"
$execute if score gold gold matches 1000..999999 run data modify storage game root.gold.gold4 set value "§6$(gold1),$(gold0)§r"
$execute if score gold gold matches 1000000..999999999 run data modify storage game root.gold.gold4 set value "§6$(gold2),$(gold1),$(gold0)§r"
$execute if score gold gold matches 1000000000.. run data modify storage game root.gold.gold4 set value "§6$(gold3),$(gold2),$(gold1),$(gold0)§r"
