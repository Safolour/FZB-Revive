execute as @e[type=marker,tag=horizontal,tag=target] at @s run tp @s ~ ~ ~ ~10 ~

execute as @e[type=marker,tag=horizontal,tag=target] at @s run summon marker ^ ^ ^1 {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.lightning.circle","target1"]}

execute store result storage zombie particle.x float 0.0001 run data get entity @e[tag=target1,limit=1] Pos[0] 10000
execute store result storage zombie particle.y float 0.0001 run data get entity @e[tag=target1,limit=1] Pos[1] 10000
execute store result storage zombie particle.z float 0.0001 run data get entity @e[tag=target1,limit=1] Pos[2] 10000
kill @e[type=marker,tag=target1]

execute as @e[type=marker,tag=vertical,tag=target] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/circle/1 with storage zombie particle

execute store result storage zombie particle.x1 float 0.0001 run data get entity @e[tag=target2,limit=1] Pos[0] 10000
execute store result storage zombie particle.y1 float 0.0001 run data get entity @e[tag=target2,limit=1] Pos[1] 10000
execute store result storage zombie particle.z1 float 0.0001 run data get entity @e[tag=target2,limit=1] Pos[2] 10000
kill @e[type=marker,tag=target2]

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/circle/particle with storage zombie particle

scoreboard players add count zombie.number 1
execute if score count zombie.number matches ..35 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/circle/loop
