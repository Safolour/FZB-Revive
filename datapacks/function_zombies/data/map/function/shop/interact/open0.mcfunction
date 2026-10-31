
$execute as @e[type=chest_minecart,tag=shop,tag=$(shop),tag=minecart,tag=opened] at @s if score @s shop.uuid = uuid shop.uuid run function map:shop/interact/minecart_kill
$execute as @e[type=chest_minecart,tag=shop,tag=$(shop),tag=minecart,tag=!opened,nbt=!{LootTable:"map:nothing"}] at @s run function map:shop/interact/open1 {shop:$(shop)}
