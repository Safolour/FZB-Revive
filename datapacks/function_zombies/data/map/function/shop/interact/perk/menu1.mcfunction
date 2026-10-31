
scoreboard players operation uuid shop.uuid = @s shop.uuid
execute as @a if score @s uuid = uuid shop.uuid run tag @s add target
clear @p[tag=target] *[custom_data~{tag:["clear","minecart"]}]

scoreboard players set @s shop.menu_page 1
# 按当前轮次分档（布局照新版录像）：1=档A r1-20；2/3/4=档B r21-30/r31-35/r36-40（第 15 格轮换）；5=档C r41+
scoreboard players set @s shop.menu_tier 1
execute if score round game.state matches 21..30 run scoreboard players set @s shop.menu_tier 2
execute if score round game.state matches 31..35 run scoreboard players set @s shop.menu_tier 3
execute if score round game.state matches 36..40 run scoreboard players set @s shop.menu_tier 4
execute if score round game.state matches 41.. run scoreboard players set @s shop.menu_tier 5
data modify entity @s Items set value [\
{id:diamond,count:1,Slot:0b,components:{item_model:"custom:minecarttext/vendingmachine",tooltip_display:{hide_tooltip:true},custom_data:{tag:["clear","minecart","title"]}}}\
]
execute if score @s shop.menu_tier matches 1 run function map:shop/interact/perk/tier/a
execute if score @s shop.menu_tier matches 2..4 run function map:shop/interact/perk/tier/b
execute if score @s shop.menu_tier matches 5 run function map:shop/interact/perk/tier/c
execute store result score @s shop.menu_item run data get entity @s Items

tag @a[tag=target] remove target
