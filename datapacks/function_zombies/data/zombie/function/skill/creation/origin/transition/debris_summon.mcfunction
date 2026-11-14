$summon item_display ~ ~ ~ {Tags:["origin.combat_fx","origin.phase.fx","origin.phase.debris","origin.phase.debris.new"],item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"$(model)"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[$(sx)f,$(sy)f,$(sz)f],right_rotation:[0f,0f,0f,1f]},interpolation_duration:0,teleport_duration:0}
execute as @e[type=item_display,tag=origin.phase.debris.new,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s origin.owner = #owner origin.owner
execute as @e[type=item_display,tag=origin.phase.debris.new,sort=nearest,limit=1,distance=..1] run scoreboard players set @s origin.fx_age 0
$execute as @e[type=item_display,tag=origin.phase.debris.new,sort=nearest,limit=1,distance=..1] at @s run tp @s ~$(x) ~$(y) ~$(z)
tag @e[type=item_display,tag=origin.phase.debris.new] remove origin.phase.debris.new
