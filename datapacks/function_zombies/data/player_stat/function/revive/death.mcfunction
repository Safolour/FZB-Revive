
function inventory:item_restore0
function inventory:inventory/perk_clear
clear @s

team leave @s
team join game.player @s
gamemode spectator @s
effect clear @s invisibility
title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 10 70 20
title @s[scores={system.room=4..,title.color.enable=0}] title [{translate:"zb.revive.death.1"}]
title @s[scores={system.room=4..,title.color.enable=0}] subtitle [{translate:"zb.revive.death.2"}]
title @s[scores={system.room=4..,title.color.enable=0}] actionbar [{text:" "}]
function map:shop/interact/open
loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage game root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
execute store result storage game root.player.uuid int 1 run scoreboard players get @s uuid
function player_stat:revive/death0 with storage game root.player
function player_stat:revive/death1 with storage game root.player
execute unless data storage game root.player.target run tellraw @a[scores={system.room=4..}] [{translate:"zb.revive.tellraw.4",with:[[{selector:"@s"}]]}]
data remove storage game root
item replace block 1 -60 1 container.0 with air
data remove storage revive root

execute as @a[scores={system.room=4..}] at @s run playsound entity.player.hurt record @s ~ ~ ~ 1 1 0

tellraw @s [{translate:zb.revive.tellraw.5}]
function player_stat:revive/playe_model_remove

scoreboard players set @s stat.burn_timer -1
scoreboard players set @s stat.player 3
scoreboard players add @s stat.death 1
