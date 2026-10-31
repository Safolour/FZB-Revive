summon marker ^ ^ ^ {Tags:["mob.skill","skill.lamda","skill.lamda.hitground.line","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ ~ 0

scoreboard players set count zombie.number 0
execute as @e[type=marker,tag=chosen] at @s run function zombie:skill/machine/lamda/skill/hit_ground/line/loop

scoreboard players reset count zombie.number
kill @e[type=marker,tag=chosen]
