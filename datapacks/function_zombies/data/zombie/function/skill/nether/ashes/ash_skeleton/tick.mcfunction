
scoreboard players add @s zombie.nether.ashes.ashskeleton.skill_timer 1
execute store result score random zombie.random run random value 0..5
execute if score random zombie.random matches 0..1 run scoreboard players add @s zombie.nether.ashes.ashskeleton.skill_timer 3
scoreboard players reset random zombie.random
execute if score @s zombie.nether.ashes.ashskeleton.skill_timer matches ..140 run return 0

scoreboard players set @s zombie.nether.ashes.ashskeleton.skill_timer 0
execute on target if entity @s[type=player,scores={stat.player=1},distance=..20] run tag @s add target
execute unless entity @a[tag=target] run return 0

execute if entity @a[tag=target,distance=..10] run effect give @s slowness 1 255 true

execute unless score round game.state matches 40 run particle ash ~ ~1.5 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1.5 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1.5 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
playsound entity.allay.hurt record @a ~ ~ ~ 1.5 2
playsound entity.arrow.shoot record @a ~ ~ ~

summon marker ~ ~ ~ {Tags:["mob.skill","skill.ashskeleton","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @a[tag=target,limit=1]
execute as @e[type=marker,tag=chosen] run tp @s ~ ~1.9 ~ ~ ~
tag @e[type=marker,tag=chosen] remove chosen

summon marker ~ ~ ~ {Tags:["mob.skill","skill.ashskeleton","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @a[tag=target,limit=1]
execute as @e[type=marker,tag=chosen] run tp @s ~ ~1.9 ~ ~-10 ~
tag @e[type=marker,tag=chosen] remove chosen

summon marker ~ ~ ~ {Tags:["mob.skill","skill.ashskeleton","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @a[tag=target,limit=1]
execute as @e[type=marker,tag=chosen] run tp @s ~ ~1.9 ~ ~10 ~
tag @e[type=marker,tag=chosen] remove chosen

tag @a[tag=target] remove target




