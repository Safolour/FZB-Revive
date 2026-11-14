# 对局录像：模型和名字分别骑乘 Marker 盔甲架；缩小的隐形骷髅和交互框独立。
execute if block 17 -59 832 minecraft:player_head run setblock 17 -59 832 air
summon skeleton 17.5 -59 832.5 {Tags:["fzb.intro_monhan","fzb.intro_monhan.skeleton"],Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Health:1024f,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:0.5},{id:"minecraft:movement_speed",base:0}]}
summon armor_stand 17.5 -57.7 832.5 {Tags:["fzb.intro_monhan","fzb.intro_monhan.head_carrier"],Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",Tags:["fzb.intro_monhan","fzb.intro_monhan.head"],item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:monhan/0"}},transformation:{translation:[-0.25f,0.25f,-0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}]}
summon armor_stand 17.5 -57.3 832.5 {Tags:["fzb.intro_monhan","fzb.intro_monhan.name_carrier"],Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:text_display",Tags:["fzb.intro_monhan","fzb.intro_monhan.name"],billboard:"center",view_range:0.2f,text:{translate:"zb.zombie.name.monhan",color:"#FF674E",shadow_color:-10092544}}]}
summon interaction 17.5 -57.9 832.5 {width:0.8f,height:0.8f,Tags:["fzb.intro_monhan","fzb.intro_monhan.hit"]}
scoreboard players set #intro_blink monhan 100
scoreboard players set #intro_bob monhan 0
