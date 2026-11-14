kill @e[type=marker,tag=firelord.p2.spawn.target]
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave10
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 37
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave11
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 51
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave12
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 61
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave13
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 70
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave14
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 74
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave15
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 76
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave16
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 79
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
function zombie:skill/nether/firelord/p2/spawn/choose
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.wave17
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motiony 0
scoreboard players set @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] zombie.motionz 81
tag @e[type=marker,tag=firelord.p2.spawn.target,tag=!firelord.p2.spawn.assigned,limit=1] add firelord.p2.spawn.assigned
execute if score #firelord.p2.count zombie.motionz matches 9.. run function zombie:skill/nether/firelord/p2/spawn/wave1_extra8
execute if score #firelord.p2.count zombie.motionz matches 10.. run function zombie:skill/nether/firelord/p2/spawn/wave1_extra9
execute if score #firelord.p2.count zombie.motionz matches 11.. run function zombie:skill/nether/firelord/p2/spawn/wave1_extra10
execute if score #firelord.p2.count zombie.motionz matches 12.. run function zombie:skill/nether/firelord/p2/spawn/wave1_extra11
execute if score #firelord.p2.count zombie.motionz matches 13.. run function zombie:skill/nether/firelord/p2/spawn/wave1_extra12
execute if score #firelord.p2.count zombie.motionz matches 14.. run function zombie:skill/nether/firelord/p2/spawn/wave1_extra13
