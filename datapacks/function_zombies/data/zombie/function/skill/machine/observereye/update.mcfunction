scoreboard players reset @a[scores={system.room=4}] zombie.observereye
scoreboard players set @a[scores={stat.player=1},sort=random,limit=1,gamemode=adventure] zombie.observereye 0
tp @n[type=marker,tag=skill.observereye.target] @p[scores={zombie.observereye=0}]
