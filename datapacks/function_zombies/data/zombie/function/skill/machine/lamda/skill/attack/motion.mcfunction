execute store result score x zombie.creeper.motion run data get entity @s Pos[0] 30000
execute store result score y zombie.creeper.motion run data get entity @s Pos[1] 30000
execute store result score z zombie.creeper.motion run data get entity @s Pos[2] 30000

execute store result score x0 zombie.creeper.motion run data get entity @n[type=marker,tag=skill.lamda.attack.knockback] Pos[0] 30000
execute store result score y0 zombie.creeper.motion run data get entity @n[type=marker,tag=skill.lamda.attack.knockback] Pos[1] 30000
execute store result score z0 zombie.creeper.motion run data get entity @n[type=marker,tag=skill.lamda.attack.knockback] Pos[2] 30000

scoreboard players operation x zombie.creeper.motion -= x0 zombie.creeper.motion
scoreboard players operation y zombie.creeper.motion -= y0 zombie.creeper.motion
scoreboard players set y1 zombie.creeper.motion 5000
scoreboard players operation y zombie.creeper.motion += y1 zombie.creeper.motion
scoreboard players operation z zombie.creeper.motion -= z0 zombie.creeper.motion

scoreboard players operation $x player_motion.api.launch = x zombie.creeper.motion
scoreboard players operation $y player_motion.api.launch = y zombie.creeper.motion
scoreboard players operation $z player_motion.api.launch = z zombie.creeper.motion
function player_motion:api/launch_xyz

scoreboard players reset x zombie.creeper.motion
scoreboard players reset y zombie.creeper.motion
scoreboard players reset y1 zombie.creeper.motion
scoreboard players reset z zombie.creeper.motion
scoreboard players reset x0 zombie.creeper.motion
scoreboard players reset y0 zombie.creeper.motion
scoreboard players reset z0 zombie.creeper.motion
