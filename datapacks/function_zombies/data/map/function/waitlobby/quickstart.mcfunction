
execute if score count_down waitlobby.timer matches ..20 run return fail
scoreboard players operation count_down waitlobby.timer = quickstart_time map
scoreboard players add count_down waitlobby.timer 1
schedule clear map:waitlobby/1s_0
schedule clear map:waitlobby/1s
function map:waitlobby/1s