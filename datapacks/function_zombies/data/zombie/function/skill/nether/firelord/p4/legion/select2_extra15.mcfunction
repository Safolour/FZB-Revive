function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p4.legion.target
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.simultaneous
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p4.legion.wave2
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 91
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
