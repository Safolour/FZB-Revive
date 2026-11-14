execute store result score @s area.temperature run random value 180..250
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.wither.shoot hostile @a ~ ~-0.5 ~ 1.5 2
# One fixed intercept estimate based on distance; the projectile does not track.
scoreboard players set #p5_lead area.temperature 5
execute if entity @p[gamemode=adventure,scores={stat.player=1},distance=5..10] run scoreboard players set #p5_lead area.temperature 15
execute if entity @p[gamemode=adventure,scores={stat.player=1},distance=10..15] run scoreboard players set #p5_lead area.temperature 25
execute if entity @p[gamemode=adventure,scores={stat.player=1},distance=15..20] run scoreboard players set #p5_lead area.temperature 35
execute if entity @p[gamemode=adventure,scores={stat.player=1},distance=20..25] run scoreboard players set #p5_lead area.temperature 45
execute if entity @p[gamemode=adventure,scores={stat.player=1},distance=25..32] run scoreboard players set #p5_lead area.temperature 55
execute as @p[gamemode=adventure,scores={stat.player=1},distance=..32] at @s run function zombie:skill/nether/firelord/p5/hazards/ray_aim
execute if entity @e[type=marker,tag=p5.rayaim,limit=1] facing entity @e[type=marker,tag=p5.rayaim,limit=1] eyes summon minecraft:marker run function zombie:skill/nether/firelord/p5/hazards/ray_init
kill @e[type=marker,tag=p5.rayaim]
