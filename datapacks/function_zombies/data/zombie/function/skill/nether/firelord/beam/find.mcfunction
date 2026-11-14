execute if score @s zombie.skill_timer matches 96.. run return run kill @s
execute if block ~ ~-1 ~ air run return run function zombie:skill/nether/firelord/beam/down
execute if block ~ ~-1 ~ cave_air run return run function zombie:skill/nether/firelord/beam/down
execute if block ~ ~-1 ~ void_air run return run function zombie:skill/nether/firelord/beam/down
execute if block ~ ~-1 ~ fire run return run function zombie:skill/nether/firelord/beam/down
execute if block ~ ~-1 ~ soul_fire run return run function zombie:skill/nether/firelord/beam/down
tag @s remove firelord.beam.find
tag @s add mob.skill
tag @s add skill.firelord.beam
scoreboard players set @s zombie.skill_timer 0
