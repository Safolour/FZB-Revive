function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spawn/0

execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread_end
execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread
function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/position/spread_end

execute as @a[scores={stat.player=1}] at @s run tag @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position,distance=..3] add skill.ultimatechaoszombie.teleport.position3

execute at @s run kill @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position,tag=!skill.ultimatechaoszombie.teleport.position3,distance=..6]

tag @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position,limit=1,sort=random] add skill.ultimatechaoszombie.teleport.position.end

tp @s ~ ~ ~ facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position.end,limit=1]
data modify entity @s data.teleport.position.x set from entity @n[type=marker,tag=skill.ultimatechaoszombie.teleport.position,tag=skill.ultimatechaoszombie.teleport.position.end] Pos[0]
data modify entity @s data.teleport.position.y set from entity @n[type=marker,tag=skill.ultimatechaoszombie.teleport.position,tag=skill.ultimatechaoszombie.teleport.position.end] Pos[1]
data modify entity @s data.teleport.position.z set from entity @n[type=marker,tag=skill.ultimatechaoszombie.teleport.position,tag=skill.ultimatechaoszombie.teleport.position.end] Pos[2]
kill @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position]

data merge entity @s {NoAI:1b}

team join zombie.chaos.ultimate_chaos_zombie.1 @s
effect give @s glowing infinite 0 true
