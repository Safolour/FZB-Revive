execute unless score @s setting.dps_run matches 1 run return 0
# Active span excludes the final three-second pause; short tests use one second.
scoreboard players operation #span setting.dps_span = @s setting.dps_span
execute if score #span setting.dps_span matches ..19 run scoreboard players set #span setting.dps_span 20
# Divide before multiplying: preserve precision while avoiding overflow in long tests.
scoreboard players operation #avg setting.dps = @s setting.dps_total
scoreboard players operation #avg setting.dps /= #span setting.dps_span
scoreboard players operation #avg setting.dps *= #twenty setting.dps
scoreboard players operation #rem setting.dps = @s setting.dps_total
scoreboard players operation #rem setting.dps %= #span setting.dps_span
scoreboard players operation #rem setting.dps *= #twenty setting.dps
scoreboard players operation #rem setting.dps /= #span setting.dps_span
scoreboard players operation #avg setting.dps += #rem setting.dps
scoreboard players operation #whole setting.dps = #avg setting.dps
scoreboard players operation #whole setting.dps /= #ten setting.dps
scoreboard players operation #frac setting.dps = #avg setting.dps
scoreboard players operation #frac setting.dps %= #ten setting.dps
execute store result storage mainlobby:setting dummy.finish.whole int 1 run scoreboard players get #whole setting.dps
execute store result storage mainlobby:setting dummy.finish.frac int 1 run scoreboard players get #frac setting.dps
scoreboard players operation #whole setting.dps_total = @s setting.dps_total
scoreboard players operation #whole setting.dps_total /= #ten setting.dps
scoreboard players operation #frac setting.dps_total = @s setting.dps_total
scoreboard players operation #frac setting.dps_total %= #ten setting.dps
execute store result storage mainlobby:setting dummy.finish.total int 1 run scoreboard players get #whole setting.dps_total
execute store result storage mainlobby:setting dummy.finish.total_frac int 1 run scoreboard players get #frac setting.dps_total
function mainlobby:setting/dummy/summary with storage mainlobby:setting dummy.finish
scoreboard players set @s setting.dps_run 0
scoreboard players set @s setting.dps 0
scoreboard players set @s setting.dps_total 0
scoreboard players set @s setting.dps_ticks 0
scoreboard players set @s setting.dps_clock 0
scoreboard players set @s setting.dps_idle 0
scoreboard players set @s setting.dps_span 0

