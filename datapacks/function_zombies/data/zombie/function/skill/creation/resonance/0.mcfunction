
scoreboard players set end zombie.resonance 300
execute as @e[type=zombie,tag=skill.creation.resonance] at @s run function zombie:skill/creation/resonance/1

execute as @a[scores={system.room=4..}] at @s run playsound block.bell.resonate record @s ~ ~ ~ 10 0

tellraw @a[scores={system.room=4..}] {translate:zb.zombie.resonance.0}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
