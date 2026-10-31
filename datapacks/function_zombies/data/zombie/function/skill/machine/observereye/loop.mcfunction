scoreboard players add loop zombie.observereye 1
tp @s ^ ^ ^1
particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @a[scores={stat.player=1},distance=..1.5] as @a[scores={stat.player=1},distance=..1.5] run scoreboard players set @s zombie.observereye.damage 1
execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/machine/observereye/block
execute if score loop zombie.observereye matches ..100 at @s run function zombie:skill/machine/observereye/loop
