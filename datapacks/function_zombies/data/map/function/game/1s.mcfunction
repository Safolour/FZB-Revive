
function map:game/scoreboard/time
execute if score type map matches 4 unless data storage map:r40 core_door_active run function map:door/portal_lab/core/attach
execute if score type map matches 4 if data storage map:r40 core_door_active run function map:door/portal_lab/core/maintain

scoreboard players add global.second game.timer 1
scoreboard players add second game.timer 1
execute if score second game.timer matches 60.. run scoreboard players add minute game.timer 1
execute if score second game.timer matches 60.. run scoreboard players set second game.timer 0
execute if score minute game.timer matches 60.. run scoreboard players add hour game.timer 1
execute if score minute game.timer matches 60.. run scoreboard players set minute game.timer 0

schedule function map:game/1s 1s replace
schedule function map:game/1s_0 1s replace

return fail
scoreboard players set click test 0
scoreboard players operation click test += left_click test
scoreboard players operation click test += right_click test
tellraw @a [{text:"右键:"},{score:{name:right_click,objective:test}},{text:"|左键:"},{score:{name:left_click,objective:test}},{text:"|合:"},{score:{name:click,objective:test}},{text:"|射击:"},{score:{name:shoot,objective:test}},{text:"|换弹:"},{score:{name:reload,objective:test}}]
scoreboard players set reload test 0
scoreboard players set shoot test 0
scoreboard players set left_click test 0
scoreboard players set right_click test 0
