scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.sword.target] if score @s origin.owner = #owner origin.owner run kill @s
execute at @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80,sort=random,limit=1] positioned ~ 107.5 ~ summon marker run function zombie:skill/creation/origin/sword/target_setup
scoreboard players set @s origin.stage 1
scoreboard players set @s origin.fx_age 0
