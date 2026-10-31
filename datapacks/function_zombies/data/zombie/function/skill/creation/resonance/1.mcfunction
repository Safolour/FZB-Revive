
effect give @s glowing infinite 0 true
team join zombie.creation.resonance @s
effect give @s slowness infinite 255 true
data merge entity @s {NoAI:1b}
tag @s add skill.creation.resonance.0
tag @s add cantgyro

scoreboard players add end zombie.resonance 20

execute positioned ~ ~1 ~ run function zombie:skill/creation/resonance/particle/0

particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

playsound block.enchantment_table.use record @a ~ ~ ~ 2 0
playsound item.trident.thunder record @a ~ ~ ~ 2 0
playsound block.bell.resonate record @a ~ ~ ~ 2 1
