
scoreboard players set rejoin game.player 0
execute store result storage game root.uuid int 1 run scoreboard players get @s uuid
function map:game/rejoin0 with storage game root
function map:game/rejoin1 with storage game root.player
execute if score rejoin game.player matches 0 run return 0

execute if score type map matches 4 positioned 300 92 168 rotated 180 0 run tp @s ~ ~ ~ facing ^ ^ ^1
execute if score type map matches 3 positioned 25 25 107 rotated 315 0 run tp @s ~ ~ ~ facing ^ ^ ^1
function player_stat:revive/death_0
return 1