tag @s add firelord.p4.legion.started
tag @s add firelord.p4.legion.wave1
scoreboard players set @s zombie.skill_timer 0
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.5",with:[{text:"30",color:"yellow"}]}
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound entity.lightning_bolt.thunder hostile @s ~ ~ ~ 2 0
function zombie:skill/nether/firelord/p4/legion/select1
