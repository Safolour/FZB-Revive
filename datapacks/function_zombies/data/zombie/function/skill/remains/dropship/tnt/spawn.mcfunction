
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.dropship.tnt"],block_state:{Name:tnt},transformation:{translation:[0.5,0,-2],scale:[2,2,2],left_rotation:{angle:45,axis:[1,0,0]},right_rotation:{angle:45,axis:[0,0,1]}}}

scoreboard players add @e[type=block_display,tag=skill.dropship.tnt] zombie.remains.dropship.tntmatch 1
scoreboard players add @e[type=ghast,tag=skill.dropship] zombie.remains.dropship.tntmatch 1
