# Executor: the attributed player, #damage setting.dps is the positive hit.
execute unless score @s setting.dps_run matches 1 run function mainlobby:setting/dummy/start
scoreboard players operation @s setting.dps += #damage setting.dps
scoreboard players operation @s setting.dps_total += #damage setting.dps
scoreboard players set @s setting.dps_idle 0
scoreboard players operation @s setting.dps_span = @s setting.dps_ticks
scoreboard players add @s setting.dps_span 1

