
execute if entity @s[tag=path,tag=!pathfinding] run function map:path/tick1
execute if entity @s[tag=path,tag=pathfinding] run function map:path/tick2
execute if entity @s[type=marker,tag=window] at @s run function map:window/tick0
execute if entity @s[type=marker,tag=shop] at @s run function map:shop/tick
execute if entity @s[type=interaction,tag=shop,tag=gun,tag=item] at @s run function map:shop/gun_display_tick with entity @s data
execute if entity @s[type=chest_minecart,tag=shop] run function map:shop/tick1
execute if entity @s[type=interaction,tag=door] run function map:door/tick
execute if entity @s[type=interaction,tag=luckychest] run function map:luckychest/tick
#execute if score timer powerup.timer.shoppingspree matches 0.. if entity @s[type=marker,tag=luckychest] run function map:luckychest/tick1
execute if entity @s[type=marker,tag=luckychest] run function map:luckychest/tick1
execute if entity @s[tag=mob] run function map:perk/tick0
execute if entity @s[type=marker,tag=perk_lightning] at @s run function map:perk/lightning_bullet/strike
execute if entity @s[type=marker,tag=perk_vortex] at @s run function map:perk/gravity_bullet/vortex
execute if entity @s[type=block_display,tag=perk_vortex_block] unless function map:perk/gravity_bullet/block_riding run kill @s
function map:area/lab/tick1
execute if entity @s[tag=item,tag=powerup] run function map:powerup/tick1
