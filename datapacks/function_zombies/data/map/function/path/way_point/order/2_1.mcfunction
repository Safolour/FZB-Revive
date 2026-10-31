
execute unless entity @s[scores={path.way_point.order1=-1}] run return fail

scoreboard players operation order0 path.way_point.order0 = order path.way_point.order0
#execute if entity @s[tag=selected] run scoreboard players remove order0 path.way_point.order0 2
#execute if score @s path.way_point.order0 < order0 path.way_point.order0 run scoreboard players set @s path.way_point.order1 2
execute unless score @s path.way_point.order0 > order path.way_point.order0 run return fail
execute if score order path.way_point.order1 matches 0 run scoreboard players set @s path.way_point.order1 0
execute if score order path.way_point.order1 matches 1 run scoreboard players set @s path.way_point.order1 1
execute if score @s path.way_point.order0 matches ..1000 run tag @s remove selected
execute run scoreboard players operation @s path.way_point.target = target path.way_point.target
execute run scoreboard players operation @s path.way_point.order0 = order path.way_point.order0
return fail
execute if entity @s[scores={path.way_point.order1=0}] run tellraw @a [{text:" "},{"selector":"@s"},{text:" -> "},{"score":{"name":"@s","objective":"path.way_point.order0"}}]
execute if entity @s[scores={path.way_point.order1=1}] run tellraw @a [{text:" "},{"selector":"@s"},{text:" : "},{"score":{"name":"@s","objective":"path.way_point.order0"}}]