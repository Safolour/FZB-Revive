execute unless score #line_scope origin.line matches 1 store result storage origin:transition line.x int 1 run random value 290..311
execute if score #line_scope origin.line matches 1 store result storage origin:transition line.x int 1 run random value 292..359
execute store result storage origin:transition line.y int 1 run random value 92..113
execute store result storage origin:transition line.z int 1 run random value 131..171
# The final position sync supplies a random entity yaw; the local quaternion stays identical on every line.
execute store result storage origin:transition line.yaw int 1 run random value -179..180
execute store result score #line_model origin.line run random value 0..3
execute if score #line_model origin.line matches 0 run data modify storage origin:transition line.model set value "custom:line"
execute if score #line_model origin.line matches 1 run data modify storage origin:transition line.model set value "custom:line0"
execute if score #line_model origin.line matches 2 run data modify storage origin:transition line.model set value "custom:line1"
execute if score #line_model origin.line matches 3 run data modify storage origin:transition line.model set value "custom:line2"
function zombie:skill/creation/origin/transition/line_summon with storage origin:transition line
scoreboard players remove #line_count origin.line 1
execute if score #line_count origin.line matches 1.. run function zombie:skill/creation/origin/transition/line_spawn_loop
