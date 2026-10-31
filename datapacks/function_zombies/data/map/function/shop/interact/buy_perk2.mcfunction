
execute unless items entity @s container.11 *[custom_data~{tag:["clear","minecart"]}] run data modify storage shop root.buy.slot set value 6
execute unless items entity @s container.13 *[custom_data~{tag:["clear","minecart"]}] run data modify storage shop root.buy.slot set value 7
execute unless items entity @s container.15 *[custom_data~{tag:["clear","minecart"]}] run data modify storage shop root.buy.slot set value 8
function map:shop/interact/menu_reset

scoreboard players operation uuid shop.uuid = @s shop.uuid
$scoreboard players operation price shop.price = $(perk) shop.price
execute as @a at @s if score @s uuid = uuid shop.uuid run tag @s add target
$execute as @p[tag=target] at @s run function map:shop/buy/buy_perk {item:$(perk)}

function map:shop/interact/minecart_kill
execute if entity @p[tag=bought] run function map:shop/interact/menu_close
tag @a[tag=target] remove target
tag @a[tag=target0] remove target0