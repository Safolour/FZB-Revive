
function player_stat:revive/playe_model_remove
loot replace block 1 -60 1 container.0 loot system:playerhead
data modify storage revive root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
scoreboard players operation slim stat.slim = @s stat.slim
scoreboard players operation uuid uuid = @s uuid

execute positioned ~ ~ ~ facing ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^0.6 run function player_stat:revive/playe_model_summon {args: {}}

data remove storage game root
item replace block 1 -60 1 container.0 with air