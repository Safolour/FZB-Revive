# Generated; no mob/zombieleft tags or living-owner dependency on a death effect.
$summon minecraft:marker ~ ~ ~ {Tags:["titan.eclipse.death.ray","titan.eclipse.death.ray.new"],Rotation:[$(yaw)f,$(pitch)f]}
scoreboard players operation @e[type=minecraft:marker,tag=titan.eclipse.death.ray.new,distance=..1,sort=nearest,limit=1] origin.owner = #owner origin.owner
scoreboard players set @e[type=minecraft:marker,tag=titan.eclipse.death.ray.new,distance=..1,sort=nearest,limit=1] origin.fx_age 0
tag @e[type=minecraft:marker,tag=titan.eclipse.death.ray.new,distance=..1] remove titan.eclipse.death.ray.new
