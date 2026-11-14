# 09/30 + 10/20: two eyes, 3.5 degrees per tick, block collision.
$tp @s ~ ~ ~ $(yaw) 55
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^-1 ^9.147359836 ^0.522498565 rotated ~ 55 run function zombie:skill/creation/titan/scatter/ray
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^1 ^9.147359836 ^0.522498565 rotated ~ 55 run function zombie:skill/creation/titan/scatter/ray
