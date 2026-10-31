function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spawn/0

execute as @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/spread_end

execute at @s run kill @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position,tag=!skill.ultimatechaoszombie.tnt.position3,distance=..2]

tag @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position,limit=1,sort=random] add skill.ultimatechaoszombie.tnt.position.end

execute as @s at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/throw/init

kill @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position]
