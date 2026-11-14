summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.firelord.fire","skill.firelord.fire.new"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:fire"},brightness:{block:15,sky:15},transformation:{translation:[-0.25f,-0.4f,-0.25f],scale:[0.5f,0.8f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}]}
tp @n[type=armor_stand,tag=skill.firelord.fire.new,distance=..1] ~ ~ ~ ~ ~
execute if entity @s[type=marker,tag=firelord.eclipse.ball] run tag @n[type=armor_stand,tag=skill.firelord.fire.new,distance=..1] add firelord.eclipse.fire
tag @n[type=armor_stand,tag=skill.firelord.fire.new,distance=..1] remove skill.firelord.fire.new
particle flame ~ ~ ~ 0 0 0 0.1 3 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
