
execute if entity @s[scores={zombie.motionx1=0,zombie.motiony1=0,zombie.motionz1=0}] run return fail
execute unless score @s zombie.motionx1 = @s zombie.motionx1 run scoreboard players set @s zombie.motionx1 0
execute unless score @s zombie.motiony1 = @s zombie.motiony1 run scoreboard players set @s zombie.motiony1 0
execute unless score @s zombie.motionz1 = @s zombie.motionz1 run scoreboard players set @s zombie.motionz1 0
execute if entity @s[scores={zombie.motionx1=0,zombie.motiony1=0,zombie.motionz1=0}] run return fail

scoreboard players operation motion zombie.motionx1 = @s zombie.motionx1
scoreboard players operation motion zombie.motiony1 = @s zombie.motiony1
scoreboard players operation motion zombie.motionz1 = @s zombie.motionz1
scoreboard players set @s zombie.motionx1 0
scoreboard players set @s zombie.motiony1 0
scoreboard players set @s zombie.motionz1 0

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get motion zombie.motionx1
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get motion zombie.motiony1
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get motion zombie.motionz1
execute unless entity @s[scores={path.tp_binding=1..2}] run return fail


execute as @e[type=skeleton,tag=pathfinding] if score @s zombie.uuid = uuid zombie.uuid run function zombie:motion2