title @a[scores={system.room=4..}] times 0 60 0
title @a[scores={system.room=4..}] title {translate:"zb.zombie.fire"}
title @a[scores={system.room=4..}] subtitle {translate:"zb.zombie.firelord.3"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.3.1"}
execute as @a[scores={system.room=4..},x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1
