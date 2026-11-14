
$execute unless score round game.state matches 40 run execute as @e[scores={path.way_point.$(point).near=1}] at @s run particle dust{color:[1,1,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a
$execute if score round game.state matches 40 run execute as @e[scores={path.way_point.$(point).near=1}] at @s run particle dust{color:[1,1,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a[scores={particle=0}]
$execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute as @e[scores={path.way_point.$(point).near=1}] at @s run particle dust{color:[1,1,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a[scores={particle=1}]
$execute unless score round game.state matches 40 run execute as @e[tag=way_point.$(point)] at @s run particle dust{color:[1,0,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a
$execute if score round game.state matches 40 run execute as @e[tag=way_point.$(point)] at @s run particle dust{color:[1,0,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a[scores={particle=0}]
$execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute as @e[tag=way_point.$(point)] at @s run particle dust{color:[1,0,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a[scores={particle=1}]
