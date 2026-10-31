
fill 283 85 130 317 85 172 lava replace lava

function zombie:skill/nether/guardian/floor/lava/killplayer

execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.clear0] at @s run function zombie:skill/nether/guardian/floor/platform/clear
kill @e[type=marker,tag=skill.guardian.floor.platform.0.target]

schedule function zombie:skill/nether/guardian/crimson/3/platform/13 15s

function zombie:skill/nether/guardian/crimson/3/guardian/blaze/init
