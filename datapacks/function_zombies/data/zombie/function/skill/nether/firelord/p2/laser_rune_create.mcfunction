summon item_display ~ ~ ~ {Tags:["mob.skill","firelord.p2.laser_rune","firelord.p2.laser_rune.new"],billboard:"center",brightness:{block:15,sky:15},item:{id:"diamond",count:1,components:{"minecraft:item_model":"custom:particle/nightmare/0"}},transformation:{translation:[0f,0f,0f],scale:[3f,3f,0.0001f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=item_display,tag=firelord.p2.laser_rune.new,sort=nearest,limit=1] zombie.skill_timer 0
tag @e[type=item_display,tag=firelord.p2.laser_rune.new,sort=nearest,limit=1] remove firelord.p2.laser_rune.new
