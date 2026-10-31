
scoreboard players operation uuid shop.uuid = @s shop.uuid
execute as @a at @s if score @s uuid = uuid shop.uuid run tag @s add target
scoreboard players operation armor shop = @p[tag=target] inventory.armor
scoreboard players add armor shop 1
execute store result storage shop root.state.armor int 1 run scoreboard players get armor shop
execute as @p[tag=target] at @s run function map:shop/interact/buy_armor0 with storage shop root.state


execute if entity @p[tag=bought] run function map:shop/interact/menu_close
tag @a[tag=target0] remove target0
tag @a[tag=target] remove target
tag @a[tag=bought] remove bought
function map:shop/interact/menu_reset