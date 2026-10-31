
scoreboard objectives add stat.health health [{translate:zb.player_health}]
scoreboard objectives setdisplay below_name stat.health
scoreboard objectives add stat.max_health dummy
scoreboard objectives add stat.max_health0 dummy
scoreboard objectives add stat.player dummy
scoreboard objectives add stat.revive_time dummy
 scoreboard players set default stat.revive_time 30
 scoreboard players set fast_revive stat.revive_time 10
scoreboard objectives add stat.revive_time dummy
scoreboard objectives add stat.damageresisted_extra dummy

scoreboard objectives add stat.slim dummy

scoreboard objectives add stat.times_knock_down dummy
scoreboard objectives add stat.death dummy
scoreboard objectives add stat.player_revived dummy

scoreboard objectives add stat.win dummy
scoreboard objectives add stat.total_round dummy
scoreboard objectives add stat.best_round dummy
scoreboard objectives add stat.window_repaired dummy



function player_stat:attack/load
function player_stat:burn/load
function player_stat:health/get_damage/load
function player_stat:health/heal/load
function player_stat:revive/load
