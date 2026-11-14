# 09/30 + 10/20: two eyes, 3.5 degrees per tick, block collision.
$tp @s ~ ~ ~ $(yaw) 34
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^-1 ^9.391238571 ^0.79335334 rotated ~ 34 run function zombie:skill/creation/titan/scatter/ray
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^1 ^9.391238571 ^0.79335334 rotated ~ 34 run function zombie:skill/creation/titan/scatter/ray
