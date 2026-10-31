execute store result score x zombie.nether.ashes.meteor.motion run data get entity @s Pos[0] 3000
execute store result score z zombie.nether.ashes.meteor.motion run data get entity @s Pos[2] 3000

execute store result score x0 zombie.nether.ashes.meteor.motion run data get entity @n[type=marker,tag=target] Pos[0] 3000
execute store result score z0 zombie.nether.ashes.meteor.motion run data get entity @n[type=marker,tag=target] Pos[2] 3000

scoreboard players operation x zombie.nether.ashes.meteor.motion -= x0 zombie.nether.ashes.meteor.motion
scoreboard players operation z zombie.nether.ashes.meteor.motion -= z0 zombie.nether.ashes.meteor.motion

execute if score x zombie.nether.ashes.meteor.motion >= 0 number run scoreboard players set x0 zombie.nether.ashes.meteor.motion 9000
execute if score x zombie.nether.ashes.meteor.motion <= 0 number run scoreboard players set x0 zombie.nether.ashes.meteor.motion -9000
execute if score z zombie.nether.ashes.meteor.motion >= 0 number run scoreboard players set z0 zombie.nether.ashes.meteor.motion 9000
execute if score z zombie.nether.ashes.meteor.motion <= 0 number run scoreboard players set z0 zombie.nether.ashes.meteor.motion -9000

scoreboard players operation x0 zombie.nether.ashes.meteor.motion -= x zombie.nether.ashes.meteor.motion
scoreboard players operation z0 zombie.nether.ashes.meteor.motion -= z zombie.nether.ashes.meteor.motion

scoreboard players operation $x player_motion.api.launch = x0 zombie.nether.ashes.meteor.motion
scoreboard players set $y player_motion.api.launch 4000
scoreboard players operation $z player_motion.api.launch = z0 zombie.nether.ashes.meteor.motion
function player_motion:api/launch_xyz

scoreboard players reset x zombie.nether.ashes.meteor.motion
scoreboard players reset z zombie.nether.ashes.meteor.motion
scoreboard players reset x0 zombie.nether.ashes.meteor.motion
scoreboard players reset z0 zombie.nether.ashes.meteor.motion
