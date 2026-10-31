scoreboard players reset end zombie.resonance
execute as @e[type=zombie,tag=skill.creation.resonance] at @s run function zombie:skill/creation/resonance/4
scoreboard players set score zombie.resonance 0

effect give @a[scores={stat.player=1}] absorption 10 2 false

execute as @e[type=zombie,tag=skill.creation.resonance] at @s positioned ~ ~1 ~ run function zombie:skill/creation/resonance/particle/0
execute as @e[type=zombie,tag=skill.creation.resonance] at @s run playsound entity.player.levelup record @a ~ ~ ~ 2 0

tellraw @a[scores={system.room=4..}] {translate:zb.zombie.resonance.2}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
