scoreboard players add @s zombie.nether.crimson.crimsonguardianzombie.skill_timer 1
execute store result score random zombie.random run random value 0..5
execute if score random zombie.random matches 0 run scoreboard players add @s zombie.nether.crimson.crimsonguardianzombie.skill_timer 3
scoreboard players reset random zombie.random
execute if score @s zombie.nether.crimson.crimsonguardianzombie.skill_timer matches 100..104 run effect give @s slowness 1 255 true
execute if score @s zombie.nether.crimson.crimsonguardianzombie.skill_timer matches ..120 run return 0

execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute unless entity @a[tag=target] run return 0
scoreboard players set @s zombie.nether.crimson.crimsonguardianzombie.skill_timer 0
particle flash ~ ~1.8 ~ 0 0 0 0 1 force @a[scores={particle=0}]
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 2
particle flame ~ ~1.8 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
playsound entity.guardian.attack record @a ~ ~ ~ 1 1
summon marker ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardianzombie.laser","chosen"]}
execute as @e[type=marker,tag=chosen] positioned ~ ~1.8 ~ at @s run tp @s ~ ~ ~ facing entity @a[tag=target,limit=1]
tp @e[type=marker,tag=chosen] ~ ~1.8 ~
tag @e[type=marker,tag=chosen] remove chosen
tag @a[tag=target] remove target
