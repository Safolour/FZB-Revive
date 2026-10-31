
#type=marker
execute if entity @s[scores={interaction.right_click=1..}] run function map:shop/tick0

execute if entity @s[tag=shop,tag=perk] at @s unless entity @e[type=chest_minecart,tag=shop,tag=perk,tag=minecart,distance=..1] run function map:shop/summon/portal_lab/perk0
execute if entity @s[tag=shop,tag=armor] at @s unless entity @e[type=chest_minecart,tag=shop,tag=armor,tag=minecart,distance=..1] run function map:shop/summon/portal_lab/armor/1
