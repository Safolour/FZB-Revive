$summon item_display ~ ~ ~ {Tags:["origin.combat_fx","origin.phase.fx","origin.phase.line","origin.phase.fx.new"],item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"$(model)"}},transformation:{translation:[0f,-15f,0f],left_rotation:[0f,0f,0.9589243f,-0.2836621f],scale:[1000f,1f,1f],right_rotation:[0f,0f,0f,1f]},view_range:1f,interpolation_duration:0,teleport_duration:0}
execute as @e[type=item_display,tag=origin.phase.fx.new,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s origin.owner = #owner origin.owner
execute as @e[type=item_display,tag=origin.phase.fx.new,sort=nearest,limit=1,distance=..1] run scoreboard players set @s origin.fx_age 0
$execute as @e[type=item_display,tag=origin.phase.fx.new,sort=nearest,limit=1,distance=..1] at @s run tp @s $(x).0 $(y).0 $(z).0 $(yaw) 0
tag @e[type=item_display,tag=origin.phase.fx.new] remove origin.phase.fx.new
