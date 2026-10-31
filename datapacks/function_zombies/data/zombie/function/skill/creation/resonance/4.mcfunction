
effect clear @s glowing
team join mob @s
effect clear @s slowness
data merge entity @s {NoAI:0b}
tag @s remove skill.creation.resonance.0
tag @s remove cantgyro

particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle firework ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]

playsound block.bell.use record @a ~ ~ ~ 2 0.9
playsound entity.allay.death record @a ~ ~ ~ 2 1
playsound block.bell.resonate record @a ~ ~ ~ 2 1

effect give @s slowness 4 0 true
effect give @s slowness 3 1 true
effect give @s slowness 2 2 true
effect give @s slowness 1 3 true

execute positioned ~ ~1 ~ run function zombie:skill/creation/resonance/particle/0
