
scoreboard players remove @s powerup.timer 1

execute if entity @s[scores={powerup.timer=200}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=180}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=160}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=140}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=120}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=100}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=90}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=80}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=70}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=60}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=50}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=40}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=30}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=20}] run function map:powerup/name_color with entity @s data
execute if entity @s[scores={powerup.timer=10}] run function map:powerup/name_color with entity @s data

execute at @s positioned ~-0.5 ~-1 ~-0.5 if entity @a[dx=0,dz=0,dy=2,scores={stat.player=1}] run function map:powerup/pickup with entity @s data

execute if entity @s[scores={powerup.timer=0..}] run return fail

kill @s