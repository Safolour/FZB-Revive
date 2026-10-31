execute as @a[scores={stat.player=1},limit=4,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.marker,limit=1,distance=..4,sort=furthest] add skill.guardian.floor.platform.marker.target

tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.clear

function zombie:skill/nether/guardian/floor/0/platform/spawn3
tag @e[type=marker,tag=skill.guardian.floor.platform.0] add skill.guardian.floor.platform.marker.meltdown
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.target] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,sort=nearest,limit=1] add skill.guardian.floor.platform.marker.target0
tag @e[type=marker,tag=skill.guardian.floor.platform.0,sort=random,limit=1,tag=!skill.guardian.floor.platform.marker.target0] add skill.guardian.floor.platform.marker.target0

kill @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!skill.guardian.floor.platform.marker.target0]

execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.target0] at @s run function zombie:skill/nether/guardian/floor/platform/0

kill @e[type=marker,tag=skill.guardian.floor.platform.0]
schedule function zombie:skill/nether/guardian/warped/1/platform/1 2t



execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @a ~ ~ ~ 10 0


function zombie:skill/nether/guardian/warped/1/guardian/blaze/init

#execute positioned 300 110 120 run function zombie:skill/nether/guardian/warped/1/guardian/twilight/spawn0

