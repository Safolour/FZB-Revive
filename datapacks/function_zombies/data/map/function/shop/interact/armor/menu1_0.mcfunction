
data remove storage shop root
scoreboard players operation armor shop = @p[tag=target] inventory.armor
scoreboard players add armor shop 1
$data modify storage shop root.state.slot set value $(slot)
execute store result storage shop root.state.armor int 1 run scoreboard players get armor shop
function map:shop/interact/armor/set/0 with storage shop root.state
function map:shop/interact/armor/menu1_1 with storage shop root.state
function map:shop/interact/armor/menu1_2 with storage shop root.state
execute if score price shop.price matches ..0 run return run function map:shop/interact/armor/menu1_3 with storage shop root.state
function map:shop/interact/armor/set_price/0
function map:shop/interact/armor/menu1_4 with storage shop root.state
data remove storage shop root