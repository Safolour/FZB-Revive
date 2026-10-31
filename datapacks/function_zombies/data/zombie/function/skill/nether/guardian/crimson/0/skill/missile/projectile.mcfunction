
summon block_display ^ ^ ^1 {Tags:["mob.skill","skill.crimsonguardian.missile","chosen"],Glowing:1b,glow_color_override:10354688,block_state:{Name:"cyan_stained_glass"},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.5,0.5,0.5],translation:[-0.25,-0.25,-0.25]}}

execute if score stat zombie.nether.guardian matches 1 positioned ~ ~1.25 ~ run tp @n[type=block_display,tag=chosen] ~ ~ ~ facing ^ ^ ^1
execute if score stat zombie.nether.guardian matches 5 positioned ~ ~0.7 ~ run tp @n[type=block_display,tag=chosen] ~ ~ ~ facing ^ ^ ^1
execute if score stat zombie.nether.guardian matches 7 positioned ~ ~0.7 ~ run tp @n[type=block_display,tag=chosen] ~ ~ ~ facing ^ ^ ^1

tag @e[type=block_display,tag=chosen] remove chosen
