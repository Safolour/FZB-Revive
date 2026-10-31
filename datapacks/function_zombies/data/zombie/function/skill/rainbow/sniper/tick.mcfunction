
scoreboard players remove @s[scores={zombie.rainbow=1..}] zombie.rainbow 1
execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute if entity @a[tag=target,distance=..25] run effect give @s slowness 1 255 true
execute unless entity @a[tag=target,distance=..28] run return run tag @a[tag=target] remove target
scoreboard players add @s zombie.rainbow 2
execute store result score random zombie.random run random value 0..4
execute if score @s zombie.rainbow matches ..140 if score random zombie.random matches 0 run scoreboard players add @s zombie.rainbow 2
scoreboard players reset random zombie.random
execute if score @s zombie.rainbow matches 150 run function zombie:skill/rainbow/sniper/shoot
execute if score @s zombie.rainbow matches 150.. run scoreboard players set @s zombie.rainbow 0
tag @a[tag=target] remove target
