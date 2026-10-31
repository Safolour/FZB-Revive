execute if score crimson area.floor.timer matches 0 if score round game.state matches 21..25 run function map:area/lab/floor/nether/crimson/init
execute if score warped area.floor.timer matches 0 if score round game.state matches 26..29 run function map:area/lab/floor/nether/warped/init
execute if score ashes area.floor.timer matches 0 if score round game.state matches 31..35 run function map:area/lab/floor/nether/ashes/init
execute if score spirit area.floor.timer matches 0 if score round game.state matches 36..39 run function map:area/lab/floor/nether/spirit/init

execute if score round game.state matches 40 run function map:area/lab/floor/nether/final/tick

execute if score crimson area.floor.timer matches 1 run function map:area/lab/floor/nether/crimson/tick
execute if score warped area.floor.timer matches 1 run function map:area/lab/floor/nether/warped/tick
execute if score ashes area.floor.timer matches 1 run function map:area/lab/floor/nether/ashes/tick
execute if score spirit area.floor.timer matches 1 run function map:area/lab/floor/nether/spirit/tick

execute if score round game.state matches ..20 run function map:area/lab/floor/nether/reset
execute if score round game.state matches 30 run function map:area/lab/floor/nether/reset
execute if score round game.state matches 40.. run function map:area/lab/floor/nether/reset
