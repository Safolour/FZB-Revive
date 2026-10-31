
fill 283 91 130 317 91 172 lava replace lava

function zombie:skill/nether/guardian/floor/lava/killplayer

execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.clear0] at @s run function zombie:skill/nether/guardian/floor/platform/clear
kill @e[type=marker,tag=skill.guardian.floor.platform.0.target]

schedule function zombie:skill/nether/guardian/crimson/5/platform/26 15s
