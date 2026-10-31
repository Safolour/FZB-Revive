
scoreboard objectives add round dummy
scoreboard objectives add round.timer dummy
scoreboard objectives add round.spawn dummy
 scoreboard players set tick round 0
 scoreboard players set default.spawn_range round 32
 scoreboard players set end_time.win round 300
 scoreboard players set end_time.gameover round 200
 scoreboard players set complete round 0
 scoreboard players set debug round 0
 scoreboard players set bonusgold_spawn round 0



function map:round/mob_spawn_list/lab