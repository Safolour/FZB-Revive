
scoreboard players operation @s gold0 = @s gold
execute unless score @s stat.player matches 1 run return fail
scoreboard players operation gold gold = @s gold
scoreboard players operation gold0 gold = gold gold
execute if score gold gold matches ..0 run scoreboard players operation gold gold *= -1 number
execute store result storage game root.gold.gold int 1 run scoreboard players get gold gold

data modify storage game root.gold.gold set string storage game root.gold.gold 0

data modify storage game root.gold.gold0 set from storage game root.gold.gold
data modify storage game root.gold.gold0 set string storage game root.gold.gold -3

data modify storage game root.gold.gold1 set from storage game root.gold.gold
data modify storage game root.gold.gold1 set string storage game root.gold.gold1 0 -3
data modify storage game root.gold.gold1 set string storage game root.gold.gold1 -3

data modify storage game root.gold.gold2 set from storage game root.gold.gold
data modify storage game root.gold.gold2 set string storage game root.gold.gold2 0 -6
data modify storage game root.gold.gold2 set string storage game root.gold.gold2 -3

data modify storage game root.gold.gold3 set from storage game root.gold.gold
data modify storage game root.gold.gold3 set string storage game root.gold.gold3 0 -9
data modify storage game root.gold.gold3 set string storage game root.gold.gold3 -3
execute store result storage game root.gold.uuid int 1 run scoreboard players get @s uuid
function map:game/scoreboard/gold0 with storage game root.gold
execute if score gold0 gold matches ..-1 run function map:game/scoreboard/gold1 with storage game root.gold
function map:game/scoreboard/gold2 with storage game root.gold
data remove storage game root