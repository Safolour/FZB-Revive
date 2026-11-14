scoreboard players set @s fl.circleclock 0
execute if entity @s[tag=firelord.p3] run tag @s add firelord.p3.eclipse.next
execute if entity @s[tag=firelord.p3] at @s run function zombie:skill/nether/firelord/p3/meteor/queue
tag @s add firelord.circle.active
scoreboard players set @s firelord.circle 0
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.2"}
tag @a remove firelord.circle.owner
tag @a remove firelord.circle.r1
tag @a remove firelord.circle.r2
tag @a remove firelord.circle.b1
tag @a remove firelord.circle.b2
tag @a[scores={stat.player=1},gamemode=adventure,distance=..64,sort=random,limit=1] add firelord.circle.r1
tag @a[tag=firelord.circle.r1] add firelord.circle.owner
execute if entity @a[scores={stat.player=1},gamemode=adventure,distance=..64,tag=!firelord.circle.owner] run function zombie:skill/nether/firelord/circle/multi
execute unless entity @a[tag=firelord.circle.b1] run function zombie:skill/nether/firelord/circle/single
execute as @a[tag=firelord.circle.r1] at @s run function zombie:skill/nether/firelord/circle/make_r1
execute as @a[tag=firelord.circle.b1] at @s run function zombie:skill/nether/firelord/circle/make_b1
execute as @a[tag=firelord.circle.r1] at @s run function zombie:skill/nether/firelord/circle/flame_burst
execute if entity @s[tag=firelord.circle.r2] at @s run function zombie:skill/nether/firelord/circle/flame_burst
execute as @a[tag=firelord.circle.b1] at @s run function zombie:skill/nether/firelord/circle/soul_flame_burst
execute if entity @s[tag=firelord.circle.b2] at @s run function zombie:skill/nether/firelord/circle/soul_flame_burst
execute as @a[tag=firelord.circle.r1] at @s run playsound minecraft:item.trident.return hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
execute as @a[tag=firelord.circle.b1] at @s run playsound minecraft:item.trident.return hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
execute if entity @s[tag=firelord.circle.r2] at @s run playsound minecraft:item.trident.return hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
execute if entity @s[tag=firelord.circle.b2] at @s run playsound minecraft:item.trident.return hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
tellraw @a[tag=firelord.circle.r1] {translate:"zb.zombie.firelord.2.0",with:["20"]}
tellraw @a[tag=firelord.circle.b1] {translate:"zb.zombie.firelord.2.1",with:["20"]}
