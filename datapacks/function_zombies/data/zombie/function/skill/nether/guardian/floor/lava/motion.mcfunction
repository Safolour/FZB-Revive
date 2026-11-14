
execute if entity @s[scores={zombie.nether.lava.motion_timer=1..}] run return fail
execute at @s run tp @s ~ ~ ~
scoreboard players set @s zombie.nether.lava.motion_timer 3
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 12500
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz
