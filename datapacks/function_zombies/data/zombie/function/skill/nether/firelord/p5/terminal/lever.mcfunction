title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title ""
execute if entity @s[tag=fl.done] run return run tellraw @p[tag=chosen,limit=1] {translate:"zb.zombie.firelord.11.8"}
tag @s add fl.done
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling hostile @s ~ ~ ~ 2 2 0
execute at @s run setblock ~ ~ ~ minecraft:lever[face=floor,facing=north,powered=true]
execute if entity @s[tag=fl.r2a] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r2a,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r2a] run scoreboard players add #r2a fl.progress 1
execute if entity @s[tag=fl.r2a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r2a",objective:"fl.progress"},color:"red"},{score:{name:"#r2a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r2a",objective:"fl.progress"},color:"red"},{score:{name:"#r2a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2a] if score #r2a fl.progress >= #r2a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/2a
execute if entity @s[tag=fl.r2b] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r2b,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r2b] run scoreboard players add #r2b fl.progress 1
execute if entity @s[tag=fl.r2b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r2b",objective:"fl.progress"},color:"red"},{score:{name:"#r2b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r2b",objective:"fl.progress"},color:"red"},{score:{name:"#r2b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2b] if score #r2b fl.progress >= #r2b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/2b
execute if entity @s[tag=fl.r3a] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r3a,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r3a] run scoreboard players add #r3a fl.progress 1
execute if entity @s[tag=fl.r3a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r3a",objective:"fl.progress"},color:"red"},{score:{name:"#r3a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r3a",objective:"fl.progress"},color:"red"},{score:{name:"#r3a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3a] if score #r3a fl.progress >= #r3a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/3a
execute if entity @s[tag=fl.r3b] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r3b,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r3b] run scoreboard players add #r3b fl.progress 1
execute if entity @s[tag=fl.r3b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r3b",objective:"fl.progress"},color:"red"},{score:{name:"#r3b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r3b",objective:"fl.progress"},color:"red"},{score:{name:"#r3b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3b] if score #r3b fl.progress >= #r3b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/3b
execute if entity @s[tag=fl.r5a] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r5a,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r5a] run scoreboard players add #r5a fl.progress 1
execute if entity @s[tag=fl.r5a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r5a",objective:"fl.progress"},color:"red"},{score:{name:"#r5a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r5a",objective:"fl.progress"},color:"red"},{score:{name:"#r5a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5a] if score #r5a fl.progress >= #r5a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/5a
execute if entity @s[tag=fl.r5b] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r5b,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r5b] run scoreboard players add #r5b fl.progress 1
execute if entity @s[tag=fl.r5b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r5b",objective:"fl.progress"},color:"red"},{score:{name:"#r5b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r5b",objective:"fl.progress"},color:"red"},{score:{name:"#r5b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5b] if score #r5b fl.progress >= #r5b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/5b
execute if entity @s[tag=fl.r6a] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r6a,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r6a] run scoreboard players add #r6a fl.progress 1
execute if entity @s[tag=fl.r6a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r6a",objective:"fl.progress"},color:"red"},{score:{name:"#r6a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r6a",objective:"fl.progress"},color:"red"},{score:{name:"#r6a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6a] if score #r6a fl.progress >= #r6a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/6a
execute if entity @s[tag=fl.r6b] run data merge entity @e[type=armor_stand,tag=fl.leverlabel,tag=fl.r6b,limit=1] {CustomName:{translate:"zb.zombie.firelord.15.0"}}
execute if entity @s[tag=fl.r6b] run scoreboard players add #r6b fl.progress 1
execute if entity @s[tag=fl.r6b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r6b",objective:"fl.progress"},color:"red"},{score:{name:"#r6b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.7",with:[{selector:"@p[tag=chosen,limit=1]"},{score:{name:"#r6b",objective:"fl.progress"},color:"red"},{score:{name:"#r6b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6b] if score #r6b fl.progress >= #r6b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/6b
