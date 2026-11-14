execute as @e[type=zombie,tag=setting.dummy] run function system:death
scoreboard objectives remove setting.dps
scoreboard objectives remove setting.dps_total
scoreboard objectives remove setting.dps_ticks
scoreboard objectives remove setting.dps_clock
scoreboard objectives remove setting.dps_idle
scoreboard objectives remove setting.dps_span
scoreboard objectives remove setting.dps_owner
scoreboard objectives remove setting.dps_run
data remove storage mainlobby:setting dummy
