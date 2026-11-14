scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 10 if score @s fl.volley matches 1 as @a[scores={stat.player=1},gamemode=adventure,distance=..60,sort=nearest,limit=1] at @s align y run function zombie:skill/nether/firelord/beam/place
execute if score @s zombie.skill_timer matches 10 if score @s fl.volley matches 2 as @a[scores={stat.player=1},gamemode=adventure,distance=..60,sort=nearest,limit=2] at @s align y run function zombie:skill/nether/firelord/beam/place
execute if score @s zombie.skill_timer matches 10 if score @s fl.volley matches 3 as @a[scores={stat.player=1},gamemode=adventure,distance=..60,sort=nearest,limit=3] at @s align y run function zombie:skill/nether/firelord/beam/place
execute if score @s zombie.skill_timer matches 10.. run kill @s
