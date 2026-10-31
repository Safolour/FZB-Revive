
execute if score distance weapon.state matches ..2 run return fail
$execute rotated ~21.176470588235293 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~42.35294117647059 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~63.529411764705884 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~84.70588235294117 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~105.88235294117646 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~127.05882352941177 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~148.23529411764704 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~169.41176470588235 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~190.58823529411765 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~211.76470588235293 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~232.94117647058823 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~254.11764705882354 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~275.29411764705884 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~296.4705882352941 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~317.6470588235294 ~ run particle witch ^ ^0.25 ^$(distance)
$execute rotated ~338.8235294117647 ~ run particle witch ^ ^0.25 ^$(distance)

$execute as @e[tag=mob,tag=hitable,tag=!cantgyro,distance=0.25..$(distance)] at @s facing entity 00000001-0000-0001-0000-000100000001 eyes positioned ^ ^ ^0.5 if block ^ ^ ^1 #weapon:gun_penetrable run tp @s ~ ~ ~
execute if score distance weapon.state matches ..5 run return fail

$execute rotated ~21.176470588235293 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~42.35294117647059 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~63.529411764705884 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~84.70588235294117 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~105.88235294117646 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~127.05882352941177 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~148.23529411764704 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~169.41176470588235 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~190.58823529411765 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~211.76470588235293 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~232.94117647058823 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~254.11764705882354 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~275.29411764705884 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~296.4705882352941 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~317.6470588235294 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
$execute rotated ~338.8235294117647 ~ positioned ^ ^ ^$(distance0) run function weapon:range/skill/skill/gyrokineticwand/particle/0_0
