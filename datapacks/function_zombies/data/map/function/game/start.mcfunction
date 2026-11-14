scoreboard players set #invalid fzb.attr 0
execute unless score #atk fzb.attr matches 100 run scoreboard players set #invalid fzb.attr 1
execute unless score #def fzb.attr matches 100 run scoreboard players set #invalid fzb.attr 1

#say start

scoreboard players set second game.timer 0
scoreboard players set minute game.timer 0
scoreboard players set hour game.timer 0
scoreboard players set in_game0 lobby.info -1
schedule function map:game/1s 1s replace
scoreboard objectives setdisplay list zombie.kill

execute as @e[tag=train] run function system:death

execute if score type map matches 3 run function map:game/start_ee
execute if score type map matches 4 run function map:game/start_lab
scoreboard players set #scoreboard_next game.player 0
execute as @a[scores={system.room=3}] at @s run function map:game/start0
# 清掉测试/上一局残留的“跳过结算”调试标志（fzbtest:game/freeze 会设成 1）
scoreboard players set debug round 0
scoreboard players set round game.state 1
function map:round/start_round/0
function map:game/scoreboard/load0
scoreboard objectives setdisplay sidebar game.scoreboard

scoreboard players set #game_active round 1
scoreboard players set tick round 1
