# Titan keeps moving; the two batches and their delayed strikes survive its death.
scoreboard players operation #titan.light.owner origin.owner = @s origin.owner
execute positioned 348.5 92 150.5 summon marker run function zombie:skill/creation/titan/lightning/controller_init
