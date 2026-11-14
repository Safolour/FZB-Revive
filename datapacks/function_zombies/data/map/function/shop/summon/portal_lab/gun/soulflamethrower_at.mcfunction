# Each point is independent: replacing this shop only removes its own nearby entities.
$execute positioned $(x) $(y) $(z) as @e[tag=shop,tag=soulflamethrower,distance=..3] run function system:death
$summon interaction $(x) $(y) $(z) {width:3f,height:3f,Rotation:[90f,0f],Tags:["shop","interactable","soulflamethrower","gun","item","chosen"],data:{item:soulflamethrower}}
scoreboard players set price shop.price 1500
$execute positioned $(x) $(y) $(z) as @e[type=interaction,tag=shop,tag=soulflamethrower,tag=chosen,distance=..0.1,limit=1] at @s positioned ^ ^1 ^1 run function map:shop/summon/text {name:soulflamethrower,item:stick}
$execute positioned $(x) $(y) $(z) as @e[type=interaction,tag=shop,tag=soulflamethrower,distance=..0.1,limit=1] at @s positioned ^ ^1.25 ^1 run data modify entity @e[type=item,tag=shop,tag=soulflamethrower,tag=item,distance=..0.5,sort=nearest,limit=1] Item.components set value {"minecraft:item_model":"minecraft:diamond_hoe"}
