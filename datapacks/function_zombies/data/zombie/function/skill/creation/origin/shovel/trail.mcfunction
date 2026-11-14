# Four red-to-black samples follow the fixed shot axis. During the short windup only the first point is emitted.
particle dust_color_transition{from_color:[1,0,0],to_color:[0,0,0],scale:0.9} ^ ^ ^ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.fx_age matches 10.. run particle dust_color_transition{from_color:[1,0,0],to_color:[0,0,0],scale:0.9} ^ ^ ^0.25 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.fx_age matches 10.. run particle dust_color_transition{from_color:[1,0,0],to_color:[0,0,0],scale:0.9} ^ ^ ^0.50 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.fx_age matches 10.. run particle dust_color_transition{from_color:[1,0,0],to_color:[0,0,0],scale:0.9} ^ ^ ^0.75 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
