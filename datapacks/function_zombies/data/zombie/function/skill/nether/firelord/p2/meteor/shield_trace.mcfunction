# @s is the moving rock, execution position is its previous location.
execute facing entity @s feet if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/meteor/shield_collision
execute facing entity @s feet positioned ^ ^ ^0.25 if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/meteor/shield_collision
execute facing entity @s feet positioned ^ ^ ^0.5 if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/meteor/shield_collision
execute facing entity @s feet positioned ^ ^ ^0.75 if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/meteor/shield_collision
execute facing entity @s feet positioned ^ ^ ^1 if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/meteor/shield_collision
execute at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/meteor/shield_collision
