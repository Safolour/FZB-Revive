function zombie:skill/nether/guardian/floor/0/platform/spawn2

tag @e[type=marker,tag=skill.guardian.floor.platform.0,sort=random,limit=2] add skill.guardian.floor.platform.0.spawn0

tag @e[type=marker,tag=skill.guardian.floor.platform.0.spawn0,sort=random,limit=1] add skill.guardian.floor.platform.0.spawn1
tag @e[type=marker,tag=skill.guardian.floor.platform.0.spawn0,tag=!skill.guardian.floor.platform.0.spawn1] add skill.guardian.floor.platform.0.spawn2

execute as @n[type=marker,tag=skill.guardian.floor.platform.0.spawn1] at @s positioned ~ ~-4 ~ run function zombie:skill/nether/guardian/crimson/4/spawn/0
execute as @n[type=marker,tag=skill.guardian.floor.platform.0.spawn2] at @s positioned ~ ~-4 ~ run function zombie:skill/nether/guardian/warped/4/spawn/0


tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn.0",with:[{"translate":"zb.zombie.name.crimsonguardian"}],color:"#dc143c"}
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn.0",with:[{"translate":"zb.zombie.name.warpedguardian"}],color:"#008b8b"}

summon lightning_bolt 300 110 120
summon lightning_bolt 300 110 120
summon lightning_bolt 300 110 120
summon lightning_bolt 300 110 120

kill @e[type=marker,tag=skill.guardian,tag=skill.guardian.floor.platform.0]

execute as @n[type=guardian,tag=skill.crimsonguardian] at @s run function zombie:skill/nether/guardian/crimson/4/skill/floatup/init
execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/4/skill/floatup/init
