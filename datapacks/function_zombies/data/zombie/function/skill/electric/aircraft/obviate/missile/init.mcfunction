
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.obviate.missile","chosen"],block_state:{Name:"purple_stained_glass"},glow_color_override:15841791,Glowing:1b,brightness:{sky:15,block:15}}
execute as @n[type=block_display,tag=chosen] at @s run function zombie:skill/electric/aircraft/obviate/missile/get_position0
data merge entity @n[type=block_display,tag=skill.obviate.missile,tag=chosen] {transformation:{translation:[-0.15,-0.15,-0.15],scale:[0.3,0.3,0.3],left_rotation:[0.3,0.3,0.3,0.7]}}
data modify entity @n[type=block_display,tag=skill.obviate.missile,tag=chosen] Rotation set from entity @s Rotation
tag @n[type=block_display,tag=chosen] remove chosen