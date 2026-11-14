scoreboard players set #p2div zombie.skill_timer 12
scoreboard players set #p2inertia zombie.skill_timer 15
scoreboard players set #p2avg zombie.skill_timer 16
scoreboard players set #p2scale zombie.skill_timer 10
execute store result score #p2goal zombie.motionx run data get entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] Pos[0] 100
execute store result score #p2pos zombie.motionx run data get entity @s Pos[0] 100
scoreboard players operation #p2goal zombie.motionx -= #p2pos zombie.motionx
scoreboard players operation #p2goal zombie.motionx *= #p2scale zombie.skill_timer
scoreboard players operation #p2goal zombie.motionx /= #p2div zombie.skill_timer
execute if score #p2goal zombie.motionx matches 161.. run scoreboard players set #p2goal zombie.motionx 160
execute if score #p2goal zombie.motionx matches ..-161 run scoreboard players set #p2goal zombie.motionx -160
scoreboard players operation @s zombie.motionx *= #p2inertia zombie.skill_timer
scoreboard players operation @s zombie.motionx += #p2goal zombie.motionx
scoreboard players operation @s zombie.motionx /= #p2avg zombie.skill_timer
execute store result score #p2abs zombie.motionx run data get entity @s Pos[0] 1000
scoreboard players operation #p2abs zombie.motionx += @s zombie.motionx
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #p2abs zombie.motionx
execute store result score #p2goal zombie.motiony run data get entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] Pos[1] 100
execute store result score #p2pos zombie.motiony run data get entity @s Pos[1] 100
scoreboard players operation #p2goal zombie.motiony -= #p2pos zombie.motiony
scoreboard players operation #p2goal zombie.motiony *= #p2scale zombie.skill_timer
scoreboard players operation #p2goal zombie.motiony /= #p2div zombie.skill_timer
execute if score #p2goal zombie.motiony matches 81.. run scoreboard players set #p2goal zombie.motiony 80
execute if score #p2goal zombie.motiony matches ..-81 run scoreboard players set #p2goal zombie.motiony -80
scoreboard players operation @s zombie.motiony *= #p2inertia zombie.skill_timer
scoreboard players operation @s zombie.motiony += #p2goal zombie.motiony
scoreboard players operation @s zombie.motiony /= #p2avg zombie.skill_timer
execute store result score #p2abs zombie.motiony run data get entity @s Pos[1] 1000
scoreboard players operation #p2abs zombie.motiony += @s zombie.motiony
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #p2abs zombie.motiony
execute store result score #p2goal zombie.motionz run data get entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] Pos[2] 100
execute store result score #p2pos zombie.motionz run data get entity @s Pos[2] 100
scoreboard players operation #p2goal zombie.motionz -= #p2pos zombie.motionz
scoreboard players operation #p2goal zombie.motionz *= #p2scale zombie.skill_timer
scoreboard players operation #p2goal zombie.motionz /= #p2div zombie.skill_timer
execute if score #p2goal zombie.motionz matches 161.. run scoreboard players set #p2goal zombie.motionz 160
execute if score #p2goal zombie.motionz matches ..-161 run scoreboard players set #p2goal zombie.motionz -160
scoreboard players operation @s zombie.motionz *= #p2inertia zombie.skill_timer
scoreboard players operation @s zombie.motionz += #p2goal zombie.motionz
scoreboard players operation @s zombie.motionz /= #p2avg zombie.skill_timer
execute store result score #p2abs zombie.motionz run data get entity @s Pos[2] 1000
scoreboard players operation #p2abs zombie.motionz += @s zombie.motionz
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #p2abs zombie.motionz
execute at @s facing entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] feet run tp @s ~ ~ ~ ~ ~
