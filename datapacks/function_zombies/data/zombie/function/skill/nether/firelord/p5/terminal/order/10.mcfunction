execute store result score @s fl.val run random value 1..12
execute if score @s fl.val = @s fl.c1 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c2 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c3 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c4 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c5 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c6 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c7 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c8 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.val = @s fl.c9 run return run function zombie:skill/nether/firelord/p5/terminal/order/10
scoreboard players operation @s fl.c10 = @s fl.val
