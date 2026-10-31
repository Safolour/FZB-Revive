# 数字照录像：§4 + 整数 + “.0”，后面的 °C 来自 zb.area.temperature.display.1
execute unless entity @e[type=text_display,tag=area.lab.temperature.display.value,limit=1] run return 0
execute store result storage map temperature_display.t int 1 run scoreboard players get temperature0 area.temperature
function map:area/lab/temperature/display/update0 with storage map temperature_display
data remove storage map temperature_display
playsound block.note_block.bit ambient @a 290 93.5 165.5 1.5 2
