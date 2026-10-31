#platform clear
kill @e[type=marker,tag=skill.guardian.floor.platform.marker]

#lava floor
clone 286 212 129 314 214 173 286 90 129

execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @s ~ ~ ~ 10 0

execute as @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!target0] at @s run function zombie:skill/nether/guardian/floor/platform/0

schedule clear zombie:skill/nether/guardian/floor/0/platform/particle

schedule function zombie:skill/nether/guardian/floor/0/init/4 2s
