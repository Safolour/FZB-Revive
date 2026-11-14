# Independent uniform yaw and pitch offsets, in tenths of a degree.
execute store result score #eclipse.aim_yaw fl.shots run random value -80..80
execute store result score #eclipse.aim_pitch fl.shots run random value -80..80
execute store result storage zombie fl_eclipse_shot.yaw double 0.1 run scoreboard players get #eclipse.aim_yaw fl.shots
execute store result storage zombie fl_eclipse_shot.pitch double 0.1 run scoreboard players get #eclipse.aim_pitch fl.shots
function zombie:skill/nether/firelord/p3/eclipse/shoot_aimed_apply with storage zombie fl_eclipse_shot
