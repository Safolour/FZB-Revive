
scoreboard players operation uuid shop.uuid = @s shop.uuid
execute as @a if score @s uuid = uuid shop.uuid run tag @s add target
clear @p[tag=target] *[custom_data~{tag:["clear","minecart"]}]
scoreboard players set @s shop.menu_page 2
data modify entity @s Items set value [\
{id:arrow,count:1,Slot:22,components:{custom_data:{tag:["clear","minecart","back"]},custom_name:[{translate:"zb.shop.item.back"}],lore:[[{translate:zb.shop.item.back.0}]]}}\
]
item replace entity @s container.11 from entity @p[tag=target] container.6
item replace entity @s container.13 from entity @p[tag=target] container.7
item replace entity @s container.15 from entity @p[tag=target] container.8

function map:shop/interact/perk/menu2_0 {slot:11}
function map:shop/interact/perk/menu2_0 {slot:13}
function map:shop/interact/perk/menu2_0 {slot:15}

execute store result score @s shop.menu_item run data get entity @s Items

tag @a[tag=target] remove target