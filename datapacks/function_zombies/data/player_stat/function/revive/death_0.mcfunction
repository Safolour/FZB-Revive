
clear @s
function inventory:item_restore0
function inventory:inventory/perk_clear

team leave @s
team join game.player @s
gamemode spectator @s
effect clear @s invisibility
function map:shop/interact/open
loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage game root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
execute store result storage game root.player.uuid int 1 run scoreboard players get @s uuid
function player_stat:revive/death0 with storage game root.player
#execute if score @s stat.player matches 1..2 run function player_stat:revive/death1 with storage game root.player
data remove storage game root
item replace block 1 -60 1 container.0 with air
data remove storage revive root
tellraw @s [{translate:zb.revive.tellraw.5}]

scoreboard players set @s stat.burn_timer -1
scoreboard players set @s system.room 4
scoreboard players set @s stat.player 3
scoreboard players add @s stat.death 1
scoreboard players set @s interaction.state 0