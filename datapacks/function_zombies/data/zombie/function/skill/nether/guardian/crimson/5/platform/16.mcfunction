
fill 283 90 130 317 90 172 lava[level=7] replace air

schedule function zombie:skill/nether/guardian/crimson/5/platform/17 2t

execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @a ~ ~ ~ 10 0

function zombie:skill/nether/guardian/crimson/5/guardian/twilight/spawn1
schedule function zombie:skill/nether/guardian/crimson/5/guardian/twilight/spawn1 5s
schedule function zombie:skill/nether/guardian/crimson/5/guardian/twilight/spawn1 10s
