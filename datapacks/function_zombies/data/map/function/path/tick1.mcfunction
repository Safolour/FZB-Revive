
execute unless score @s path.delay matches ..-1 run scoreboard players remove @s path.delay 1
execute unless score @s path.in_window = @s path.in_window run scoreboard players set @s path.in_window 1
#execute unless score @s path.summon = @s path.summon run function map:path/summon/0
execute if entity @s[nbt={NoAI:1b}] run return fail
execute if score @s[scores={path.delay=..0}] path.summon matches 2 run function map:path/summon/2
execute if score @s[scores={path.delay=..0}] path.summon matches 3 run function map:path/summon/4
execute if entity @s[scores={path.tp_binding=1..2}] run function map:path/tick1_0
execute if entity @s[scores={path.tp_binding=2..3}] at @s run function map:path/tick1_1
execute if score @s path.in_window matches 2 run function map:path/tick1_2
#execute as @e[type=skeleton,tag=pathfinding] run tellraw @a [{text:"xd "},{score:{name:"@s",objective:path.tp_order}}]