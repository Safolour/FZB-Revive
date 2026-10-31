
execute if score @s gold < price door.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price door.price run return run tellraw @s [{translate:"zb.door.tellraw.1"}]

scoreboard players operation @s gold -= price door.price

$function map:door/interact/open with entity @n[type=marker,tag=door,tag=$(door)] data

$execute as @e[tag=door,tag=$(door)] run function system:death