# Generated; explicit sample angles avoid inventing an unobserved random distribution.
$summon minecraft:marker ~ ~ ~ {Tags:["origin.combat_fx","origin.death.fx","origin.death.ray","origin.death.ray.new"],Rotation:[$(yaw)f,$(pitch)f]}
scoreboard players operation @e[type=minecraft:marker,tag=origin.death.ray.new,distance=..1,sort=nearest,limit=1] origin.owner = #owner origin.owner
scoreboard players set @e[type=minecraft:marker,tag=origin.death.ray.new,distance=..1,sort=nearest,limit=1] origin.fx_age 0
tag @e[type=minecraft:marker,tag=origin.death.ray.new,distance=..1] remove origin.death.ray.new
