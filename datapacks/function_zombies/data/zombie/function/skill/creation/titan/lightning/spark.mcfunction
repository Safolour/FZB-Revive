# Reproduce the vanilla 5-point contact separately. Tagged bolts use the existing visual-only mod.
summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt","titan.lightning.bolt"]}
execute positioned ~-3 ~-3 ~-3 as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},dx=5,dy=11,dz=5] at @s run function zombie:skill/creation/titan/lightning/spark_hit
