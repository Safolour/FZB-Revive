scoreboard players add timer area.floor.timer 1

execute store result score random area.floor.timer run random value 0..9
execute unless score timer area.floor.timer matches 790.. if score random area.floor.timer matches 0 run scoreboard players add timer area.floor.timer 2
execute unless score timer area.floor.timer matches 790.. if score random area.floor.timer matches 1 run scoreboard players remove timer area.floor.timer 2
scoreboard players reset random area.floor.timer

execute if score timer area.floor.timer matches 800 run function map:area/lab/floor/nether/spirit/0
execute if score timer area.floor.timer matches 840 run function map:area/lab/floor/nether/spirit/1
execute if score timer area.floor.timer matches 880 run function map:area/lab/floor/nether/spirit/2
execute if score timer area.floor.timer matches 880 run scoreboard players set timer area.floor.timer 0

execute if score timer area.floor.timer matches 800..880 as @e[tag=mob] at @s run function map:area/lab/floor/nether/spirit/tick0
execute if score timer area.floor.timer matches 0..880 as @a at @s run function map:area/lab/floor/nether/spirit/tick0

execute unless score round game.state matches 40 run particle white_ash 300 92 150 15 5 20 0.02 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash 300 92 150 15 5 20 0.02 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash 300 92 150 15 5 20 0.02 15 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul 300 92 150 15 5 20 0.02 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul 300 92 150 15 5 20 0.02 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul 300 92 150 15 5 20 0.02 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle soul 300 92 150 15 5 20 0.02 1 force @a[scores={particle=1}]
