
advancement revoke @s only map:minecart_open
scoreboard players operation uuid shop.uuid = @s uuid
tag @s add chosen
execute at @s as @n[type=chest_minecart,tag=shop,tag=minecart] if entity @s[tag=perk] run function map:shop/interact/open0 {shop:perk}
execute at @s as @n[type=chest_minecart,tag=shop,tag=minecart] if entity @s[tag=armor] run function map:shop/interact/open0 {shop:armor}
tag @s remove chosen
