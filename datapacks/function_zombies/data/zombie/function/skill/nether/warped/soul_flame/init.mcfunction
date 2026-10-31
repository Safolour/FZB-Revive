
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.soulflame.0","chosen"],block_state:{Name:soul_fire},transformation:{scale:[0.6,1.2,0.01],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},translation:[-0.3,0,0]},brightness:{block:15,sky:0},billboard:"vertical"}
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.soulflame.1","chosen"],block_state:{Name:soul_fire},transformation:{scale:[0.55,1.1,0.01],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},translation:[-0.25,0,0]},brightness:{block:15,sky:0},billboard:"vertical"}
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.soulflame.2","chosen"],block_state:{Name:soul_fire},transformation:{scale:[0.5,1,0.01],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},translation:[-0.2,0,0]},brightness:{block:15,sky:0},billboard:"vertical"}
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.soulflame.3","chosen"],block_state:{Name:soul_fire},transformation:{scale:[0.45,0.9,0.01],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},translation:[-0.2,0,0]},brightness:{block:15,sky:0},billboard:"vertical"}

scoreboard players add @e[type=block_display,tag=skill.soulflame.0] zombie.nether.warped.soulflame.match 1
scoreboard players add @e[type=block_display,tag=skill.soulflame.1] zombie.nether.warped.soulflame.match 1
scoreboard players add @e[type=block_display,tag=skill.soulflame.2] zombie.nether.warped.soulflame.match 1
scoreboard players add @e[type=block_display,tag=skill.soulflame.3] zombie.nether.warped.soulflame.match 1

scoreboard players add @e[type=zombie,tag=skill.soulflame] zombie.nether.warped.soulflame.match 1
scoreboard players set @s zombie.nether.warped.soulflame.match 1

tag @e[type=block_display,tag=chosen] remove chosen
