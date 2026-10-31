
execute store result score if waitlobby.stat run schedule clear map:waitlobby/1s_0
execute if score if waitlobby.stat matches 1 run return fail
execute if score timer waitlobby.timer matches 1 run return fail
scoreboard players set timer waitlobby.timer 1
scoreboard players operation count_down waitlobby.timer = start_time map
scoreboard players add count_down waitlobby.timer 1
function map:waitlobby/1s