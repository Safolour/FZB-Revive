
scoreboard players add @s zombie.nether.guardian.shockwave 1

execute if score @s zombie.nether.guardian.shockwave matches 40 run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/shockwave
execute if score @s zombie.nether.guardian.shockwave matches 65 run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/shockwave
execute if score @s zombie.nether.guardian.shockwave matches 90 run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/shockwave

execute if score @s zombie.nether.guardian.shockwave matches 100 run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/end
