scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 20.. if entity @a[scores={stat.player=1},gamemode=adventure,distance=..40] run function zombie:skill/nether/firelord/charge/resume
