execute if entity @s[tag=skill.creation.destruction.explosion] run return fail
tag @s add skill.creation.destruction.explosion
scoreboard players set @s zombie.creation.destruction 10000
effect give @s speed infinite 2 true
particle lava ~ ~1.5 ~ 0 0 0 0 5 force @a[scores={particle=0}]
playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
