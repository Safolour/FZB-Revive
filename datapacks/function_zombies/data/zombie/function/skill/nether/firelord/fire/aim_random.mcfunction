execute store result score #fl.fire.yaw fl.shots run random value -180..180
execute store result score #fl.fire.pitch fl.shots run random value -90..90
execute store result storage zombie fl_fire.yaw int 1 run scoreboard players get #fl.fire.yaw fl.shots
execute store result storage zombie fl_fire.pitch int 1 run scoreboard players get #fl.fire.pitch fl.shots
function zombie:skill/nether/firelord/fire/aim_random_apply with storage zombie fl_fire
