

scoreboard players operation time0 powerup.timer = time powerup.timer
scoreboard players operation time1 powerup.timer = time powerup.timer

scoreboard players operation time0 powerup.timer /= 20 number
scoreboard players operation time1 powerup.timer %= 20 number
scoreboard players operation time1 powerup.timer /= 2 number

execute store result storage powerup root.time.0 int 1 run scoreboard players get time0 powerup.timer
execute store result storage powerup root.time.1 int 1 run scoreboard players get time1 powerup.timer
function map:powerup/time0 with storage powerup root.time