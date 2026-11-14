# Uniform world yaw and pitch; positive pitch points downward.
execute store result score #eclipse.scatter_yaw fl.shots run random value -1800..1799
execute store result score #eclipse.scatter_pitch fl.shots run random value -100..900
execute store result storage zombie fl_eclipse_shot.yaw double 0.1 run scoreboard players get #eclipse.scatter_yaw fl.shots
execute store result storage zombie fl_eclipse_shot.pitch double 0.1 run scoreboard players get #eclipse.scatter_pitch fl.shots
function zombie:skill/nether/firelord/p3/eclipse/shoot_scatter_apply with storage zombie fl_eclipse_shot
