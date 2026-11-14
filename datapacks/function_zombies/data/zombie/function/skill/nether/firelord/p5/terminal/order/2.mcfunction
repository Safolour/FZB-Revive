execute store result score @s fl.val run random value 1..12
execute if score @s fl.val = @s fl.c1 run return run function zombie:skill/nether/firelord/p5/terminal/order/2
scoreboard players operation @s fl.c2 = @s fl.val
