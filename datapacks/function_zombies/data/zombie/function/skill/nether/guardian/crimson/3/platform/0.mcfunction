
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.clear
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.up

function zombie:skill/nether/guardian/floor/0/platform/spawn4
execute as @a[scores={stat.player=1},limit=4] at @s run kill @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest]
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
tag @e[type=marker,tag=skill.guardian.floor.platform.0.target] remove skill.guardian.floor.platform.0
tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=random] add skill.guardian.floor.platform.0.target
tag @e[type=marker,tag=skill.guardian.floor.platform.0.target] remove skill.guardian.floor.platform.0

execute as @e[type=marker,tag=skill.guardian.floor.platform.0.target] at @s run function zombie:skill/nether/guardian/floor/platform/0
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.clear0

kill @e[type=marker,tag=skill.guardian,tag=skill.guardian.floor.platform.0]

schedule function zombie:skill/nether/guardian/crimson/3/platform/1 1s
