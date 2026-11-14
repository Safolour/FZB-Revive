scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #sword.active origin.owner 0
execute as @e[type=armor_stand,tag=origin.sword.anchor] if score @s origin.owner = #owner origin.owner run scoreboard players set #sword.active origin.owner 1
execute if score #sword.active origin.owner matches 1 run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return 0
execute store result score @s origin.sword_cd run random value 440..600
execute as @a[scores={system.room=4..},distance=..80] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 2 1
title @a[scores={system.room=4..},distance=..80] times 0 60 10
title @a[scores={system.room=4..},distance=..80] subtitle {translate:"zb.zombie.origin.title.5"}
title @a[scores={system.room=4..},distance=..80] title {translate:"zb.zombie.laser"}
execute at @p[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] positioned ~ ~2 ~ summon armor_stand run function zombie:skill/creation/origin/sword/setup
