particle flash ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
playsound entity.illusioner.cast_spell record @a ~ ~ ~ 2 1
playsound entity.zombie_horse.hurt record @a ~ ~ ~ 2 0

summon block_display ~ ~1.8 ~ {Tags:["mob.skill","skill.ashwizard","chosen"],block_state:{Name:"black_stained_glass"},brightness:{sky:15,block:15},Glowing:1b,glow_color_override:16101887}
execute as @n[type=block_display,tag=chosen] at @s run function zombie:skill/nether/ashes/ash_wizard/missile/get_position
data merge entity @n[type=block_display,tag=skill.ashwizard,tag=chosen] {transformation:{translation:[-0.15,-0.15,-0.15],scale:[0.3,0.3,0.3],left_rotation:[0.3,0.3,0.3,0.7]}}
data modify entity @n[type=block_display,tag=skill.ashwizard,tag=chosen] Rotation set from entity @s Rotation
tag @n[type=block_display,tag=chosen] remove chosen
