summon armor_stand ~ ~ ~ {Tags:["mob.skill","skill.firelord.fire","skill.firelord.fire.new","skill.firelord.big"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:fire"},brightness:{block:15,sky:15},transformation:{translation:[-0.75f,-0.5f,-0.75f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}]}
tp @n[type=armor_stand,tag=skill.firelord.fire.new,distance=..1] ~ ~ ~ ~ ~
tag @n[type=armor_stand,tag=skill.firelord.fire.new,distance=..1] remove skill.firelord.fire.new
scoreboard players set @s fl.volley 0
tag @s add fl.firstcharge.done
tag @s remove fl.firstcharge.pending
