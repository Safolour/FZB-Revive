schedule clear zombie:skill/machine/observereye/start0
scoreboard players set @e[type=marker,tag=skill.observereye] zombie.observereye 0

scoreboard players set @n[type=marker,tag=skill.observereye,sort=random,scores={zombie.observereye=0}] zombie.observereye 1

#schedule function zombie:skill/machine/observereye/start0 10s
