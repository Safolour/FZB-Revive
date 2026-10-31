tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.floor.tellraw.0"}

#execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1

#schedule function zombie:skill/nether/guardian/floor/0/warning/2 20t
