tp @s ~ ~ ~ facing entity @p[scores={stat.player=1},gamemode=adventure]
scoreboard players add @s zombie.remains.blaze.skill_timer 1
execute store result score random zombie.random run random value 0..9
execute if score random zombie.random matches 0 run scoreboard players add @s zombie.remains.blaze.skill_timer 3
execute if score random zombie.random matches 1 run scoreboard players remove @s zombie.remains.blaze.skill_timer 3
execute unless score @s zombie.remains.blaze.skill_timer matches 100.. run return 0
scoreboard players set @s zombie.remains.blaze.skill_timer 0

playsound entity.blaze.shoot record @a ~ ~ ~ 1.5 1 1
summon marker ~ ~1.2 ~ {Tags:["mob.skill","skill.blaze.fire.0","chosen"]}
tp @e[type=marker,tag=chosen,limit=1] ~ ~1.2 ~ facing entity @a[scores={stat.player=1},limit=1,sort=random]
summon block_display ~ ~1.2 ~ {Tags:["mob.skill","skill.blaze.fire.1","chosen"],block_state:{Name:fire},transformation:{scale:[0.5,0.8,0.5],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},translation:[-0.25,0,-0.25]},brightness:{block:15,sky:0}}

scoreboard players add @e[type=marker,tag=skill.blaze.fire.0] zombie.remains.blaze.fire.match 1
scoreboard players add @e[type=block_display,tag=skill.blaze.fire.1] zombie.remains.blaze.fire.match 1

tag @e[type=marker,tag=chosen] remove chosen
tag @e[type=block_display,tag=chosen] remove chosen
