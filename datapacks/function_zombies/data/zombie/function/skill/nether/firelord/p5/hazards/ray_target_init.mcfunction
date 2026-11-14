# The replay carrier is an invisible, stationary skeleton. Custom health is configurable.
tag @s add p5.hazard
tag @s add p5.raytarget
tag @s add mob
tag @s add hitable
tag @s remove nogold
data merge entity @s {NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b}
attribute @s minecraft:scale base set 0.5
effect give @s minecraft:invisibility infinite 0 true
scoreboard players set @s zombie.armor 0
scoreboard players set @s zombie.critical_extra 100
scoreboard players operation @s zombie.health = #p5_ray_hp area.temperature
scoreboard players operation @s zombie.max_health = #p5_ray_hp area.temperature
function zombie:summon
