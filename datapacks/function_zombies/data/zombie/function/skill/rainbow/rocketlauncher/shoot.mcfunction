
playsound entity.firework_rocket.launch record @a ~ ~ ~ 4 0
summon armor_stand ~ ~1.7 ~ {Tags:["mob.skill","skill.rainbowzombie.rocketlauncher.missile","chosen"],Invisible:1b,Marker:1b}
execute store result score random zombie.random run random value 0..6
execute if score random zombie.random matches 0 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.0"],item:{id:red_wool},Glowing:1b,glow_color_override:16711680,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
execute if score random zombie.random matches 1 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.1"],item:{id:orange_wool},Glowing:1b,glow_color_override:16745472,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
execute if score random zombie.random matches 2 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.2"],item:{id:yellow_wool},Glowing:1b,glow_color_override:16771584,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
execute if score random zombie.random matches 3 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.3"],item:{id:green_wool},Glowing:1b,glow_color_override:8453888,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
execute if score random zombie.random matches 4 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.4"],item:{id:cyan_wool},Glowing:1b,glow_color_override:65454,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
execute if score random zombie.random matches 5 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.5"],item:{id:blue_wool},Glowing:1b,glow_color_override:33023,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
execute if score random zombie.random matches 6 run summon item_display ~ ~1.7 ~ {Tags:["skill.rainbowzombie.rocketlauncher.missile","chosen","skill.rainbowzombie.rocketlauncher.missile.6"],item:{id:purple_wool},Glowing:1b,glow_color_override:12517631,transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.3,0.3,0.3],translation:[0,0,0]}}
ride @n[type=item_display,tag=chosen] mount @n[type=armor_stand,tag=chosen]
tp @n[type=armor_stand,tag=chosen] ~ ~ ~ facing entity @p[tag=target]
tp @n[type=armor_stand,tag=chosen] ~ ~1.7 ~
scoreboard players add @e[type=armor_stand,tag=skill.rainbowzombie.rocketlauncher.missile] zombie.rainbow.match 1
scoreboard players add @e[type=item_display,tag=skill.rainbowzombie.rocketlauncher.missile] zombie.rainbow.match 1
tag @e[type=armor_stand,tag=chosen] remove chosen
tag @e[type=item_display,tag=chosen] remove chosen
