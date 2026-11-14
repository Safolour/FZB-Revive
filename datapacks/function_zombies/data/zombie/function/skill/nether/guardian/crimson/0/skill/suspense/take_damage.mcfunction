
execute unless score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a[scores={particle=1}]

playsound entity.guardian.hurt record @a ~ ~ ~ 1.5 1
