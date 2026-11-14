execute store result score #fl.drop fl.shots run random value 2..4
execute positioned ~-1.5 ~5 ~-0.5 facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes run function zombie:skill/nether/firelord/fire/drop_create
execute positioned ~1.5 ~4 ~0.5 facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes run function zombie:skill/nether/firelord/fire/drop_create
execute if score #fl.drop fl.shots matches 3.. positioned ~ ~6 ~1.5 facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes run function zombie:skill/nether/firelord/fire/drop_create
execute if score #fl.drop fl.shots matches 4 positioned ~1 ~5.5 ~-1.5 facing entity @p[scores={stat.player=1},gamemode=adventure,distance=..40] eyes run function zombie:skill/nether/firelord/fire/drop_create
