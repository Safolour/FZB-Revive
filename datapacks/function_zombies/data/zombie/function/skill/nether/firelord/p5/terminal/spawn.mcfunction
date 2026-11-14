function zombie:skill/nether/firelord/p5/terminal/doors/reset
scoreboard players operation #players fl.term = #scoreboard_next game.player
execute unless score #players fl.term matches 1.. run scoreboard players set #players fl.term 1
execute if score #players fl.term matches 5.. run scoreboard players set #players fl.term 4
data modify storage map:r40 terminals set value 1b
execute in minecraft:overworld run function map:shop/summon/portal_lab/gun/soulflamethrower_alt
execute in minecraft:overworld run function map:shop/summon/portal_lab/gun/soulflamethrower
summon interaction 307.5 93 187.5 {Tags:["interactable","fl.terminal","fl.console","fl.r1","fl.p1","fl.dir_a"],width:1f,height:1f}
summon armor_stand 307.5 93.4 187.5 {Tags:["fl.terminal","fl.title","fl.p1"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 307.5 93.1 187.5 {Tags:["fl.terminal","fl.subtitle","fl.p1"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p1,limit=1] fl.id 1
summon interaction 307.5 93 197.5 {Tags:["interactable","fl.terminal","fl.console","fl.r1","fl.p2","fl.dir_a"],width:1f,height:1f}
summon armor_stand 307.5 93.4 197.5 {Tags:["fl.terminal","fl.title","fl.p2"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 307.5 93.1 197.5 {Tags:["fl.terminal","fl.subtitle","fl.p2"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p2,limit=1] fl.id 2
summon interaction 295.5 93 201.5 {Tags:["interactable","fl.terminal","fl.console","fl.r1","fl.p3","fl.dir_b"],width:1f,height:1f}
summon armor_stand 295.5 93.4 201.5 {Tags:["fl.terminal","fl.title","fl.p3"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 295.5 93.1 201.5 {Tags:["fl.terminal","fl.subtitle","fl.p3"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p3,limit=1] fl.id 3
summon interaction 305.5 93 201.5 {Tags:["interactable","fl.terminal","fl.console","fl.r1","fl.p4","fl.dir_b"],width:1f,height:1f}
summon armor_stand 305.5 93.4 201.5 {Tags:["fl.terminal","fl.title","fl.p4"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 305.5 93.1 201.5 {Tags:["fl.terminal","fl.subtitle","fl.p4"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p4,limit=1] fl.id 4
scoreboard players set #r1 fl.progress 0
scoreboard players set #r1a fl.progress 0
scoreboard players set #r1b fl.progress 0
summon interaction 317.5 92 187.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2a","fl.p5"],width:1f,height:1f}
summon armor_stand 317.5 92.4 187.5 {Tags:["fl.terminal","fl.title","fl.p5"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 317.5 92.1 187.5 {Tags:["fl.terminal","fl.subtitle","fl.p5"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p5,limit=1] fl.id 5
summon interaction 318.5 93 199.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2a","fl.p6"],width:1f,height:1f}
summon armor_stand 318.5 93.4 199.5 {Tags:["fl.terminal","fl.title","fl.p6"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 318.5 93.1 199.5 {Tags:["fl.terminal","fl.subtitle","fl.p6"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p6,limit=1] fl.id 6
summon interaction 317.5 98 185.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2a","fl.p7"],width:1f,height:1f}
summon armor_stand 317.5 98.4 185.5 {Tags:["fl.terminal","fl.title","fl.p7"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 317.5 98.1 185.5 {Tags:["fl.terminal","fl.subtitle","fl.p7"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p7,limit=1] fl.id 7
summon interaction 327.5 88 198.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2a","fl.p8"],width:1f,height:1f}
summon armor_stand 327.5 88.4 198.5 {Tags:["fl.terminal","fl.title","fl.p8"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 327.5 88.1 198.5 {Tags:["fl.terminal","fl.subtitle","fl.p8"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p8,limit=1] fl.id 8
summon interaction 332.5 97 186.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2a","fl.p9"],width:1f,height:1f}
summon armor_stand 332.5 97.4 186.5 {Tags:["fl.terminal","fl.title","fl.p9"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 332.5 97.1 186.5 {Tags:["fl.terminal","fl.subtitle","fl.p9"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p9,limit=1] fl.id 9
summon interaction 335.5 97 196.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2a","fl.p10"],width:1f,height:1f}
summon armor_stand 335.5 97.4 196.5 {Tags:["fl.terminal","fl.title","fl.p10"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 335.5 97.1 196.5 {Tags:["fl.terminal","fl.subtitle","fl.p10"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p10,limit=1] fl.id 10
setblock 341 93 191 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 341.5 93 191.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r2a"],width:1f,height:1f}
summon armor_stand 341.5 94.5 191.5 {Tags:["fl.terminal","fl.leverlabel","fl.r2a"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r2a fl.progress 0
summon interaction 295.5 92 211.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2b","fl.p11"],width:1f,height:1f}
summon armor_stand 295.5 92.4 211.5 {Tags:["fl.terminal","fl.title","fl.p11"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 295.5 92.1 211.5 {Tags:["fl.terminal","fl.subtitle","fl.p11"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p11,limit=1] fl.id 11
summon interaction 307.5 96 221.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2b","fl.p12"],width:1f,height:1f}
summon armor_stand 307.5 96.4 221.5 {Tags:["fl.terminal","fl.title","fl.p12"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 307.5 96.1 221.5 {Tags:["fl.terminal","fl.subtitle","fl.p12"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p12,limit=1] fl.id 12
summon interaction 307.5 92 225.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2b","fl.p13"],width:1f,height:1f}
summon armor_stand 307.5 92.4 225.5 {Tags:["fl.terminal","fl.title","fl.p13"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 307.5 92.1 225.5 {Tags:["fl.terminal","fl.subtitle","fl.p13"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p13,limit=1] fl.id 13
summon interaction 293.5 92 225.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2b","fl.p14"],width:1f,height:1f}
summon armor_stand 293.5 92.4 225.5 {Tags:["fl.terminal","fl.title","fl.p14"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 293.5 92.1 225.5 {Tags:["fl.terminal","fl.subtitle","fl.p14"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p14,limit=1] fl.id 14
summon interaction 305.5 100 229.5 {Tags:["interactable","fl.terminal","fl.console","fl.r2b","fl.p15"],width:1f,height:1f}
summon armor_stand 305.5 100.4 229.5 {Tags:["fl.terminal","fl.title","fl.p15"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 305.5 100.1 229.5 {Tags:["fl.terminal","fl.subtitle","fl.p15"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p15,limit=1] fl.id 15
setblock 296 100 235 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 296.5 100 235.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r2b"],width:1f,height:1f}
summon armor_stand 296.5 101.5 235.5 {Tags:["fl.terminal","fl.leverlabel","fl.r2b"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r2b fl.progress 0
summon interaction 345.5 85 207.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3a","fl.p16"],width:1f,height:1f}
summon armor_stand 345.5 85.4 207.5 {Tags:["fl.terminal","fl.title","fl.p16"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 345.5 85.1 207.5 {Tags:["fl.terminal","fl.subtitle","fl.p16"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p16,limit=1] fl.id 16
summon interaction 351.5 86 225.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3a","fl.p17"],width:1f,height:1f}
summon armor_stand 351.5 86.4 225.5 {Tags:["fl.terminal","fl.title","fl.p17"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 351.5 86.1 225.5 {Tags:["fl.terminal","fl.subtitle","fl.p17"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p17,limit=1] fl.id 17
summon interaction 334.5 87 211.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3a","fl.p18"],width:1f,height:1f}
summon armor_stand 334.5 87.4 211.5 {Tags:["fl.terminal","fl.title","fl.p18"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 334.5 87.1 211.5 {Tags:["fl.terminal","fl.subtitle","fl.p18"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p18,limit=1] fl.id 18
setblock 337 102 217 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 337.5 102 217.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r3a"],width:1f,height:1f}
summon armor_stand 337.5 103.5 217.5 {Tags:["fl.terminal","fl.leverlabel","fl.r3a"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r3a fl.progress 0
summon interaction 313.5 93 244.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3b","fl.p19"],width:1f,height:1f}
summon armor_stand 313.5 93.4 244.5 {Tags:["fl.terminal","fl.title","fl.p19"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 313.5 93.1 244.5 {Tags:["fl.terminal","fl.subtitle","fl.p19"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p19,limit=1] fl.id 19
summon interaction 321.5 94 258.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3b","fl.p20"],width:1f,height:1f}
summon armor_stand 321.5 94.4 258.5 {Tags:["fl.terminal","fl.title","fl.p20"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 321.5 94.1 258.5 {Tags:["fl.terminal","fl.subtitle","fl.p20"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p20,limit=1] fl.id 20
summon interaction 328.5 96 249.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3b","fl.p21"],width:1f,height:1f}
summon armor_stand 328.5 96.4 249.5 {Tags:["fl.terminal","fl.title","fl.p21"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 328.5 96.1 249.5 {Tags:["fl.terminal","fl.subtitle","fl.p21"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p21,limit=1] fl.id 21
summon interaction 313.5 92 234.5 {Tags:["interactable","fl.terminal","fl.console","fl.r3b","fl.p22"],width:1f,height:1f}
summon armor_stand 313.5 92.4 234.5 {Tags:["fl.terminal","fl.title","fl.p22"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 313.5 92.1 234.5 {Tags:["fl.terminal","fl.subtitle","fl.p22"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p22,limit=1] fl.id 22
setblock 321 95 237 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 321.5 95 237.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r3b"],width:1f,height:1f}
summon armor_stand 321.5 96.5 237.5 {Tags:["fl.terminal","fl.leverlabel","fl.r3b"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r3b fl.progress 0
summon interaction 344.5 90 233.5 {Tags:["interactable","fl.terminal","fl.console","fl.r4","fl.p23","fl.dir_a"],width:1f,height:1f}
summon armor_stand 344.5 90.4 233.5 {Tags:["fl.terminal","fl.title","fl.p23"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 344.5 90.1 233.5 {Tags:["fl.terminal","fl.subtitle","fl.p23"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p23,limit=1] fl.id 23
summon interaction 344.5 90 239.5 {Tags:["interactable","fl.terminal","fl.console","fl.r4","fl.p24","fl.dir_a"],width:1f,height:1f}
summon armor_stand 344.5 90.4 239.5 {Tags:["fl.terminal","fl.title","fl.p24"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 344.5 90.1 239.5 {Tags:["fl.terminal","fl.subtitle","fl.p24"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p24,limit=1] fl.id 24
summon interaction 341.5 90 242.5 {Tags:["interactable","fl.terminal","fl.console","fl.r4","fl.p25","fl.dir_b"],width:1f,height:1f}
summon armor_stand 341.5 90.4 242.5 {Tags:["fl.terminal","fl.title","fl.p25"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 341.5 90.1 242.5 {Tags:["fl.terminal","fl.subtitle","fl.p25"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p25,limit=1] fl.id 25
summon interaction 335.5 90 242.5 {Tags:["interactable","fl.terminal","fl.console","fl.r4","fl.p26","fl.dir_b"],width:1f,height:1f}
summon armor_stand 335.5 90.4 242.5 {Tags:["fl.terminal","fl.title","fl.p26"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 335.5 90.1 242.5 {Tags:["fl.terminal","fl.subtitle","fl.p26"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p26,limit=1] fl.id 26
scoreboard players set #r4 fl.progress 0
scoreboard players set #r4a fl.progress 0
scoreboard players set #r4b fl.progress 0
summon interaction 363.5 92 230.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5a","fl.p27"],width:1f,height:1f}
summon armor_stand 363.5 92.4 230.5 {Tags:["fl.terminal","fl.title","fl.p27"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 363.5 92.1 230.5 {Tags:["fl.terminal","fl.subtitle","fl.p27"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p27,limit=1] fl.id 27
summon interaction 359.5 96 230.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5a","fl.p28"],width:1f,height:1f}
summon armor_stand 359.5 96.4 230.5 {Tags:["fl.terminal","fl.title","fl.p28"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 359.5 96.1 230.5 {Tags:["fl.terminal","fl.subtitle","fl.p28"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p28,limit=1] fl.id 28
summon interaction 355.5 99 242.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5a","fl.p29"],width:1f,height:1f}
summon armor_stand 355.5 99.4 242.5 {Tags:["fl.terminal","fl.title","fl.p29"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 355.5 99.1 242.5 {Tags:["fl.terminal","fl.subtitle","fl.p29"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p29,limit=1] fl.id 29
summon interaction 365.5 101 232.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5a","fl.p30"],width:1f,height:1f}
summon armor_stand 365.5 101.4 232.5 {Tags:["fl.terminal","fl.title","fl.p30"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 365.5 101.1 232.5 {Tags:["fl.terminal","fl.subtitle","fl.p30"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p30,limit=1] fl.id 30
summon interaction 353.5 111 233.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5a","fl.p31"],width:1f,height:1f}
summon armor_stand 353.5 111.4 233.5 {Tags:["fl.terminal","fl.title","fl.p31"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 353.5 111.1 233.5 {Tags:["fl.terminal","fl.subtitle","fl.p31"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p31,limit=1] fl.id 31
setblock 363 114 232 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 363.5 114 232.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r5a"],width:1f,height:1f}
summon armor_stand 363.5 115.5 232.5 {Tags:["fl.terminal","fl.leverlabel","fl.r5a"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r5a fl.progress 0
summon interaction 336.5 88 262.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5b","fl.p32"],width:1f,height:1f}
summon armor_stand 336.5 88.4 262.5 {Tags:["fl.terminal","fl.title","fl.p32"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 336.5 88.1 262.5 {Tags:["fl.terminal","fl.subtitle","fl.p32"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p32,limit=1] fl.id 32
summon interaction 345.5 92 259.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5b","fl.p33"],width:1f,height:1f}
summon armor_stand 345.5 92.4 259.5 {Tags:["fl.terminal","fl.title","fl.p33"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 345.5 92.1 259.5 {Tags:["fl.terminal","fl.subtitle","fl.p33"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p33,limit=1] fl.id 33
summon interaction 331.5 97 251.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5b","fl.p34"],width:1f,height:1f}
summon armor_stand 331.5 97.4 251.5 {Tags:["fl.terminal","fl.title","fl.p34"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 331.5 97.1 251.5 {Tags:["fl.terminal","fl.subtitle","fl.p34"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p34,limit=1] fl.id 34
summon interaction 349.5 100 268.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5b","fl.p35"],width:1f,height:1f}
summon armor_stand 349.5 100.4 268.5 {Tags:["fl.terminal","fl.title","fl.p35"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 349.5 100.1 268.5 {Tags:["fl.terminal","fl.subtitle","fl.p35"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p35,limit=1] fl.id 35
summon interaction 345.5 107 250.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5b","fl.p36"],width:1f,height:1f}
summon armor_stand 345.5 107.4 250.5 {Tags:["fl.terminal","fl.title","fl.p36"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 345.5 107.1 250.5 {Tags:["fl.terminal","fl.subtitle","fl.p36"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p36,limit=1] fl.id 36
summon interaction 331.5 108 258.5 {Tags:["interactable","fl.terminal","fl.console","fl.r5b","fl.p37"],width:1f,height:1f}
summon armor_stand 331.5 108.4 258.5 {Tags:["fl.terminal","fl.title","fl.p37"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 331.5 108.1 258.5 {Tags:["fl.terminal","fl.subtitle","fl.p37"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p37,limit=1] fl.id 37
setblock 338 116 256 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 338.5 116 256.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r5b"],width:1f,height:1f}
summon armor_stand 338.5 117.5 256.5 {Tags:["fl.terminal","fl.leverlabel","fl.r5b"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r5b fl.progress 0
summon interaction 374.5 116 245.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p38"],width:1f,height:1f}
summon armor_stand 374.5 116.4 245.5 {Tags:["fl.terminal","fl.title","fl.p38"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 374.5 116.1 245.5 {Tags:["fl.terminal","fl.subtitle","fl.p38"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p38,limit=1] fl.id 38
summon interaction 386.5 118 247.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p39"],width:1f,height:1f}
summon armor_stand 386.5 118.4 247.5 {Tags:["fl.terminal","fl.title","fl.p39"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 386.5 118.1 247.5 {Tags:["fl.terminal","fl.subtitle","fl.p39"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p39,limit=1] fl.id 39
summon interaction 373.5 113 256.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p40"],width:1f,height:1f}
summon armor_stand 373.5 113.4 256.5 {Tags:["fl.terminal","fl.title","fl.p40"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 373.5 113.1 256.5 {Tags:["fl.terminal","fl.subtitle","fl.p40"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p40,limit=1] fl.id 40
summon interaction 385.5 113 263.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p41"],width:1f,height:1f}
summon armor_stand 385.5 113.4 263.5 {Tags:["fl.terminal","fl.title","fl.p41"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 385.5 113.1 263.5 {Tags:["fl.terminal","fl.subtitle","fl.p41"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p41,limit=1] fl.id 41
summon interaction 371.5 116 264.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p42"],width:1f,height:1f}
summon armor_stand 371.5 116.4 264.5 {Tags:["fl.terminal","fl.title","fl.p42"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 371.5 116.1 264.5 {Tags:["fl.terminal","fl.subtitle","fl.p42"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p42,limit=1] fl.id 42
summon interaction 371.5 126 258.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p43"],width:1f,height:1f}
summon armor_stand 371.5 126.4 258.5 {Tags:["fl.terminal","fl.title","fl.p43"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 371.5 126.1 258.5 {Tags:["fl.terminal","fl.subtitle","fl.p43"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p43,limit=1] fl.id 43
summon interaction 369.5 126 270.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6a","fl.p44"],width:1f,height:1f}
summon armor_stand 369.5 126.4 270.5 {Tags:["fl.terminal","fl.title","fl.p44"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 369.5 126.1 270.5 {Tags:["fl.terminal","fl.subtitle","fl.p44"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p44,limit=1] fl.id 44
setblock 375 127 273 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 375.5 127 273.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r6a"],width:1f,height:1f}
summon armor_stand 375.5 128.5 273.5 {Tags:["fl.terminal","fl.leverlabel","fl.r6a"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r6a fl.progress 0
summon interaction 332.5 117 291.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6b","fl.p45"],width:1f,height:1f}
summon armor_stand 332.5 117.4 291.5 {Tags:["fl.terminal","fl.title","fl.p45"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 332.5 117.1 291.5 {Tags:["fl.terminal","fl.subtitle","fl.p45"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p45,limit=1] fl.id 45
summon interaction 343.5 121 282.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6b","fl.p46"],width:1f,height:1f}
summon armor_stand 343.5 121.4 282.5 {Tags:["fl.terminal","fl.title","fl.p46"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 343.5 121.1 282.5 {Tags:["fl.terminal","fl.subtitle","fl.p46"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p46,limit=1] fl.id 46
summon interaction 347.5 121 297.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6b","fl.p47"],width:1f,height:1f}
summon armor_stand 347.5 121.4 297.5 {Tags:["fl.terminal","fl.title","fl.p47"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 347.5 121.1 297.5 {Tags:["fl.terminal","fl.subtitle","fl.p47"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p47,limit=1] fl.id 47
summon interaction 351.5 119 297.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6b","fl.p48"],width:1f,height:1f}
summon armor_stand 351.5 119.4 297.5 {Tags:["fl.terminal","fl.title","fl.p48"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 351.5 119.1 297.5 {Tags:["fl.terminal","fl.subtitle","fl.p48"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p48,limit=1] fl.id 48
summon interaction 351.5 115 279.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6b","fl.p49"],width:1f,height:1f}
summon armor_stand 351.5 115.4 279.5 {Tags:["fl.terminal","fl.title","fl.p49"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 351.5 115.1 279.5 {Tags:["fl.terminal","fl.subtitle","fl.p49"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p49,limit=1] fl.id 49
summon interaction 351.5 122 279.5 {Tags:["interactable","fl.terminal","fl.console","fl.r6b","fl.p50"],width:1f,height:1f}
summon armor_stand 351.5 122.4 279.5 {Tags:["fl.terminal","fl.title","fl.p50"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.0"}}
summon armor_stand 351.5 122.1 279.5 {Tags:["fl.terminal","fl.subtitle","fl.p50"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.11.3"}}
scoreboard players set @e[type=interaction,tag=fl.p50,limit=1] fl.id 50
setblock 360 128 288 minecraft:lever[face=floor,facing=north,powered=false]
summon interaction 360.5 128 288.5 {Tags:["interactable","fl.terminal","fl.lever","fl.r6b"],width:1f,height:1f}
summon armor_stand 360.5 129.5 288.5 {Tags:["fl.terminal","fl.leverlabel","fl.r6b"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:{translate:"zb.zombie.firelord.15"}}
scoreboard players set #r6b fl.progress 0
# Assign each console its puzzle type once, independently of later openings.
execute as @e[type=interaction,tag=fl.console] store result score @s fl.mode run random value 0..3
execute if score #players fl.term matches 1 run scoreboard players set #r1 fl.total 2
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r1,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r1 fl.total 2
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r1,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r1 fl.total 2
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r1,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r1 fl.total 2
execute if score #players fl.term matches 4 as @e[type=interaction,tag=fl.console,tag=fl.r1,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 run scoreboard players set #r2a fl.total 5
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r2a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r2a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r2a fl.total 6
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r2a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r2a fl.total 6
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r2a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r2a fl.total 7
execute if score #players fl.term matches 1 run scoreboard players set #r2b fl.total 4
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r2b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r2b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r2b fl.total 5
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r2b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r2b fl.total 5
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r2b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r2b fl.total 6
execute if score #players fl.term matches 1 run scoreboard players set #r3a fl.total 4
execute if score #players fl.term matches 2 run scoreboard players set #r3a fl.total 4
execute if score #players fl.term matches 3 run scoreboard players set #r3a fl.total 4
execute if score #players fl.term matches 4 run scoreboard players set #r3a fl.total 4
execute if score #players fl.term matches 1 run scoreboard players set #r3b fl.total 4
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r3b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r3b fl.total 4
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r3b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r3b fl.total 5
execute if score #players fl.term matches 4 run scoreboard players set #r3b fl.total 5
execute if score #players fl.term matches 1 run scoreboard players set #r4 fl.total 2
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r4,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r4 fl.total 2
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r4,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r4 fl.total 2
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r4,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r4 fl.total 2
execute if score #players fl.term matches 4 as @e[type=interaction,tag=fl.console,tag=fl.r4,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 run scoreboard players set #r5a fl.total 4
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r5a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r5a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r5a fl.total 5
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r5a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r5a fl.total 5
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r5a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r5a fl.total 6
execute if score #players fl.term matches 1 run scoreboard players set #r5b fl.total 5
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r5b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r5b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r5b fl.total 6
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r5b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r5b fl.total 6
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r5b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r5b fl.total 7
execute if score #players fl.term matches 1 run scoreboard players set #r6a fl.total 6
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r6a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r6a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r6a fl.total 6
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r6a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r6a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r6a fl.total 7
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r6a,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r6a fl.total 8
execute if score #players fl.term matches 1 run scoreboard players set #r6b fl.total 5
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r6b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 1 as @e[type=interaction,tag=fl.console,tag=fl.r6b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 2 run scoreboard players set #r6b fl.total 6
execute if score #players fl.term matches 2 as @e[type=interaction,tag=fl.console,tag=fl.r6b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 3 run scoreboard players set #r6b fl.total 6
execute if score #players fl.term matches 3 as @e[type=interaction,tag=fl.console,tag=fl.r6b,tag=!fl.damaged,sort=random,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/damage
execute if score #players fl.term matches 4 run scoreboard players set #r6b fl.total 7
