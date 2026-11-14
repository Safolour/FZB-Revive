# 09/30 + 10/20: two eyes, 3.5 degrees per tick, block collision.
$tp @s ~ ~ ~ $(yaw) 58.5
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^-1 ^9.117052407 ^0.469471563 rotated ~ 58.5 run function zombie:skill/creation/titan/scatter/ray
scoreboard players set #scatter.step titan.cfg 0
$execute rotated $(yaw) 0 positioned ^1 ^9.117052407 ^0.469471563 rotated ~ 58.5 run function zombie:skill/creation/titan/scatter/ray
