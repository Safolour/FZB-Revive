
scoreboard players add @s zombie.nether.guardian.labyrinth 1
execute if score @s zombie.nether.guardian.labyrinth matches 10 positioned ~ ~1 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/spawn

execute if score @s zombie.nether.guardian.labyrinth matches 100.. run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/end
