# Execute as the purchasing player; price door.price was copied by door/tick0.
execute if score @s gold < price door.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price door.price run return run tellraw @s [{translate:"zb.door.tellraw.1"}]
scoreboard players operation @s gold -= price door.price
scoreboard players set #core_side door.open 0
execute as @n[type=marker,tag=door,tag=lab_core,tag=side] if entity @s[tag=core_side] run scoreboard players set #core_side door.open 1
execute if score #core_side door.open matches 0 run function map:door/portal_lab/core/announce_lab
execute if score #core_side door.open matches 1 run function map:door/portal_lab/core/announce_core
function map:door/portal_lab/core/open
