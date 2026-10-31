scoreboard players add @s zombie.nether.ashes.ashwizard.missile.skill_timer 1

execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer matches ..50 run function zombie:skill/nether/ashes/ash_wizard/missile/random

execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer matches 100 run function zombie:skill/nether/ashes/ash_wizard/missile/init
execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer matches 110 run function zombie:skill/nether/ashes/ash_wizard/missile/init
execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer matches 120 run function zombie:skill/nether/ashes/ash_wizard/missile/init

execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer matches 200 run scoreboard players set @s zombie.nether.ashes.ashwizard.missile.skill_timer 0
