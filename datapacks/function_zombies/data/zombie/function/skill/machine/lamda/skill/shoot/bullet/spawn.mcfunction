
summon item_display ~ ~ ~ {Tags:["mob.skill","skill.lamda.bullet","chosen"],item:{id:spyglass,count:1},glow_color_override:16777215,Glowing:1b,data:{position:{x:0,y:0,z:0}}}
data modify entity @n[type=item_display,tag=skill.lamda.bullet,tag=chosen] Rotation set from entity @s Rotation
execute as @e[type=item_display,tag=skill.lamda.bullet,tag=chosen] at @s run function zombie:skill/machine/lamda/skill/shoot/bullet/spawn0
tag @e[tag=chosen] remove chosen
