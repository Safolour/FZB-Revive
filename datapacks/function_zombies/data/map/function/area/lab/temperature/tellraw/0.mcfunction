# 第 21 回合开局：温度归零，给所有人看一遍相对温度显示器说明
scoreboard players set temperature area.temperature 0
scoreboard players set temperature0 area.temperature 0
function map:area/lab/temperature/update
execute as @a[scores={system.room=4..}] run function map:area/lab/temperature/tellraw/info_self
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 2 1
