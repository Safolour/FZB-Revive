
summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~

particle firework ~ ~1 ~ 0 0 0 0.2 40 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]

summon marker ~ ~ ~ {Tags:["mob.skill","skill.creeper.motion"]}
execute as @a[scores={stat.player=1},distance=..10,gamemode=adventure] at @s run function zombie:skill/creeper/nuclear/motion/0
kill @e[type=marker,tag=skill.creeper.motion]

scoreboard players operation match zombie.nuclearcreeper.match = @s zombie.nuclearcreeper.match
execute as @e[type=marker,tag=skill.nuclearcreeper.particle] if score @s zombie.nuclearcreeper.match = match zombie.nuclearcreeper.match run kill @s
scoreboard players reset match zombie.nuclearcreeper.match
