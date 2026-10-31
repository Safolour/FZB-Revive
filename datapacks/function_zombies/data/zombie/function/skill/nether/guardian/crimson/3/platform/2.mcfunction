execute as @e[type=marker,tag=skill.guardian.floor.platform.0.target] at @s positioned ~ ~2 ~ run function zombie:skill/nether/guardian/floor/platform/0
#tag @e[type=marker,tag=skill.guardian.floor.platform.marker.0] add skill.guardian.floor.platform.marker.clear0
tag @e[type=marker,tag=skill.guardian.floor.platform.marker.clear0] add skill.guardian.floor.platform.marker.clear

execute as @a[scores={stat.player=1}] at @s align xyz positioned ~0.5 ~-2 ~0.5 if entity @e[type=marker,tag=skill.guardian.floor.platform.marker,tag=!skill.guardian.floor.platform.marker.up,distance=..1] at @s run tp @s ~ ~1 ~

schedule function zombie:skill/nether/guardian/crimson/3/platform/3 5s


function zombie:skill/nether/guardian/crimson/3/guardian/twilight/spawn0
schedule function zombie:skill/nether/guardian/crimson/3/guardian/twilight/spawn0 6s
schedule function zombie:skill/nether/guardian/crimson/3/guardian/twilight/spawn0 12s
