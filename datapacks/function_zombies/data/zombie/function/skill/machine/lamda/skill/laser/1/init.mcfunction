
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.lamda.laser.1","chosen"],block_state:{Name:red_stained_glass},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[1,1,40],translation:[-0.5,-0.5,0]},brightness:{block:15,sky:0}}

tp @n[type=block_display,tag=chosen] ^ ^1.5 ^1 ~ ~

scoreboard players operation @n[type=block_display,tag=chosen] zombie.lamda.match = @s zombie.lamda.match

tag @e[type=block_display,tag=chosen] remove chosen
