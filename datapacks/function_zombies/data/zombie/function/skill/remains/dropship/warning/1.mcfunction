execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.dropship.tellraw.0"}

schedule function zombie:skill/remains/dropship/warning/2 1s
