function zombie:skill/nether/guardian/warped/0/skill/twilight/spawn0
function zombie:skill/nether/guardian/warped/0/skill/twilight/spawn0
#function zombie:skill/nether/guardian/warped/0/skill/twilight/spawn0

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.twilight.tellraw.0"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
