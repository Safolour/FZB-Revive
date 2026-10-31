execute as @e[type=marker,tag=skill.guardian.floor.platform.0.target] at @s positioned ~ ~1 ~ run function zombie:skill/nether/guardian/floor/platform/0
tag @e[type=marker,tag=skill.guardian.floor.platform.marker] add skill.guardian.floor.platform.marker.clear0

execute as @a[scores={stat.player=1}] at @s align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=marker,tag=skill.guardian.floor.platform.marker,tag=!skill.guardian.floor.platform.marker.up,distance=..1] at @s run tp @s ~ ~1 ~

schedule function zombie:skill/nether/guardian/crimson/3/platform/15 3s
