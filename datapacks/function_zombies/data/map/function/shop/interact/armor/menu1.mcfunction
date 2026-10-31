
scoreboard players operation uuid shop.uuid = @s shop.uuid
execute as @a if score @s uuid = uuid shop.uuid run tag @s add target
clear @p[tag=target] *[custom_data~{tag:["clear","minecart"]}]

scoreboard players set @s shop.menu_page 1
data modify entity @s Items set value [\
{id:leather_chestplate,count:1,Slot:13,components:{tooltip_display:{hidden_components:[attribute_modifiers]},custom_data:{perk:armor,tag:["clear","minecart","armor"]},custom_name:[{translate:zb.shop.armor_shop.armor.name.0,color:yellow,italic:false}],lore:[[{text:""}],[{text:""}],[{text:""}],[{text:""}],[{text:""}],[{text:""}],[{translate:zb.shop.armor_shop.lore1}],[{text:""}],[{text:""}]]}},\
]
function map:shop/interact/armor/menu1_0 {slot:13}
execute store result score @s shop.menu_item run data get entity @s Items


tag @a[tag=target] remove target