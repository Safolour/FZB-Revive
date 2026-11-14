execute if score @s fl.p2.shot matches 230 run playsound entity.ghast.warn hostile @a[scores={system.room=4..}] ~ ~-1 ~ 3 1
execute if score @s fl.p2.shot matches 230 run playsound entity.ghast.hurt hostile @a[scores={system.room=4..}] ~ ~-1 ~ 3 0
execute rotated ~ 0 positioned ^ ^ ^2.85 run particle dust{color:16743168,scale:1.0} ~ ~ ~ 0.5 0.5 0.5 0 2 force @a[scores={particle=0}]
execute rotated ~ 0 positioned ^ ^ ^2.85 run particle dust{color:16743168,scale:1.0} ~ ~ ~ 0.5 0.5 0.5 0 1 force @a[scores={particle=1}]
