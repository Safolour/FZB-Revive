loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage zombie:titan.eclipse player set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
function zombie:skill/creation/titan/eclipse/kill_player0 with storage zombie:titan.eclipse
item replace block 1 -60 1 container.0 with air
function player_stat:revive/death
