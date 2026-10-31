execute positioned 300 110 120 run function zombie:skill/nether/guardian/crimson/3/guardian/twilight/1
execute positioned 300 110 120 run function zombie:skill/nether/guardian/crimson/3/guardian/twilight/1
#execute positioned 300 110 120 run function zombie:skill/nether/guardian/crimson/3/guardian/twilight/1
#execute positioned 300 110 120 run function zombie:skill/nether/guardian/crimson/3/guardian/twilight/1

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.twilight.tellraw.0"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
