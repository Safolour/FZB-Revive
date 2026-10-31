
team modify waitlobby.scoreboard_line3 prefix [{translate:zb.waitlobby.scoreboard.5}]
execute store result score if waitlobby.stat run schedule clear map:waitlobby/1s_0
execute if score if waitlobby.stat matches 0 run return fail
execute if score timer waitlobby.timer matches 0 run return fail
scoreboard players set timer waitlobby.timer 0
schedule clear map:waitlobby/1s_0
schedule clear map:waitlobby/1s
title @a[scores={system.room=3}] reset
title @a[scores={system.room=3}] times 0 60 20
title @a[scores={system.room=3}] title [{translate:zb.waitlobby.title.2}]
tellraw @a[scores={system.room=3}] [{translate:zb.waitlobby.tellraw.4}]
execute as @a[scores={system.room=3..}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 2 1