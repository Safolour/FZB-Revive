scoreboard players set @s setting.dps_clock 0
execute unless score @s setting.dps matches 1.. run return 0
scoreboard players operation #whole setting.dps = @s setting.dps
scoreboard players operation #whole setting.dps /= #ten setting.dps
scoreboard players operation #frac setting.dps = @s setting.dps
scoreboard players operation #frac setting.dps %= #ten setting.dps
execute store result storage mainlobby:setting dummy.report.whole int 1 run scoreboard players get #whole setting.dps
execute store result storage mainlobby:setting dummy.report.frac int 1 run scoreboard players get #frac setting.dps
scoreboard players operation #whole setting.dps_total = @s setting.dps_total
scoreboard players operation #whole setting.dps_total /= #ten setting.dps
scoreboard players operation #frac setting.dps_total = @s setting.dps_total
scoreboard players operation #frac setting.dps_total %= #ten setting.dps
execute store result storage mainlobby:setting dummy.report.total int 1 run scoreboard players get #whole setting.dps_total
execute store result storage mainlobby:setting dummy.report.total_frac int 1 run scoreboard players get #frac setting.dps_total
function mainlobby:setting/dummy/message with storage mainlobby:setting dummy.report
scoreboard players set @s setting.dps 0

