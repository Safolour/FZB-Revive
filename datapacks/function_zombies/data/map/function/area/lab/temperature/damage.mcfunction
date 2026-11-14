scoreboard players set damagecooldown area.temperature 0

execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run function map:area/lab/temperature/damage0
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run title @s[scores={system.room=4..,title.color.enable=0}] reset
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run title @s[scores={system.room=4..,title.color.enable=0}] times 0 100 0
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run title @s[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.area.temperature.title.0"}
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.area.temperature.title.1"}
