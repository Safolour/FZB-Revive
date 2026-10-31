
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.clear
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.up

function zombie:skill/nether/guardian/floor/0/platform/spawn1
execute as @a[scores={stat.player=1},limit=4] at @s run kill @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest]
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
execute as @a[scores={stat.player=1},limit=1,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=nearest] add skill.guardian.floor.platform.0.target
tag @e[type=marker,tag=skill.guardian.floor.platform.0.target] remove skill.guardian.floor.platform.0
tag @n[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=random] add skill.guardian.floor.platform.0.target
tag @e[type=marker,tag=skill.guardian.floor.platform.0.target] remove skill.guardian.floor.platform.0

execute as @e[type=marker,tag=skill.guardian.floor.platform.0.target] at @s run function zombie:skill/nether/guardian/floor/platform/0
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.clear0

kill @e[type=marker,tag=skill.guardian,tag=skill.guardian.floor.platform.0]

schedule function zombie:skill/nether/guardian/crimson/5/platform/14 1s


title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 80 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.floor.title.0"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.floor.tellraw.4"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
