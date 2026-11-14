execute store result score #p2targetx zombie.motionx run random value 29100..31000
execute store result score #p2targety zombie.motiony run random value 9700..10600
execute store result score #p2targetz zombie.motionz run random value 13400..16600
execute store result entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] Pos[0] double 0.01 run scoreboard players get #p2targetx zombie.motionx
execute store result entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] Pos[1] double 0.01 run scoreboard players get #p2targety zombie.motiony
execute store result entity @e[type=marker,tag=firelord.p2.ghast.target,limit=1] Pos[2] double 0.01 run scoreboard players get #p2targetz zombie.motionz
scoreboard players set @s zombie.skill_timer 0
