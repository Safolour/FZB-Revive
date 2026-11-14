execute if entity @s[tag=firelord.p3] run return run function zombie:skill/nether/firelord/fire/throw_p3
execute positioned ~ ~1.7 ~ facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes rotated ~-8 0 run function zombie:skill/nether/firelord/fire/create
execute positioned ~ ~1.7 ~ facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes rotated ~ 0 run function zombie:skill/nether/firelord/fire/create
execute positioned ~ ~1.7 ~ facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes rotated ~8 0 run function zombie:skill/nether/firelord/fire/create
