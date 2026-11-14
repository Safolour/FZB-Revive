execute if entity @s[tag=skill.firelord.big] as @a[scores={stat.player=1},gamemode=adventure,distance=..0.9] run function zombie:skill/nether/firelord/fire/hit_big
execute unless entity @s[tag=skill.firelord.big] as @a[scores={stat.player=1},gamemode=adventure,distance=..0.65] run function zombie:skill/nether/firelord/fire/hit_small
execute if entity @s[tag=skill.firelord.big] at @s run return run function zombie:skill/nether/firelord/fire/big_split
function zombie:skill/nether/firelord/fire/remove
