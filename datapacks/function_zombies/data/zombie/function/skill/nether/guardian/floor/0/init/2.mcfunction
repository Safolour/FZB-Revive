#bottom
clone 283 202 128 317 211 175 283 80 128

#floor
clone 286 217 129 314 219 173 286 90 129

execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @s ~ ~ ~ 10 0
function map:music/lava_sea/start

function zombie:skill/nether/guardian/floor/0/warning/0

#platform
function zombie:skill/nether/guardian/floor/0/platform/spawn

execute as @e[type=marker,tag=skill.guardian.floor.platform.0,limit=5,sort=random] run tag @s add target
kill @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!target]

execute as @e[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=random,tag=target] run tag @s add target0
tag @e[type=marker,tag=skill.guardian.floor.platform.0,tag=target] remove target

execute as @e[type=marker,tag=skill.guardian.floor.platform.0,limit=4,tag=!target0] at @s run function zombie:skill/nether/guardian/floor/platform/0

function zombie:skill/nether/guardian/floor/0/platform/particle

schedule function zombie:skill/nether/guardian/floor/0/init/3 10s
