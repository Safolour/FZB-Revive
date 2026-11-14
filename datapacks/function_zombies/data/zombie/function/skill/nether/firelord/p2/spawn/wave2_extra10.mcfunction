function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.extra2_10
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 100
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave2
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
