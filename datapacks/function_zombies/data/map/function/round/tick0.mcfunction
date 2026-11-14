
execute if score #game_active round matches 1 unless entity @a[scores={system.room=4..,stat.player=1}] run function map:round/gameover/0

execute if score timer round matches 1.. run scoreboard players remove timer round 1
execute if score #game_active round matches 1 if score type map matches 4 if score round game.state matches 70 if score wave round matches 0 if score timer round matches 200 in minecraft:overworld run function zombie:skill/machine/observereye/r70_destroy
execute if score timer round matches ..0 if score round game.state matches -1 run function map:round/win/0
execute if score timer round matches ..0 if score wave round < max_wave round run function map:round/next_wave/0
execute if score round game.state matches -1 run return fail
execute if score wave round < max_wave round run return fail
execute if score timer round matches 1.. run return fail
execute if score stat zombie.nether.guardian matches 0.. run return fail

execute unless data storage map:r40 p5 unless data storage map:r40 p5_closed unless entity @e[tag=zombieleft] run function map:round/next_round/0
