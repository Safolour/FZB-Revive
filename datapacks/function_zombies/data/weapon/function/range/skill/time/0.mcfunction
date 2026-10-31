
scoreboard players operation time0 weapon.state = time weapon.state
scoreboard players operation time1 weapon.state = time0 weapon.state
scoreboard players operation time2 weapon.state = time0 weapon.state

scoreboard players operation time0 weapon.state /= 20 number
scoreboard players operation time1 weapon.state %= 20 number
scoreboard players operation time1 weapon.state *= 5 number
scoreboard players operation time2 weapon.state %= 10 number

execute store result storage weapon root.time0 int 1 run scoreboard players get time0 weapon.state
execute store result storage weapon root.time1 int 1 run scoreboard players get time1 weapon.state
execute store result storage weapon root.time2 int 1 run scoreboard players get time2 weapon.state

function weapon:range/skill/time/1 with storage weapon root