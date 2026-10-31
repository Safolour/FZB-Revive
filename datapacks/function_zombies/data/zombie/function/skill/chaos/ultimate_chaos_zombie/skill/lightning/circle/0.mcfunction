summon marker 0 0 0 {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.lightning.circle","target","horizontal"]}
$execute positioned 0 0 0 run summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.lightning.circle","target","vertical"],Rotation:[$(horizontal).0f,$(vertical).0f]}

execute as @e[tag=target] at @s run tp @s ~-0.5 ~ ~-0.5

scoreboard players set count zombie.number 1

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/circle/loop

kill @e[type=marker,tag=target]
