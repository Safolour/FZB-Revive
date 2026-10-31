tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.floor.tellraw.1"}

execute as @a[scores={system.room=4..}] at @s run playsound entity.elder_guardian.ambient record @s ~ ~ ~ 10 1

schedule function zombie:skill/nether/guardian/floor/0/init/2 7s
