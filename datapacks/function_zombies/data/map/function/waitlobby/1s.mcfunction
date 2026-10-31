
# 倒计时期间有人断线不会触发人数重算，这里每秒复查一次，人数不足就停表
execute store result score player_count waitlobby.stat if entity @a[scores={system.room=3}]
execute if score player_count waitlobby.stat < min_player map run return run function map:waitlobby/scoreboard/player_count
scoreboard players remove count_down waitlobby.timer 1
function map:waitlobby/scoreboard/time

execute if score count_down waitlobby.timer matches 20 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.0,with:[{score:{name:count_down,objective:waitlobby.timer},color:yellow}]}]
execute if score count_down waitlobby.timer matches 10 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.0,with:[{score:{name:count_down,objective:waitlobby.timer},color:gold}]}]
execute if score count_down waitlobby.timer matches 5 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.0,with:[{score:{name:count_down,objective:waitlobby.timer},color:red}]}]
execute if score count_down waitlobby.timer matches 4 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.0,with:[{score:{name:count_down,objective:waitlobby.timer},color:red}]}]
execute if score count_down waitlobby.timer matches 3 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.0,with:[{score:{name:count_down,objective:waitlobby.timer},color:red}]}]
execute if score count_down waitlobby.timer matches 2 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.0,with:[{score:{name:count_down,objective:waitlobby.timer},color:red}]}]
execute if score count_down waitlobby.timer matches 1 run tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw_countdown.1,with:[{score:{name:count_down,objective:waitlobby.timer},color:red}]}]


execute if score count_down waitlobby.timer matches 10 run title @a[scores={system.room=3..}] reset
execute if score count_down waitlobby.timer matches 10 run title @a[scores={system.room=3..}] times 0 60 20
execute if score count_down waitlobby.timer matches 10 run title @a[scores={system.room=3..}] title {score:{name:count_down,objective:waitlobby.timer},color:green}
execute if score count_down waitlobby.timer matches 5 run title @a[scores={system.room=3..}] reset
execute if score count_down waitlobby.timer matches 5 run title @a[scores={system.room=3..}] times 0 60 20
execute if score count_down waitlobby.timer matches 5 run title @a[scores={system.room=3..}] title {score:{name:count_down,objective:waitlobby.timer},color:yellow}
execute if score count_down waitlobby.timer matches 4 run title @a[scores={system.room=3..}] reset
execute if score count_down waitlobby.timer matches 4 run title @a[scores={system.room=3..}] times 0 60 20
execute if score count_down waitlobby.timer matches 4 run title @a[scores={system.room=3..}] title {score:{name:count_down,objective:waitlobby.timer},color:yellow}
execute if score count_down waitlobby.timer matches 3 run title @a[scores={system.room=3..}] reset
execute if score count_down waitlobby.timer matches 3 run title @a[scores={system.room=3..}] times 0 60 20
execute if score count_down waitlobby.timer matches 3 run title @a[scores={system.room=3..}] title {score:{name:count_down,objective:waitlobby.timer},color:red}
execute if score count_down waitlobby.timer matches 2 run title @a[scores={system.room=3..}] reset
execute if score count_down waitlobby.timer matches 2 run title @a[scores={system.room=3..}] times 0 60 20
execute if score count_down waitlobby.timer matches 2 run title @a[scores={system.room=3..}] title {score:{name:count_down,objective:waitlobby.timer},color:red}
execute if score count_down waitlobby.timer matches 1 run title @a[scores={system.room=3..}] reset
execute if score count_down waitlobby.timer matches 1 run title @a[scores={system.room=3..}] times 0 60 20
execute if score count_down waitlobby.timer matches 1 run title @a[scores={system.room=3..}] title {score:{name:count_down,objective:waitlobby.timer},color:red}

execute if score count_down waitlobby.timer matches 20 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1
execute if score count_down waitlobby.timer matches 10 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1
execute if score count_down waitlobby.timer matches 5 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1
execute if score count_down waitlobby.timer matches 4 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1
execute if score count_down waitlobby.timer matches 3 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1
execute if score count_down waitlobby.timer matches 2 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1
execute if score count_down waitlobby.timer matches 1 as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1

execute if score count_down waitlobby.timer matches ..0 run return run function map:waitlobby/start_game

schedule function map:waitlobby/1s 1s replace
schedule function map:waitlobby/1s_0 1s append
