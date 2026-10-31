# /hub、/lobby、/l（functioncommand 模组注册）：游戏中和等待大厅里都能回主大厅
execute if entity @s[scores={system.room=4..}] run return run function map:game/quit
execute if entity @s[scores={system.room=3}] run return run function map:waitlobby/quit
tellraw @s [{translate:zb.quit.tellraw.1}]
