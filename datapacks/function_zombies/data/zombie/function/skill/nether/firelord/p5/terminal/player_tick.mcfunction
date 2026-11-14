execute unless entity @s[tag=fl.using] run return 0
scoreboard players enable @s fl.terminal
execute unless entity @s[scores={stat.player=1,system.room=4..}] run return run function zombie:skill/nether/firelord/p5/terminal/exit
execute if score @s fl.terminal matches ..-1 run return run function zombie:skill/nether/firelord/p5/terminal/exit
execute if score @s fl.terminal matches 1.. at @s run function zombie:skill/nether/firelord/p5/terminal/click
