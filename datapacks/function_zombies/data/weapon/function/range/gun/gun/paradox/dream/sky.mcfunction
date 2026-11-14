$execute positioned $(cx) 144 18058 positioned ~0.5 ~ ~0.5 run summon item_display ~ ~ ~ {Tags:["gun","paradox.sky","paradox.new_sky"],view_range:4.0f,item:{id:"diamond",count:1,components:{"minecraft:item_model":"custom:color/8"}},transformation:{scale:[-140.0f,-140.0f,-140.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
scoreboard players operation @e[type=item_display,tag=paradox.new_sky,limit=1] weapon.pd_owner = @s uuid
tag @e[type=item_display,tag=paradox.new_sky] remove paradox.new_sky
