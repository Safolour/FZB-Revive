execute unless block ~ ~ ~ #weapon:gun_penetrable run return 0
execute if entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position,distance=..0.1] run return 0
summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.teleport.position","skill.ultimatechaoszombie.teleport.position1"]}
