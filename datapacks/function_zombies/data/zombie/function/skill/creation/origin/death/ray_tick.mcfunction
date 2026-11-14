# Generated; confirmed 0.7 forward/tick, yaw+6, pitch-1, two samples 0.25 apart.
# Render at n=0..100; terminate after the endpoint samples, including the 100th advance.
particle minecraft:dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:3.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
execute positioned ^ ^ ^0.25 run particle minecraft:dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:3.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
particle minecraft:squid_ink ~ ~ ~ 0 0 0 100000 1 force @a[scores={system.room=4..,particle=0}]
execute unless block ~ ~ ~ #weapon:gun_penetrable run return run function zombie:skill/creation/origin/death/ray_finish
execute if score @s origin.fx_age matches 100.. run return run function zombie:skill/creation/origin/death/ray_finish
tp @s ^ ^ ^0.7 ~6 ~-1
scoreboard players add @s origin.fx_age 1
