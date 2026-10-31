scoreboard players reset end zombie.resonance
execute as @e[type=zombie,tag=skill.creation.resonance] at @s run function zombie:skill/creation/resonance/4
scoreboard players set score zombie.resonance 0

execute as @a[scores={system.room=4..}] at @s run playsound block.end_portal.spawn record @s ~ ~ ~ 10 2
execute as @a[scores={system.room=4..}] at @s run playsound block.end_portal.spawn record @s ~ ~ ~ 10 2

execute as @e[type=zombie,tag=skill.creation.resonance] at @s positioned ~ ~1 ~ run function zombie:skill/creation/resonance/particle/1

execute store result score count zombie.resonance if entity @e[type=zombie,tag=skill.creation.resonance]
execute as @a[scores={stat.player=1}] at @s run function zombie:skill/creation/resonance/damage

tellraw @a[scores={system.room=4..}] {translate:zb.zombie.resonance.1}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
