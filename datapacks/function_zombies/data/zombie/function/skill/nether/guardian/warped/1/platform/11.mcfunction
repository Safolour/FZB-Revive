execute as @a[scores={stat.player=1},limit=5,sort=random] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.marker,limit=1,distance=..4,sort=furthest] add skill.guardian.floor.platform.marker.target

tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.target1

function zombie:skill/nether/guardian/floor/0/platform/spawn4
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.target] at @s run tag @n[type=marker,tag=skill.guardian.floor.platform.0,sort=nearest,limit=1] add skill.guardian.floor.platform.marker.target0
tag @e[type=marker,tag=skill.guardian.floor.platform.0,sort=random,limit=1] add skill.guardian.floor.platform.marker.target0

kill @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!skill.guardian.floor.platform.marker.target0]

execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.target0] at @s run function zombie:skill/nether/guardian/floor/platform/0

kill @e[type=marker,tag=skill.guardian.floor.platform.0]

schedule function zombie:skill/nether/guardian/warped/1/platform/12 2t

execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @a ~ ~ ~ 10 0

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 80 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.guardian.title.fire"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.guardian.floor.title.0"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.floor.tellraw.3"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1



function zombie:skill/nether/guardian/warped/1/guardian/blaze/init
schedule function zombie:skill/nether/guardian/warped/1/guardian/meltdown/init 7s

execute positioned 300 110 120 run function zombie:skill/nether/guardian/warped/1/guardian/twilight/spawn1
#schedule function zombie:skill/nether/guardian/warped/1/guardian/twilight/spawn1 10s

