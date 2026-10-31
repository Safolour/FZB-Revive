
#tellraw @a [{score:{name:"@s",objective:path.in_window}}]

execute if score @s path.summon matches ..0 run return run function system:death
scoreboard players set @s path.summon 0
execute if entity @s[scores={path.tp_binding=1..2,path.in_window=0,path.tp_order=1}] as @s at @s run function map:path/out_window/tick1
execute if entity @s[scores={path.tp_binding=1..2,path.in_window=0,path.tp_order=2}] as @s at @s run function map:path/out_window/tick2
execute if entity @s[scores={path.tp_binding=1..2,path.in_window=1,path.tp_order=1}] as @s at @s run function map:path/in_window/tick1
execute if entity @s[scores={path.tp_binding=1..2,path.in_window=1,path.tp_order=2}] as @s at @s run function map:path/in_window/tick2
