execute store result score x zombie.creeper.motion run data get entity @s Pos[0] 8000
execute store result score y zombie.creeper.motion run data get entity @s Pos[1] 8000
execute store result score z zombie.creeper.motion run data get entity @s Pos[2] 8000

execute store result score x0 zombie.creeper.motion run data get entity @n[type=marker,tag=skill.creeper.motion] Pos[0] 8000
execute store result score y0 zombie.creeper.motion run data get entity @n[type=marker,tag=skill.creeper.motion] Pos[1] 8000
execute store result score z0 zombie.creeper.motion run data get entity @n[type=marker,tag=skill.creeper.motion] Pos[2] 8000

scoreboard players operation x zombie.creeper.motion -= x0 zombie.creeper.motion
scoreboard players operation y zombie.creeper.motion -= y0 zombie.creeper.motion
scoreboard players set y1 zombie.creeper.motion 5000
scoreboard players operation y zombie.creeper.motion += y1 zombie.creeper.motion
scoreboard players operation z zombie.creeper.motion -= z0 zombie.creeper.motion

execute store result storage zombie creepermotion.x double 0.00008 run scoreboard players get x zombie.creeper.motion
execute store result storage zombie creepermotion.y double 0.00008 run scoreboard players get y zombie.creeper.motion
execute store result storage zombie creepermotion.z double 0.00008 run scoreboard players get z zombie.creeper.motion

function zombie:skill/creeper/creeper/motionmob0 with storage zombie creepermotion

scoreboard players reset x zombie.creeper.motion
scoreboard players reset y zombie.creeper.motion
scoreboard players reset y1 zombie.creeper.motion
scoreboard players reset z zombie.creeper.motion
scoreboard players reset x0 zombie.creeper.motion
scoreboard players reset y0 zombie.creeper.motion
scoreboard players reset z0 zombie.creeper.motion
data remove storage zombie creepermotion
