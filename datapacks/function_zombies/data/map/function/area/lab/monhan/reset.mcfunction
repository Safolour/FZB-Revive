
function map:area/lab/monhan/showcase/reset
kill @e[tag=area.lab.monhan]
kill @e[tag=area.lab.showcase.display]

scoreboard objectives remove dialogue.trigger
scoreboard objectives remove monhan
scoreboard objectives remove monhan.page
scoreboard objectives remove monhan.key
scoreboard objectives remove monhan.heat
scoreboard objectives remove monhan.lucky
scoreboard objectives remove monhan.lucky_set
data remove storage monhan players
