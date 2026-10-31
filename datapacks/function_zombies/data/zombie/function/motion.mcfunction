
function zombie:motion0
execute if entity @s[scores={zombie.motionx=0,zombie.motiony=0,zombie.motionz=0}] run return fail
execute unless score @s zombie.motionx = @s zombie.motionx run scoreboard players set @s zombie.motionx 0
execute unless score @s zombie.motiony = @s zombie.motiony run scoreboard players set @s zombie.motiony 0
execute unless score @s zombie.motionz = @s zombie.motionz run scoreboard players set @s zombie.motionz 0
execute if entity @s[scores={zombie.motionx=0,zombie.motiony=0,zombie.motionz=0}] run return fail

scoreboard players operation motion zombie.motionx = @s zombie.motionx
scoreboard players operation motion zombie.motiony = @s zombie.motiony
scoreboard players operation motion zombie.motionz = @s zombie.motionz
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0

execute store result entity @s Motion[0] double 0.00000025 run scoreboard players get motion zombie.motionx
execute store result entity @s Motion[1] double 0.00000025 run scoreboard players get motion zombie.motiony
execute store result entity @s Motion[2] double 0.00000025 run scoreboard players get motion zombie.motionz
execute unless entity @s[scores={path.tp_binding=1..2}] run return fail


execute as @e[type=skeleton,tag=pathfinding] if score @s zombie.uuid = uuid zombie.uuid run function zombie:motion1