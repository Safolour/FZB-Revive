
scoreboard objectives remove stat.health
scoreboard objectives remove stat.max_health
scoreboard objectives remove stat.max_health0
scoreboard objectives remove stat.player
scoreboard objectives remove stat.revive_time
scoreboard objectives remove stat.slim


scoreboard objectives remove stat.damageresisted_extra
scoreboard objectives remove stat.times_knock_down
scoreboard objectives remove stat.death
scoreboard objectives remove stat.player_revived
scoreboard objectives remove stat.win
scoreboard objectives remove stat.total_round
scoreboard objectives remove stat.best_round
scoreboard objectives remove stat.window_repaired


function player_stat:attack/reset
function player_stat:burn/reset
function player_stat:health/get_damage/reset
function player_stat:health/heal/reset
function player_stat:revive/reset

data remove storage player_stat root
data remove storage revive root