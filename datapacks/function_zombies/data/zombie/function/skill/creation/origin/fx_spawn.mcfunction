summon item_display ~ ~ ~ {Tags:["origin.fx","origin.fx.new"],item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:block"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[5f,5f,5f],right_rotation:[0f,0f,0f,1f]},view_range:1f}
execute store result score #origin.model zombie.skill_timer run random value 0..3
execute if score #origin.model zombie.skill_timer matches 1 run data modify entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] item.components."minecraft:item_model" set value "custom:block0"
execute if score #origin.model zombie.skill_timer matches 2 run data modify entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] item.components."minecraft:item_model" set value "custom:block1"
execute if score #origin.model zombie.skill_timer matches 3 run data modify entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] item.components."minecraft:item_model" set value "custom:block2"
execute store result entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] transformation.scale[0] float 1 run random value 5..10
execute store result entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] transformation.scale[1] float 1 run random value 5..10
execute store result entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] transformation.scale[2] float 1 run random value 5..10
execute store result entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] transformation.translation[0] float 0.1 run random value -6..6
execute store result entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] transformation.translation[1] float 0.1 run random value 0..25
execute store result entity @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] transformation.translation[2] float 0.1 run random value -6..6
scoreboard players set @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] zombie.skill_timer 0
tag @e[type=item_display,tag=origin.fx.new,sort=nearest,limit=1,distance=..1] remove origin.fx.new
