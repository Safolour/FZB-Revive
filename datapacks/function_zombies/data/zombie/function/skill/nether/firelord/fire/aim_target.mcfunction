execute store result score #fl.fire.angle fl.shots run random value -15..15
execute store result storage zombie fl_fire.angle double 0.1 run scoreboard players get #fl.fire.angle fl.shots
function zombie:skill/nether/firelord/fire/aim_target_apply with storage zombie fl_fire
