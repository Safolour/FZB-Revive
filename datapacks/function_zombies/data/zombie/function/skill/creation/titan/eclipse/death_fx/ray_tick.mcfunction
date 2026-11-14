# Generated; first samples appear on the next system tick after the burst.
# 09/30: 0.6 forward/tick, yaw+6, pitch+3 (vanilla pitch clamp), samples 0.25 apart.
particle minecraft:dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:3.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
execute positioned ^ ^ ^0.25 run particle minecraft:dust_color_transition{from_color:[0.5725490196078431,0.0,0.0],to_color:[0.0,0.0,0.0],scale:3.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
particle minecraft:squid_ink ~ ~ ~ 0 0 0 100000 1 force @a[scores={system.room=4..,particle=0}]
execute unless block ~ ~ ~ #weapon:gun_penetrable run return run function zombie:skill/creation/titan/eclipse/death_fx/ray_finish
# All recorded rays hit geometry within 74 samples; 100 advances is only a cleanup bound.
execute if score @s origin.fx_age matches 100.. run return run function zombie:skill/creation/titan/eclipse/death_fx/ray_finish
tp @s ^ ^ ^0.6 ~6 ~3
scoreboard players add @s origin.fx_age 1
