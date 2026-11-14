
playsound entity.wither.hurt record @a ~ ~ ~ 3 2
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ~ ~ ~ 1.5 1.5 1.5 0 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ~ ~ ~ 1.5 1.5 1.5 0 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ~ ~ ~ 1.5 1.5 1.5 0 15 force @a[scores={particle=1}]

