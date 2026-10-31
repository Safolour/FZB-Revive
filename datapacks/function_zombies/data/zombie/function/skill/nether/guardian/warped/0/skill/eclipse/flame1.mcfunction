
summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.flame","chosen"]}
execute at @s run tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @p[scores={stat.player=1},distance=..10]
$execute as @n[type=marker,tag=chosen] at @s run tp @s ^$(x) ^$(y) ^$(z) ~$(m) ~$(n)
summon block_display ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.eclipse.flame.0","chosen"],block_state:{Name:soul_fire},transformation:{scale:[0.5,0.8,0.5],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},translation:[-0.25,0,-0.25]},brightness:{block:15,sky:0}}
scoreboard players add @e[type=marker,tag=skill.warpedguardian.eclipse.flame] zombie.nether.guardian.eclipse.flame.match 1
scoreboard players add @e[type=block_display,tag=skill.warpedguardian.eclipse.flame.0] zombie.nether.guardian.eclipse.flame.match 1
tag @e[type=marker,tag=chosen] remove chosen
tag @e[type=block_display,tag=chosen] remove chosen

