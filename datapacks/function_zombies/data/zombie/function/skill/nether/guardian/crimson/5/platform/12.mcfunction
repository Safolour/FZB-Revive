
fill 283 89 130 317 89 172 lava replace lava

function zombie:skill/nether/guardian/floor/lava/killplayer

execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.clear0] at @s run function zombie:skill/nether/guardian/floor/platform/clear
kill @e[type=marker,tag=skill.guardian.floor.platform.0.target]

schedule function zombie:skill/nether/guardian/crimson/5/platform/13 15s

function zombie:skill/nether/guardian/crimson/5/guardian/blaze/init
