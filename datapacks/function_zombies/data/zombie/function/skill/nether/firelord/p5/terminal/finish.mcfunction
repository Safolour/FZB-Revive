title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 0
title @a[scores={system.room=4..,title.color.enable=0}] title ""
tag @s remove fl.busy
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling hostile @s ~ ~ ~ 2 2 0
execute if score @s fl.id matches 1 run function zombie:skill/nether/firelord/p5/terminal/point/1
execute if score @s fl.id matches 2 run function zombie:skill/nether/firelord/p5/terminal/point/2
execute if score @s fl.id matches 3 run function zombie:skill/nether/firelord/p5/terminal/point/3
execute if score @s fl.id matches 4 run function zombie:skill/nether/firelord/p5/terminal/point/4
execute if score @s fl.id matches 5 run function zombie:skill/nether/firelord/p5/terminal/point/5
execute if score @s fl.id matches 6 run function zombie:skill/nether/firelord/p5/terminal/point/6
execute if score @s fl.id matches 7 run function zombie:skill/nether/firelord/p5/terminal/point/7
execute if score @s fl.id matches 8 run function zombie:skill/nether/firelord/p5/terminal/point/8
execute if score @s fl.id matches 9 run function zombie:skill/nether/firelord/p5/terminal/point/9
execute if score @s fl.id matches 10 run function zombie:skill/nether/firelord/p5/terminal/point/10
execute if score @s fl.id matches 11 run function zombie:skill/nether/firelord/p5/terminal/point/11
execute if score @s fl.id matches 12 run function zombie:skill/nether/firelord/p5/terminal/point/12
execute if score @s fl.id matches 13 run function zombie:skill/nether/firelord/p5/terminal/point/13
execute if score @s fl.id matches 14 run function zombie:skill/nether/firelord/p5/terminal/point/14
execute if score @s fl.id matches 15 run function zombie:skill/nether/firelord/p5/terminal/point/15
execute if score @s fl.id matches 16 run function zombie:skill/nether/firelord/p5/terminal/point/16
execute if score @s fl.id matches 17 run function zombie:skill/nether/firelord/p5/terminal/point/17
execute if score @s fl.id matches 18 run function zombie:skill/nether/firelord/p5/terminal/point/18
execute if score @s fl.id matches 19 run function zombie:skill/nether/firelord/p5/terminal/point/19
execute if score @s fl.id matches 20 run function zombie:skill/nether/firelord/p5/terminal/point/20
execute if score @s fl.id matches 21 run function zombie:skill/nether/firelord/p5/terminal/point/21
execute if score @s fl.id matches 22 run function zombie:skill/nether/firelord/p5/terminal/point/22
execute if score @s fl.id matches 23 run function zombie:skill/nether/firelord/p5/terminal/point/23
execute if score @s fl.id matches 24 run function zombie:skill/nether/firelord/p5/terminal/point/24
execute if score @s fl.id matches 25 run function zombie:skill/nether/firelord/p5/terminal/point/25
execute if score @s fl.id matches 26 run function zombie:skill/nether/firelord/p5/terminal/point/26
execute if score @s fl.id matches 27 run function zombie:skill/nether/firelord/p5/terminal/point/27
execute if score @s fl.id matches 28 run function zombie:skill/nether/firelord/p5/terminal/point/28
execute if score @s fl.id matches 29 run function zombie:skill/nether/firelord/p5/terminal/point/29
execute if score @s fl.id matches 30 run function zombie:skill/nether/firelord/p5/terminal/point/30
execute if score @s fl.id matches 31 run function zombie:skill/nether/firelord/p5/terminal/point/31
execute if score @s fl.id matches 32 run function zombie:skill/nether/firelord/p5/terminal/point/32
execute if score @s fl.id matches 33 run function zombie:skill/nether/firelord/p5/terminal/point/33
execute if score @s fl.id matches 34 run function zombie:skill/nether/firelord/p5/terminal/point/34
execute if score @s fl.id matches 35 run function zombie:skill/nether/firelord/p5/terminal/point/35
execute if score @s fl.id matches 36 run function zombie:skill/nether/firelord/p5/terminal/point/36
execute if score @s fl.id matches 37 run function zombie:skill/nether/firelord/p5/terminal/point/37
execute if score @s fl.id matches 38 run function zombie:skill/nether/firelord/p5/terminal/point/38
execute if score @s fl.id matches 39 run function zombie:skill/nether/firelord/p5/terminal/point/39
execute if score @s fl.id matches 40 run function zombie:skill/nether/firelord/p5/terminal/point/40
execute if score @s fl.id matches 41 run function zombie:skill/nether/firelord/p5/terminal/point/41
execute if score @s fl.id matches 42 run function zombie:skill/nether/firelord/p5/terminal/point/42
execute if score @s fl.id matches 43 run function zombie:skill/nether/firelord/p5/terminal/point/43
execute if score @s fl.id matches 44 run function zombie:skill/nether/firelord/p5/terminal/point/44
execute if score @s fl.id matches 45 run function zombie:skill/nether/firelord/p5/terminal/point/45
execute if score @s fl.id matches 46 run function zombie:skill/nether/firelord/p5/terminal/point/46
execute if score @s fl.id matches 47 run function zombie:skill/nether/firelord/p5/terminal/point/47
execute if score @s fl.id matches 48 run function zombie:skill/nether/firelord/p5/terminal/point/48
execute if score @s fl.id matches 49 run function zombie:skill/nether/firelord/p5/terminal/point/49
execute if score @s fl.id matches 50 run function zombie:skill/nether/firelord/p5/terminal/point/50
execute if entity @s[tag=fl.r1,tag=fl.dir_a] run scoreboard players add #r1a fl.progress 1
execute if entity @s[tag=fl.r1,tag=fl.dir_b] run scoreboard players add #r1b fl.progress 1
execute if entity @s[tag=fl.r1] run scoreboard players operation #r1 fl.progress = #r1a fl.progress
execute if entity @s[tag=fl.r1] if score #r1b fl.progress > #r1 fl.progress run scoreboard players operation #r1 fl.progress = #r1b fl.progress
execute if entity @s[tag=fl.r1] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r1",objective:"fl.progress"},color:"red"},{score:{name:"#r1",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r1] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r1",objective:"fl.progress"},color:"red"},{score:{name:"#r1",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r1,tag=fl.dir_a] if score #r1a fl.progress matches 2.. run function zombie:skill/nether/firelord/p5/terminal/doors/queue/1a
execute if entity @s[tag=fl.r1,tag=fl.dir_b] if score #r1b fl.progress matches 2.. run function zombie:skill/nether/firelord/p5/terminal/doors/queue/1b
execute if entity @s[tag=fl.r2a] run scoreboard players add #r2a fl.progress 1
execute if entity @s[tag=fl.r2a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r2a",objective:"fl.progress"},color:"red"},{score:{name:"#r2a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r2a",objective:"fl.progress"},color:"red"},{score:{name:"#r2a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2a] if score #r2a fl.progress >= #r2a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/2a
execute if entity @s[tag=fl.r2b] run scoreboard players add #r2b fl.progress 1
execute if entity @s[tag=fl.r2b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r2b",objective:"fl.progress"},color:"red"},{score:{name:"#r2b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r2b",objective:"fl.progress"},color:"red"},{score:{name:"#r2b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r2b] if score #r2b fl.progress >= #r2b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/2b
execute if entity @s[tag=fl.r3a] run scoreboard players add #r3a fl.progress 1
execute if entity @s[tag=fl.r3a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r3a",objective:"fl.progress"},color:"red"},{score:{name:"#r3a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r3a",objective:"fl.progress"},color:"red"},{score:{name:"#r3a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3a] if score #r3a fl.progress >= #r3a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/3a
execute if entity @s[tag=fl.r3b] run scoreboard players add #r3b fl.progress 1
execute if entity @s[tag=fl.r3b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r3b",objective:"fl.progress"},color:"red"},{score:{name:"#r3b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r3b",objective:"fl.progress"},color:"red"},{score:{name:"#r3b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r3b] if score #r3b fl.progress >= #r3b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/3b
execute if entity @s[tag=fl.r4,tag=fl.dir_a] run scoreboard players add #r4a fl.progress 1
execute if entity @s[tag=fl.r4,tag=fl.dir_b] run scoreboard players add #r4b fl.progress 1
execute if entity @s[tag=fl.r4] run scoreboard players operation #r4 fl.progress = #r4a fl.progress
execute if entity @s[tag=fl.r4] if score #r4b fl.progress > #r4 fl.progress run scoreboard players operation #r4 fl.progress = #r4b fl.progress
execute if entity @s[tag=fl.r4] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r4",objective:"fl.progress"},color:"red"},{score:{name:"#r4",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r4] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r4",objective:"fl.progress"},color:"red"},{score:{name:"#r4",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r4,tag=fl.dir_a] if score #r4a fl.progress matches 2.. run function zombie:skill/nether/firelord/p5/terminal/doors/queue/4a
execute if entity @s[tag=fl.r4,tag=fl.dir_b] if score #r4b fl.progress matches 2.. run function zombie:skill/nether/firelord/p5/terminal/doors/queue/4b
execute if entity @s[tag=fl.r5a] run scoreboard players add #r5a fl.progress 1
execute if entity @s[tag=fl.r5a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r5a",objective:"fl.progress"},color:"red"},{score:{name:"#r5a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r5a",objective:"fl.progress"},color:"red"},{score:{name:"#r5a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5a] if score #r5a fl.progress >= #r5a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/5a
execute if entity @s[tag=fl.r5b] run scoreboard players add #r5b fl.progress 1
execute if entity @s[tag=fl.r5b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r5b",objective:"fl.progress"},color:"red"},{score:{name:"#r5b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r5b",objective:"fl.progress"},color:"red"},{score:{name:"#r5b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r5b] if score #r5b fl.progress >= #r5b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/5b
execute if entity @s[tag=fl.r6a] run scoreboard players add #r6a fl.progress 1
execute if entity @s[tag=fl.r6a] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r6a",objective:"fl.progress"},color:"red"},{score:{name:"#r6a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6a] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r6a",objective:"fl.progress"},color:"red"},{score:{name:"#r6a",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6a] if score #r6a fl.progress >= #r6a fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/6a
execute if entity @s[tag=fl.r6b] run scoreboard players add #r6b fl.progress 1
execute if entity @s[tag=fl.r6b] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r6b",objective:"fl.progress"},color:"red"},{score:{name:"#r6b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6b] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.zombie.firelord.11.6",with:[{selector:"@a[tag=fl.user,limit=1]"},{score:{name:"#r6b",objective:"fl.progress"},color:"red"},{score:{name:"#r6b",objective:"fl.total"},color:"green"}]}
execute if entity @s[tag=fl.r6b] if score #r6b fl.progress >= #r6b fl.total run function zombie:skill/nether/firelord/p5/terminal/doors/queue/6b
