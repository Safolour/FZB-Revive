# 09/30 + 10/20: two eyes, 3.5 degrees per tick, block collision.
$tp @s ~ ~ ~ $(yaw) 83
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^-1 ^9.001865202 ^0.06104854 rotated ~ 83 run function zombie:skill/creation/titan/scatter/ray
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^1 ^9.001865202 ^0.06104854 rotated ~ 83 run function zombie:skill/creation/titan/scatter/ray
