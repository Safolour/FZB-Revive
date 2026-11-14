playsound block.ender_chest.open record @a ~ ~ ~ 1.5 1
playsound entity.ender_eye.death record @a ~ ~ ~ 1.5 0

execute unless score round game.state matches 40 run particle falling_obsidian_tear ~ ~1 ~ 1 1 1 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle falling_obsidian_tear ~ ~1 ~ 1 1 1 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle falling_obsidian_tear ~ ~1 ~ 1 1 1 0 5 force @a[scores={particle=1}]

execute if score @s zombie.nether.warped.teleporter.skill_timer matches 41.. run function zombie:skill/nether/warped/teleporter/tp
