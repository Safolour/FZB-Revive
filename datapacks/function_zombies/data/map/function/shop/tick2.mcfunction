#type=player
execute if entity @s[scores={shop.actionbar=1}] unless entity @n[type=interaction,tag=shop,distance=..3] run title @s actionbar [{text:""}]
execute if entity @s[scores={shop.actionbar=1}] unless entity @n[type=interaction,tag=shop,distance=..3] run scoreboard players set @s shop.actionbar 0
execute at @s if entity @n[type=interaction,tag=shop,tag=gun,distance=..3] run function map:shop/tick2_0 with entity @s SelectedItem.components."minecraft:custom_data"
execute at @s if entity @n[type=interaction,tag=shop,tag=refill,distance=..3] run function map:shop/tick2_1 with entity @s SelectedItem.components."minecraft:custom_data"
execute if entity @s[advancements={map:minecart_open=true}] run function map:shop/interact/open