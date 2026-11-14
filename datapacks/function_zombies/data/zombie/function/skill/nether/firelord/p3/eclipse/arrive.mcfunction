tag @s remove firelord.traveling
tag @s remove firelord.eclipse.travel
tag @s add hitable
tag @s add firelord.eclipse.charge
scoreboard players set @s zombie.skill_timer 0
data merge entity @s {NoAI:1b,Invulnerable:0b,Glowing:1b,Motion:[0d,0d,0d]}
team add fl_eclipse
team modify fl_eclipse color red
team join fl_eclipse @s
execute store result score #eclipse.z fl.eclipse.v run data get entity @s Pos[2] 100
execute if score #eclipse.z fl.eclipse.v matches ..14299 anchored eyes facing 300 110 164 run tp @s ~ ~ ~ ~ ~
execute if score #eclipse.z fl.eclipse.v matches 15900.. anchored eyes facing 300 110 138 run tp @s ~ ~ ~ ~ ~
execute if score #eclipse.z fl.eclipse.v matches 14300..15899 anchored eyes facing 300 110 150 run tp @s ~ ~ ~ ~ ~
title @a[scores={system.room=4..}] times 0 100 0
title @a[scores={system.room=4..}] title {translate:"zb.zombie.fire"}
execute if score #eclipse.z fl.eclipse.v matches ..14299 run title @a[scores={system.room=4..}] subtitle {translate:"zb.zombie.firelord.1.0",with:[{translate:"zb.zombie.firelord.1.3"}]}
execute if score #eclipse.z fl.eclipse.v matches 15900.. run title @a[scores={system.room=4..}] subtitle {translate:"zb.zombie.firelord.1.0",with:[{translate:"zb.zombie.firelord.1.1"}]}
execute if score #eclipse.z fl.eclipse.v matches 14300..15899 run title @a[scores={system.room=4..}] subtitle {translate:"zb.zombie.firelord.1.0",with:[{translate:"zb.zombie.firelord.1.2"}]}
execute if score #eclipse.z fl.eclipse.v matches ..14299 run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.1",with:[{translate:"zb.zombie.firelord.1.3"}]}
execute if score #eclipse.z fl.eclipse.v matches 15900.. run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.1",with:[{translate:"zb.zombie.firelord.1.1"}]}
execute if score #eclipse.z fl.eclipse.v matches 14300..15899 run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.1",with:[{translate:"zb.zombie.firelord.1.2"}]}
playsound entity.evoker.prepare_attack hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0.7
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1

execute if entity @s[tag=firelord.p3] at @s run function zombie:skill/nether/firelord/p3/meteor/queue
