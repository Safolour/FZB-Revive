execute store result score #firelord.p2.count zombie.motionz run random value 10..14
tag @s remove firelord.p2.meteors
tag @s add firelord.p2.wave1
scoreboard players set @s zombie.skill_timer 0
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 2
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 1
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.5",with:[{text:"25",color:"yellow"}]}
function zombie:skill/nether/firelord/p2/spawn/wave1_init
tag @s remove firelord.p2.first_spawn
scoreboard players set @s fl.p2.ashes 0
tag @e[type=marker,tag=firelord.p2.spawn.target] add firelord.p2.spawn.simultaneous
