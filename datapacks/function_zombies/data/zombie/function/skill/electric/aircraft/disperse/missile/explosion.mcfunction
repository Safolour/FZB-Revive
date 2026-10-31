particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle flash ~ ~ ~ 0 0 0 0 5 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]

function zombie:skill/electric/aircraft/disperse/death/particle

playsound minecraft:block.respawn_anchor.deplete record @a ~ ~ ~ 2 0
playsound minecraft:block.respawn_anchor.deplete record @a ~ ~ ~ 2 0
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 0

execute as @a[scores={stat.player=1},distance=..3,gamemode=adventure] run function zombie:skill/electric/aircraft/disperse/missile/damage

scoreboard players reset @s zombie.electric.aircraft.disperse.missile.particle
kill @s
