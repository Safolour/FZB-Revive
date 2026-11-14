function zombie:skill/nether/firelord/p5/breach/impact
# Reproduce only the destroyed positions recorded in the closed core gate.
execute if data storage map:r40 p5_closed run setblock 299 93 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 299 93 172 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 299 94 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 299 95 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 92 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 92 172 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 93 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 93 172 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 94 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 94 172 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 95 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 300 95 172 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 301 92 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 301 93 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 301 94 171 minecraft:barrier
execute if data storage map:r40 p5_closed run setblock 301 94 172 minecraft:barrier
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.12"}
execute as @a[scores={system.room=4..}] at @s run playsound entity.ghast.hurt hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound entity.ghast.hurt hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound entity.ghast.hurt hostile @s ~ ~ ~ 2 0
execute as @e[type=ghast,tag=firelord.p2.ghast,limit=1] at @s run particle flame ~ ~2 ~ 0 0 0 0.2 2 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle as @e[type=ghast,tag=firelord.p2.ghast,limit=1] at @s run particle flame ~ ~2 ~ 0 0 0 0.2 2 force @a[scores={particle=1}]
# Mount the Fire Lord and start the post-breach pursuit.
tag @e[type=ghast,tag=firelord.p2.ghast] add firelord.p5.breach_wait
execute as @e[type=ghast,tag=firelord.p2.ghast] run data merge entity @s {Motion:[0d,0d,0d]}
execute as @e[type=zombie,tag=skill.firelord,tag=firelord.p5,limit=1] run attribute @s minecraft:scale base set 1
execute as @e[type=zombie,tag=skill.firelord,tag=firelord.p5,limit=1] run ride @s mount @e[type=ghast,tag=firelord.p2.ghast,limit=1]
execute as @e[type=ghast,tag=firelord.p2.ghast,limit=1] at @s run function zombie:skill/nether/firelord/p5/chase/start
data modify storage map:r40 p5_breached set value 1b
