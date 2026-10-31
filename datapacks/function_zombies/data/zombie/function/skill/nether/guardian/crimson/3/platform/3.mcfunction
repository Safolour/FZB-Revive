
fill 283 84 130 317 84 172 lava[level=7] replace air

schedule function zombie:skill/nether/guardian/crimson/3/platform/4 2t

execute as @a[scores={system.room=4..}] at @s run playsound block.lava.extinguish record @a ~ ~ ~ 10 0
