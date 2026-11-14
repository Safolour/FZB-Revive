# Every successful purification, including Monhan purchases, affects each active eclipse ball.
execute in minecraft:overworld run scoreboard players add @e[type=marker,tag=firelord.eclipse.ball] fl.eclipse.purify 1
execute in minecraft:overworld as @e[type=marker,tag=firelord.eclipse.ball,scores={fl.eclipse.purify=3..}] at @s run function zombie:skill/nether/firelord/p3/eclipse/purified
