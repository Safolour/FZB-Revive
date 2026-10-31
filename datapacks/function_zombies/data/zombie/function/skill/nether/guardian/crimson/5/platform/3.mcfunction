
fill 283 88 130 317 88 172 lava[level=7] replace air

schedule function zombie:skill/nether/guardian/crimson/5/platform/4 2t

execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @a ~ ~ ~ 10 0
