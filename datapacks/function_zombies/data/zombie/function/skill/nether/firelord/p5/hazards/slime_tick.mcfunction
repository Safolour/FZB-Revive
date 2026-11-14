scoreboard players add #p5_slime area.temperature 1
execute if score #p5_slime area.temperature matches 36.. run scoreboard players set #p5_slime area.temperature 0
execute if block 341 82 195 minecraft:slime_block positioned 341.5 83.1 195.5 run function zombie:skill/nether/firelord/p5/hazards/slime_particles
execute if block 319 85 236 minecraft:slime_block positioned 319.5 86.1 236.5 run function zombie:skill/nether/firelord/p5/hazards/slime_particles
execute if block 338 86 255 minecraft:slime_block positioned 338.5 87.1 255.5 run function zombie:skill/nether/firelord/p5/hazards/slime_particles

# Jump Boost VIII for one second, refreshed only while standing on a slime block.
execute as @a[gamemode=adventure,scores={stat.player=1},nbt={OnGround:1b}] at @s if block ~ ~-0.05 ~ minecraft:slime_block run effect give @s minecraft:jump_boost 1 7 true
