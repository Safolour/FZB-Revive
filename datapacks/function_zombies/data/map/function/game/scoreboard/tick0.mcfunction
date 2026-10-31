
execute store result score zombie_left game.state run execute if entity @e[tag=zombieleft]
scoreboard players operation zombie_left game.state += zombie_left.remaining game.state
execute if score scoreboard game.state matches 2 run function map:game/scoreboard/round_zombie_left
execute if score scoreboard game.state matches 2 run return fail
execute unless score round0 game.state = round game.state run function map:game/scoreboard/round
execute unless score zombie_left0 game.state = zombie_left game.state run function map:game/scoreboard/zombie_left
