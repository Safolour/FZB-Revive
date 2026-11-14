execute unless score @s system.room matches 2 run return run function mainlobby:setting/dummy/finish
scoreboard players add @s setting.dps_ticks 1
scoreboard players add @s setting.dps_clock 1
scoreboard players add @s setting.dps_idle 1
execute if score @s setting.dps_clock matches 20.. run function mainlobby:setting/dummy/report
execute if score @s setting.dps_idle matches 60.. run function mainlobby:setting/dummy/finish

