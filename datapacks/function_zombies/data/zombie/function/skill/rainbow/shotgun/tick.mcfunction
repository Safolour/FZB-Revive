
scoreboard players remove @s[scores={zombie.rainbow=1..}] zombie.rainbow 1
execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute if entity @a[tag=target,distance=..3] run effect give @s slowness 1 255 true
execute unless entity @a[tag=target,distance=..5] run return run tag @a[tag=target] remove target
scoreboard players add @s zombie.rainbow 2
execute if score @s zombie.rainbow matches 60 run function zombie:skill/rainbow/shotgun/shoot
execute if score @s zombie.rainbow matches 60.. run scoreboard players set @s zombie.rainbow 0
tag @a[tag=target] remove target
