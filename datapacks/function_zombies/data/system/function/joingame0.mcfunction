
loot replace block 1 -60 1 container.0 loot system:playerhead
data modify storage game root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
function system:joingame1 with storage game root.player
data remove storage game root
item replace block 1 -60 1 container.0 with air