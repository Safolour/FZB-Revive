# 09/30 + 10/20: two eyes, 3.5 degrees per tick, block collision.
$tp @s ~ ~ ~ $(yaw) 79.5
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^-1 ^9.007453848 ^0.121869343 rotated ~ 79.5 run function zombie:skill/creation/titan/scatter/ray
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^1 ^9.007453848 ^0.121869343 rotated ~ 79.5 run function zombie:skill/creation/titan/scatter/ray
