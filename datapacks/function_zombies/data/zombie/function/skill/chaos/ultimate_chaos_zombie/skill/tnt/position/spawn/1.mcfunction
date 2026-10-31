execute unless block ~ ~ ~ #weapon:gun_penetrable run return 0
execute if entity @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position,distance=..0.1] run return 0
summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.tnt.position","skill.ultimatechaoszombie.tnt.position1"]}
