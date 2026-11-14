# 09/30 5530343: black to red, one emission per block (31 points).
particle dust_color_transition{from_color:[0,0,0],to_color:[1,0,0],scale:4} ~ ~ ~ 0.3 0.3 0.3 0 5 force @a[scores={particle=0..1},distance=..80]
scoreboard players add #laser.fx_step origin.tool_cfg 1
execute if score #laser.fx_step origin.tool_cfg matches ..30 positioned ^ ^ ^1 run function zombie:skill/creation/origin/laser/trail
