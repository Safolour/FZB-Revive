tag @s remove firelord.p2.preparebomb
tag @s add firelord.p2.bomb
scoreboard players set @s zombie.skill_timer 0
tag @e[type=ghast,tag=firelord.p2.ghast] add firelord.p2.bombing
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast] fl.p2.shot 0
execute as @e[type=ghast,tag=firelord.p2.ghast] run data merge entity @s {Motion:[0d,0d,0d]}
execute as @e[type=ghast,tag=firelord.p2.ghast,limit=1] at @s run function zombie:skill/nether/firelord/p2/ghast/tnt
title @a[scores={system.room=4..}] times 0 100 0
title @a[scores={system.room=4..}] title {translate:"zb.zombie.fire"}
title @a[scores={system.room=4..}] subtitle {translate:"zb.zombie.firelord.7"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.7.0"}
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1
