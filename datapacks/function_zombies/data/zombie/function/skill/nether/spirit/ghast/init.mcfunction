execute store result entity @s Pos[1] int 1 run random value 101..105
execute unless score round game.state matches 40 run execute at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 5 force @a[scores={particle=1}]
