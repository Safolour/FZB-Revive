
$scoreboard players set target path.way_point.target $(way_point)
$execute as @e[type=skeleton,tag=way_point,scores={path.way_point.$(way_point).near=1},tag=!disable] at @s run function map:path/way_point/order/2_1
$execute as @e[type=skeleton,tag=way_point,tag=!selected,scores={path.way_point.$(way_point).near=1,path.way_point.order1=-1}] at @s run function map:path/way_point/order/2_3


execute if score order path.way_point.order1 matches 0 if entity @e[type=skeleton,tag=way_point,scores={path.way_point.order1=1}] run return fail
execute if score order path.way_point.order1 matches 1 if entity @e[type=skeleton,tag=way_point,scores={path.way_point.order1=0}] run return fail
scoreboard players add order path.way_point.order1 1
scoreboard players operation order path.way_point.order1 %= 2 number
execute as @e[type=skeleton,tag=way_point,scores={path.way_point.order1=0}] at @s run function map:path/way_point/order/2_3
execute as @e[type=skeleton,tag=way_point,scores={path.way_point.order1=1}] at @s run function map:path/way_point/order/2_3
