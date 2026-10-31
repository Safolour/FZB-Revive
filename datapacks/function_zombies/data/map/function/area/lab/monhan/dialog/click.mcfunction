# 玩家点了对话选项（player_tick，执行者 = 玩家，at @s）
scoreboard players operation #idx monhan = @s dialogue.trigger
scoreboard players set @s dialogue.trigger 0
scoreboard players operation #idx monhan -= @s monhan.key
execute unless score @s monhan.page matches 1.. run return fail
execute unless score #idx monhan matches 1..99 run return fail
execute unless entity @s[scores={stat.player=1}] run return fail
execute unless entity @e[type=interaction,tag=area.lab.monhan.interaction,distance=..5] run return fail
function map:area/lab/monhan/dialog/route
