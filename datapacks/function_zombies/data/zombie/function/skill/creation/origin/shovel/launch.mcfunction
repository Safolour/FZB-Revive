scoreboard players operation #owner origin.owner = @s origin.owner
# 临时散布：X/Z±1、第一帧载具Y+4.3..5.7；不声称原随机分布。
execute store result storage origin_tool spawn.x float 0.1 run random value -10..10
execute store result storage origin_tool spawn.z float 0.1 run random value -10..10
execute store result storage origin_tool spawn.y float 0.1 run random value 43..57
function zombie:skill/creation/origin/shovel/spawn with storage origin_tool spawn
