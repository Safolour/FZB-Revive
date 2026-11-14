scoreboard players operation match zombie.nether.ashes.meteor.match = @s zombie.nether.ashes.meteor.match

execute as @e[type=strider,tag=skill.meteor] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target

tp @e[type=strider,tag=target] ~ ~ ~ ~ ~

tag @e[type=strider,tag=target] remove target
scoreboard players reset match zombie.nether.ashes.meteor.match


execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute if entity @a[tag=target,distance=..10] run effect give @s slowness 1 255 true


execute if entity @a[tag=target,distance=..20] run scoreboard players add @s zombie.nether.ashes.meteor.skill_timer 1
tag @a[tag=target] remove target


execute if score @s zombie.nether.ashes.meteor.skill_timer matches ..150 store result score random zombie.random run random value 0..5
execute if score @s zombie.nether.ashes.meteor.skill_timer matches ..150 if score random zombie.random matches 0 run scoreboard players add @s zombie.nether.ashes.meteor.skill_timer 3

execute unless score @s zombie.nether.ashes.meteor.skill_timer = @s zombie.nether.ashes.meteor.skill_timer run scoreboard players set @s zombie.nether.ashes.meteor.skill_timer 0
execute if score @s zombie.nether.ashes.meteor.skill_timer matches 0..200 run return 0
scoreboard players set @s zombie.nether.ashes.meteor.skill_timer 0

execute unless score round game.state matches 40 run particle witch ~ ~2 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle witch ~ ~2 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle witch ~ ~2 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 0
execute unless score round game.state matches 40 run particle flash ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=1}]

summon marker ~ ~17 ~ {Tags:["mob.skill","skill.meteor.0","chosen"]}

execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target
execute as @n[type=marker,tag=chosen] at @s run tp @s ~ ~ ~ facing entity @a[tag=target,limit=1]
tag @a[tag=target] remove target

summon block_display ~ ~17 ~ {Tags:["mob.skill","skill.meteor.1","chosen"],block_state:{Name:magma_block},transformation:{left_rotation:{angle:45,axis:[1,0,0]},right_rotation:{angle:45,axis:[0,0,1]},scale:[1.5,1.5,1.5],translation:[0.25,0,-1]},brightness:{block:15,sky:0}}
#summon block_display ~ ~17 ~ {Tags:["mob.skill","skill.meteor.2","chosen"],block_state:{Name:fire},transformation:{left_rotation:{angle:30,axis:[1,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[1,2,1],translation:[-0.5,0,-0.5]},brightness:{block:15,sky:0}}


scoreboard players add @e[type=marker,tag=skill.meteor.0] zombie.nether.ashes.meteor.match 1
scoreboard players add @e[type=block_display,tag=skill.meteor.1] zombie.nether.ashes.meteor.match 1
scoreboard players add @e[type=block_display,tag=skill.meteor.2] zombie.nether.ashes.meteor.match 1

tag @e[type=marker,tag=chosen] remove chosen
tag @e[type=block_display,tag=chosen] remove chosen
