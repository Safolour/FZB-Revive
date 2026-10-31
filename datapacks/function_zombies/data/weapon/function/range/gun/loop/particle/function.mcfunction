# 函数：每 0.5 格（每一步）一个点，从眼睛开始（录像：浅蓝 #0099FF → 红 #FF0000，scale 0.875）
execute if score range weapon.range matches 0..9 run particle dust_color_transition{from_color:[0.0,0.6,1.0],to_color:[1.0,0.0,0.0],scale:0.875} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute if score range weapon.range matches 10.. run particle dust_color_transition{from_color:[0.0,0.6,1.0],to_color:[1.0,0.0,0.0],scale:0.875} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
