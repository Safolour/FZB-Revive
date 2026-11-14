scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 1 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring0
execute if score @s zombie.skill_timer matches 2 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring1
execute if score @s zombie.skill_timer matches 3 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring2
execute if score @s zombie.skill_timer matches 4 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring3
execute if score @s zombie.skill_timer matches 5 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring4
execute if score @s zombie.skill_timer matches 6 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring5
execute if score @s zombie.skill_timer matches 7 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring6
execute if score @s zombie.skill_timer matches 8 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring7
execute if score @s zombie.skill_timer matches 9 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring8
execute if score @s zombie.skill_timer matches 10 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring9
execute if score @s zombie.skill_timer matches 11 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring10
execute if score @s zombie.skill_timer matches 12 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring11
execute if score @s zombie.skill_timer matches 13 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring12
execute if score @s zombie.skill_timer matches 14 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring13
execute if score @s zombie.skill_timer matches 15 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring14
execute if score @s zombie.skill_timer matches 16 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring15
execute if score @s zombie.skill_timer matches 17 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring16
execute if score @s zombie.skill_timer matches 18 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring17
execute if score @s zombie.skill_timer matches 19 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring18
execute if score @s zombie.skill_timer matches 20 positioned ~ ~1.74 ~ rotated as @s positioned ^ ^ ^1 run function zombie:skill/nether/firelord/charge/ring19
execute if score @s zombie.skill_timer matches 1 run particle explosion ~ ~1.6 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run execute if score @s zombie.skill_timer matches 1 run particle explosion ~ ~1.6 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if score @s zombie.skill_timer matches 40.. run function zombie:skill/nether/firelord/charge/release
