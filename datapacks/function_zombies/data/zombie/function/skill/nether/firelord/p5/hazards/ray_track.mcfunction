execute store result score @s p5.now run data get entity @s Pos[0] 1000
execute unless score @s p5.posx matches -30000000..30000000 run scoreboard players operation @s p5.posx = @s p5.now
scoreboard players operation @s p5.velx = @s p5.now
scoreboard players operation @s p5.velx -= @s p5.posx
scoreboard players operation @s p5.posx = @s p5.now
execute store result score @s p5.now run data get entity @s Pos[2] 1000
execute unless score @s p5.posz matches -30000000..30000000 run scoreboard players operation @s p5.posz = @s p5.now
scoreboard players operation @s p5.velz = @s p5.now
scoreboard players operation @s p5.velz -= @s p5.posz
scoreboard players operation @s p5.posz = @s p5.now
# Cap teleport artifacts to 0.6 blocks/tick.
execute if score @s p5.velx matches 601.. run scoreboard players set @s p5.velx 600
execute if score @s p5.velx matches ..-601 run scoreboard players set @s p5.velx -600
execute if score @s p5.velz matches 601.. run scoreboard players set @s p5.velz 600
execute if score @s p5.velz matches ..-601 run scoreboard players set @s p5.velz -600
