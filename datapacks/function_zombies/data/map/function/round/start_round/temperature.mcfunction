
execute if score round game.state matches ..20 run function map:area/lab/temperature/display/clear
execute if score round game.state matches 41.. run function map:area/lab/temperature/display/clear
execute if score round game.state matches 21..40 run function map:area/lab/temperature/display/init
