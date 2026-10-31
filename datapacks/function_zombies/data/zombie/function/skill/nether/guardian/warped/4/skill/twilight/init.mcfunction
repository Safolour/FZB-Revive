function zombie:skill/nether/guardian/warped/4/skill/twilight/spawn
function zombie:skill/nether/guardian/warped/4/skill/twilight/spawn
#function zombie:skill/nether/guardian/warped/4/skill/twilight/spawn

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.twilight.tellraw.0"}

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
