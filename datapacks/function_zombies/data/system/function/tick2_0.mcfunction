
scoreboard players set @s precedence 1

execute if entity @s[tag=interaction] if score @s uuid = uuid uuid if entity @e[type=chest_minecart,tag=shop,tag=perk,tag=minecart,tag=!opened,scores={precedence=1}] run schedule function map:shop/summon/portal_lab/perk0 2t append
execute if entity @s[tag=interaction] if score @s uuid = uuid uuid if entity @e[type=chest_minecart,tag=shop,tag=armor,tag=minecart,tag=!opened,scores={precedence=1}] run schedule function map:shop/summon/portal_lab/armor/1 2t append