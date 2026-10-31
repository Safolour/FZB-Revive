execute as @e[type=marker,tag=spawner,tag=magma,limit=1,sort=random] at @s positioned ~ ~-2 ~ run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/spawn
execute as @e[type=marker,tag=spawner,tag=magma,limit=1,sort=random] at @s positioned ~ ~-1 ~ run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/spawn
execute as @e[type=marker,tag=spawner,tag=magma,limit=1,sort=random] at @s positioned ~ ~ ~ run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/spawn

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.meltdown.tellraw.0"}
