
execute at @s unless entity @n[type=marker,tag=spawner,tag=portal,distance=..5] run scoreboard players set @s path.in_window 0

execute if score @s path.timer matches 0.. run return run scoreboard players remove @s path.timer 1
scoreboard players set @s path.timer 60
execute if entity @s[tag=!portalmotion] run return fail
execute store result storage path root.motion.min int 1 run scoreboard players get @s zombie.portalmotion_min
execute store result storage path root.motion.max int 1 run scoreboard players get @s zombie.portalmotion_max
function map:path/tick1_3 with storage path root.motion
data remove storage path root
data modify entity @s Motion[1] set value 0.1
execute store result entity @s Motion[2] float 0.0175 run scoreboard players get motion path
execute at @s run tp @s ~ ~ ~ 0 0