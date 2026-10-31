
$execute as @e[scores={path.way_point.$(point).near=1}] at @s run particle dust{color:[1,1,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a
$execute as @e[tag=way_point.$(point)] at @s run particle dust{color:[1,0,1],scale:1} ~ ~2 ~ 0 0 0 0 0 force @a
